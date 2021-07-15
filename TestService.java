package idmit.adapter.soapws;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.security.auth.login.LoginException;

import org.codehaus.jettison.json.JSONObject;

import oracle.iam.platform.OIMClient;
import oracle.iam.platform.Platform;
import Thor.API.tcResultSet;
import Thor.API.Exceptions.tcColumnNotFoundException;
import Thor.API.Operations.tcFormDefinitionOperationsIntf;
import Thor.API.Operations.tcFormInstanceOperationsIntf;
import Thor.API.Operations.tcITResourceInstanceOperationsIntf;
import Thor.API.Operations.tcLookupOperationsIntf;
import java.util.Date;
import oracle.iam.platform.entitymgr.vo.SearchCriteria;
import oracle.iam.provisioning.api.ApplicationInstanceService;
import oracle.iam.provisioning.exception.GenericAppInstanceServiceException;
import oracle.iam.provisioning.vo.ApplicationInstance;
import oracle.iam.provisioning.vo.FormField;
import oracle.iam.provisioning.vo.FormInfo;

/**
 *
 * @author nmorla
 */
public class IDMITSOAPWebService {

    private static final String SVR_KEY = "SVR_KEY";
    private static final String UD_FORM_FIELD = "UD_FORM_FIELD_";
    private static final String IT_RESOURCE = "IT_RESOURCE_";
    private static final String ATTR_PREFIX = "ATTR#";
    private static final String MIME_KEY = "Response MIME type";
    private Map<String, String> processFormFieldMap;
    private Map<String, String> itResourceParametersMap;
    private Map<String, String> headersMap;
    private Map<String, String> maskMap;
    private long processInstanceKey;
    private Map<String, String> responseConfig;
    private boolean saveResponse;
    private final String MASK_INPUT = "Lookup.PDIT.RESTWS.mask.input";

    private static String IT_RESOURCE_PARAMETER_NAME = "IT Resources Type Parameter.Name";
    private static String IT_RESOURCE_PARAMETER_VALUE = "IT Resource.Parameter.Value";
    /**
     * This variable holds the CODE KEY column name in LKV table.
     */
    private static final String LKV_CODE = "Lookup Definition.Lookup Code Information.Code Key";
    /**
     * This variable holds the DECODE KEY column name in LKV table.
     */
    private static final String LKV_DECODE = "Lookup Definition.Lookup Code Information.Decode";
    private static final String SDK_NAME = "Structure Utility.Table Name";
    private static final String SDK_KEY = "Structure Utility.Key";

    private boolean testConnection = false;

    public IDMITSOAPWebService() {
        // default constructor
    }

    public IDMITSOAPWebService(long processInstanceKey, String itResourceColumnFieldName, String headerLookup) {
        this.processInstanceKey = processInstanceKey;
        processFormFieldMap = getProcessFormFieldValueMap();
        itResourceParametersMap = readItResourceParameters(itResourceColumnFieldName);
        String strMaskLookup = itResourceParametersMap.get("Mask Input Lookup");
        strMaskLookup = (strMaskLookup == null || strMaskLookup.trim().length() == 0) ? MASK_INPUT : strMaskLookup.trim();
        headersMap = getLookupValuesByLookupName(headerLookup, "headerLookup");
        maskMap = getLookupValuesByLookupName(strMaskLookup, "headerLookup");
    }

    /**
     * This is the method exposed for creating an account, disabling, enabling
     * and deleting the account
     *
     * @param resourcePath
     * @param accountRequestParamLookup (lookup that has the parameters that
     * need to added to the URL)
     * @param constantURLInput (that needs to be added to the url)
     * @param requestMethod (GET, POST, DELETE etc.)
     * @param inputForm (If the input is xml or json, the exact format to be
     * specified)
     * @param accountInputLookup (this lookup has the keys to replace in
     * inputForm with values from processFormFieldMap)
     * @param responseColumnName (the response db column name to be updated in
     * the UD table)
     * @param successTemplate It can be a String constant or a Look up code from
     * where we will get template
     * @param successLookup Where parameters are configured.
     * @param nMaxResponseLength This can be response column size
     * @return Response code.
     */
    public int actionAccount(String resourcePath, String accountRequestParamLookup, String constantURLInput, String requestMethod,
            String inputForm, String accountInputLookup, String responseColumnName, String successTemplate, String successLookup, int nMaxResponseLength) {
        String queryString = null;
        try {
            queryString = generateQueryString(resourcePath, getLookupValuesByLookupName(accountRequestParamLookup, "accountRequestParamLookup"), constantURLInput);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return -1;
        }
        if (inputForm.length() > 0) {
            inputForm = generateInput(inputForm, getLookupValuesByLookupName(accountInputLookup, "accountInputLookup"));
        }
        return callURL(queryString, requestMethod, inputForm, responseColumnName, successTemplate, successLookup, nMaxResponseLength);
    }

    /**
     * ///////////////////////////////////////////////////////////////////
     * Overloaded version of
     * {@link idmit.adapter.soapws.IDMITSOAPWebService#actionAccount(String, String, String, String, String, String, String, String, String, int)}
     * Included to help applications which return a response and to capture the
     * same in respective process form of app in OIM
     *
     * ////////////////////////////////////////////////////////////////////
     */
    public int actionAccountAndSaveResponse(String resourcePath, String accountRequestParamLookup, String constantURLInput, String requestMethod,
            String inputForm, String accountInputLookup, String responseColumnName, String successTemplate, String successLookup, int nMaxResponseLength, String responseConfigLKVName) {
        getResponseConfiguration(responseConfigLKVName);
        return actionAccount(resourcePath, accountRequestParamLookup, constantURLInput, requestMethod,
                inputForm, accountInputLookup, responseColumnName, successTemplate, successLookup, nMaxResponseLength);
    }

    /**
     *
     * @param lkvName
     */
    private void getResponseConfiguration(String lkvName) {
        if (lkvName == null || lkvName.trim().length() == 0) {
            return;
        }
        responseConfig = getLookupValuesByLookupName(lkvName, "responseConfigLookup");
        saveResponse = responseConfig != null && !responseConfig.isEmpty();
    }

    private boolean grepAndSaveResponseInProcessForm(String strCompleteResp) {
        String respColName = null;//responseConfig.get("");
        String responseMIMEType = getResponseFormat();
        String response = null;
        String attrNameToFind = null;

        /*
         * Shall we save the full response content if this is not set?
         * As of now I am returning back and saving none
         */
        if (responseMIMEType == null) {
            return false;
        }
        log("responseMIMEType from LKV is " + responseMIMEType);
        for (String lkvKey : responseConfig.keySet()) {
            if (lkvKey.startsWith(ATTR_PREFIX)) {
                attrNameToFind = lkvKey;
                respColName = responseConfig.get(attrNameToFind);
                if (respColName == null) {
                    return false;
                }
                break;
            }
        }

        attrNameToFind = attrNameToFind.replace(ATTR_PREFIX, "");
        log("Attribute to find is : " + attrNameToFind + ". Response column " + respColName);
        response = getResponse(attrNameToFind, responseMIMEType, strCompleteResp);
        if (response != null) {
            log("Saving in process form..");
            updateFormField(respColName, response);
        } else {
            return false;
        }
        return true;
    }

    /**
     *
     * @param attr
     * @param mimeType
     * @param strCompleteResp
     * @return
     */
    private String getResponse(String attr, String mimeType, String strCompleteResp) {
        if (mimeType.toLowerCase().contains("json")) {
            try {
                JSONObject ob = new JSONObject(strCompleteResp);
                log("Responce grep from content " + ob.getString(attr));
                return ob.getString(attr);
            } catch (Exception exc) {
                log("Exception while getting attribute[" + attr + "] from response");
                exc.printStackTrace();
            }
        }
        log("No response found in content");
        return null;
    }

    /**
     * Read the user provided lookup and get the MIME type configured
     *
     * @return
     */
    private String getResponseFormat() {
        for (String key : responseConfig.keySet()) {
            if (key.equals(MIME_KEY)) {
                return responseConfig.get(key);
            }
        }
        return null;
    }

    /**
     * This is the method exposed for adding privilege to the user account
     *
     * @param childFormPrimaryKey
     * @param childFormName
     * @param resourcePath
     * @param requestParamLookup (lookup that has the parameters that need to
     * added to the URL)
     * @param constantInput (that needs to be added to the url)
     * @param requestMethod (GET, POST, DELETE etc.)
     * @param inputForm (If the input is xml or json, the exact format to be
     * specified)
     * @param privilegeInputLookup
     * @param responseColumn
     * @param successTemplate It can be a String constant or a Look up code from
     * where we will get template
     * @param successLookup Where parameters are configured.
     * @param nMaxResponseLength This can be response column size.
     * @return Response code.
     *
     */
    public int actionPrivilege(long childFormPrimaryKey, String childFormName, String resourcePath, String requestParamLookup,
            String constantInput, String requestMethod, String inputForm, String privilegeInputLookup, String responseColumn,
            String successTemplate, String successLookup, int nMaxResponseLength) {
        putChildFormData(childFormPrimaryKey, childFormName.toUpperCase());
        String queryString = null;
        try {
            queryString = generateQueryString(resourcePath, getLookupValuesByLookupName(requestParamLookup, "requestParamLookup"), constantInput);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return -1;
        }
        if (inputForm.length() > 0) {
            inputForm = generateInput(inputForm, getLookupValuesByLookupName(privilegeInputLookup, "privilegeInputLookup"));
        }
        return callURL(queryString, requestMethod, inputForm, responseColumn, successTemplate, successLookup, nMaxResponseLength);
    }

    /**
     * This is the method exposed for adding privilege to the user account
     *
     * @param resourcePath
     * @param requestParamLookup (lookup that has the parameters that need to
     * added to the URL)
     * @param constantInput (that needs to be added to the url)
     * @param requestMethod (GET, POST, DELETE etc.)
     * @param inputForm (If the input is xml or json, the exact format to be
     * specified)
     * @param privilegeInputLookup
     * @param constantToReplace (constant to replace in the @resourcePath with
     * @param nMaxResponseLength This can be response column size.
     * @privilege)
     * @param privilege (value to replace in the resourcePath)
     * @param responseColumn
     * @param successTemplate It can be a String constant or a Look up code from
     * where we will get template
     * @param successLookup Where parameters are configured.
     * @return Response code.
     *
     */
    public int removePrivilege(String resourcePath, String requestParamLookup, String constantInput, String requestMethod, String inputForm,
            String privilegeInputLookup, String constantToReplace, String privilege, String responseColumn, String successTemplate,
            String successLookup, int nMaxResponseLength) {
        String queryString = null;
        try {
            String keyToReplace = itResourceParametersMap.get(SVR_KEY) + "~";
            if (privilege.startsWith(keyToReplace)) {
                privilege = privilege.substring(keyToReplace.length());
            }
            putPrivilegeInProcessformMap(privilege);
            if (constantToReplace != null && !constantToReplace.isEmpty() && resourcePath.contains(constantToReplace)) {
                resourcePath = resourcePath.replace(constantToReplace, URLEncoder.encode(privilege, "UTF-8"));
            }
            queryString = generateQueryString(resourcePath, getLookupValuesByLookupName(requestParamLookup, "requestParamLookup"), constantInput);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return -1;
        }
        if (inputForm.length() > 0) {
            inputForm = generateInput(inputForm, getLookupValuesByLookupName(privilegeInputLookup, "privilegeInputLookup"));
            if (constantToReplace != null && !constantToReplace.isEmpty() && inputForm.contains(constantToReplace)) {
                inputForm = inputForm.replace(constantToReplace, privilege);
            }
        }
        return callURL(queryString, requestMethod, inputForm, responseColumn, successTemplate, successLookup, nMaxResponseLength);
    }

    /**
     * This method actually invokes the rest web-service
     *
     * @param queryString (web-service URL to invoke)
     * @param requestMethod (GET, POST, DELETE etc.)
     * @param input (this can be either XML or JSON)
     * @param responseColumnName (response code from the web-service to store
     * back in the UD table field column)
     * @return
     */
    private int callURL(String queryString, String requestMethod, String input, String responseColumnName, String successTemplate,
            String successLookup, int nMaxResponseLength) {
        int nResponseCode = 0;
        String responseMsgToUpdate = null;
        BufferedReader objReader = null;
        OutputStreamWriter objWriter = null;
        boolean foundResponse = false;
        String strCompleteResp = null;
        log("Successfull operation returns a response which contains a substring::" + successTemplate);
        System.out.println("Setting System Properties");
        setSystemProperties();
        System.out.println("System Properties were Set");
        // constructs a PROXY object
        String proxyHost = itResourceParametersMap.get("Proxy Host").length() > 0 ? itResourceParametersMap.get("Proxy Host") : null;
        int proxyPort = (itResourceParametersMap.get("Proxy Port").length() > 0) ? Integer.parseInt(itResourceParametersMap.get("Proxy Port")) : 0;
        Proxy proxy = null;
        if (proxyHost != null && proxyPort != 0) {
            proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(proxyHost, proxyPort));
        }

        HttpURLConnection connection = null;
        try {
            String strHTTPS = itResourceParametersMap.get("https");
            strHTTPS = strHTTPS == null ? "" : strHTTPS.trim();
			log("Escaping special characters in path of URL.");
			queryString = escapePath(queryString);
            URL url = null;
            if (strHTTPS.equalsIgnoreCase("true")) {
                url = new URL(null, queryString, new sun.net.www.protocol.https.Handler());
                log("Opening HTTPS connection with https.Handler");
            } else {
                url = new URL(queryString);
                log("Opening HTTP connection");
            }
            if (proxy != null) {
                log("Invoking " + requestMethod + " " + url.toString() + " via proxy " + proxy.toString());
                connection = (HttpURLConnection) url.openConnection(proxy);
            } else {
                connection = (HttpURLConnection) url.openConnection();
                log("Invoking " + requestMethod + " " + url.toString());
            }

            //setSystemProperties();
            
            connection.setRequestMethod(requestMethod);
            connection.setDoOutput(true);
            connection.setDoInput(true);

            if (headersMap != null) {
                // setting header properties
                for (Map.Entry<String, String> entry : headersMap.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    // this block sets the user specific header authentication
                    if (key.startsWith(UD_FORM_FIELD)) {
                        key = key.replace(UD_FORM_FIELD, "");
                        value = processFormFieldMap.get(value);
                    } else if (key.startsWith(IT_RESOURCE)) {
                        key = key.replace(IT_RESOURCE, "");
                        value = itResourceParametersMap.get(value);
                    }
                    connection.setRequestProperty(key, value);
                }
            }

            // this block writes the input to the connection output stream
            if (input != null && input.length() > 0) {
                log(requestMethod + " " + input);
                objWriter = new OutputStreamWriter(connection.getOutputStream());
                objWriter.write(input);
                closeWriter(objWriter);
            }

            objReader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String strRespLine;
            StringBuilder objCompleteResp = new StringBuilder("");
            String responseMessage = connection.getResponseMessage();
            nResponseCode = connection.getResponseCode();
            log("SUCCESS TEMPLATE :: " + successTemplate);
            log("SUCCESS LOOKUP :: " + successLookup);
            String strSuccessResp = getSuccessRes(successTemplate, getLookupValuesByLookupName(successLookup, "successLookup"));
            log("Success Response :: " + strSuccessResp);
            while ((strRespLine = objReader.readLine()) != null) {
                log(strRespLine);
                objCompleteResp.append(strRespLine);
            }
            strCompleteResp = objCompleteResp.toString();
            //            if (!strCompleteResp.contains(strSuccessResp)) {
            //                nResponseCode = 1000;
            //                responseMessage = strCompleteResp;
            //            }
            if (strSuccessResp != null) {
                String[] responseCodes = strSuccessResp.split(",");
                foundResponse = false;
                for (String responseCode : responseCodes) {
                    if (strCompleteResp.contains(responseCode)) {
                        foundResponse = true;
                        break;
                    }
                }
                if (!foundResponse) {
                    nResponseCode = 1000;
                    responseMessage = strCompleteResp;
                }
            }
            responseMsgToUpdate = nResponseCode + ":" + responseMessage;
        } catch (IOException e) {
            nResponseCode = 1000;
            responseMsgToUpdate = nResponseCode + ":" + e.toString();
            e.printStackTrace();
            if (connection != null) {
                try {
                    BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
                    String output;
                    StringBuilder objCompleteResp = new StringBuilder("");
                    while ((output = reader.readLine()) != null) {
                        log(output);
                        objCompleteResp.append(output);
                    }
                    responseMsgToUpdate = nResponseCode + ":" + objCompleteResp.toString();
                    reader.close();
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
        } catch (Exception e) {
            nResponseCode = 1000;
            responseMsgToUpdate = nResponseCode + ":" + e.toString();
            e.printStackTrace();
        } finally {
            try {
                if (objReader != null) {
                    objReader.close();
                }
                closeWriter(objWriter);
            } catch (IOException e) {
                log("IOException while closing reader.");
            }
        }
        log("Response to be updated to UD table: " + responseMsgToUpdate + ", Length: " + responseMsgToUpdate.length());
        if (nMaxResponseLength > 0 && responseMsgToUpdate.length() > nMaxResponseLength) {
            responseMsgToUpdate = responseMsgToUpdate.substring(0, nMaxResponseLength);
        }
        if (foundResponse) {
            boolean isResponseSaved = false;
            System.out.print("Response found. ");

            if (!saveResponse) {
                log("MUST NOT be saved");
            } else {
                log("MUST be saved");
                isResponseSaved = grepAndSaveResponseInProcessForm(strCompleteResp);
                if (!isResponseSaved) {
                    nResponseCode = 1000;
                }
            }
        } else {
            log("Success response NOT found.");
        }
        updateFormField(responseColumnName, responseMsgToUpdate);
        return nResponseCode;
    }

	private String escapePath(String queryString) {
        int quesMarkIndex = queryString.indexOf('?');
        if (quesMarkIndex > 0) {
            String strHostAndPath = queryString.substring(0, quesMarkIndex);
            String queryPart = queryString.substring(quesMarkIndex);
            String escapedHostAndPath = strHostAndPath.replace("+", "%20");
            String strEscapedURL = escapedHostAndPath + queryPart;
            return strEscapedURL;
        } else {
            return queryString.replace("+", "%20");
        }
    }
	
    /**
     * This method reads the UD child table record and puts in the
     * processFormFieldMap
     *
     * @param childFormPrimaryKey
     * @param childFormName
     */
    private void putChildFormData(long childFormPrimaryKey, String childFormName) {

        tcFormInstanceOperationsIntf formInstanceIntf = getService(tcFormInstanceOperationsIntf.class);
        tcFormDefinitionOperationsIntf formDefInstanceIntf = getService(tcFormDefinitionOperationsIntf.class);

        try {

            childFormName = childFormName.toUpperCase();
            Map<String, String> formAttributeMap = new HashMap<String, String>();
            formAttributeMap.put(SDK_NAME, childFormName);

            tcResultSet formDefInstanceResultSet = formDefInstanceIntf.findForms(formAttributeMap);
            if (!formDefInstanceResultSet.isEmpty()) {
                formDefInstanceResultSet.goToRow(0);

                long childSdkKey = formDefInstanceResultSet.getLongValue(SDK_KEY);

                tcResultSet formInstanceResultSet = formInstanceIntf.getProcessFormChildData(childSdkKey, processInstanceKey);
                if (!formInstanceResultSet.isEmpty()) {
                    long tempChildFormPrimaryKey = 0;
                    for (int i = 0; i < formInstanceResultSet.getRowCount(); i++) {
                        formInstanceResultSet.goToRow(i);
                        tempChildFormPrimaryKey = formInstanceResultSet.getLongValue(childFormName + "_KEY");
                        if (tempChildFormPrimaryKey == childFormPrimaryKey) {
                            String[] columnNames = formInstanceResultSet.getColumnNames();
                            for (String columnName : columnNames) {
                                String columnValue = formInstanceResultSet.getStringValue(columnName);
                                if (columnName.equals("REQUEST_KEY")) {
                                    columnName = childFormName + "~" + columnName;
                                }
                                if (columnValue != null && columnValue.length() > 0) {
                                    String keyToReplace = itResourceParametersMap.get(SVR_KEY) + "~";
                                    if (columnValue.startsWith(keyToReplace)) {
                                        columnValue = columnValue.substring(keyToReplace.length());
                                    }
                                    processFormFieldMap.put(columnName, columnValue);
                                }
                            }
                        }
                    }
                } else {
                    log("No FormInstance found with ORC_KEY " + processInstanceKey);
                }
            } else {
                log("No FormDefInstance is found with SDK_NAME " + childFormName);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (formInstanceIntf != null) {
                formInstanceIntf.close();
            }
            if (formDefInstanceIntf != null) {
                formDefInstanceIntf.close();
            }
        }
    }

    /**
     * Convenience method to generate the input to the REST web-service
     *
     * @param inputForm
     * @param map
     * @return
     */
    private String generateInput(String inputForm, Map<String, String> map) {
        if (inputForm.startsWith("Lookup.") && inputForm.contains("~")) {
            String[] tokens = inputForm.split("~");
            inputForm = getLookupValuesByLookupName(tokens[0], "").get(tokens[1]);
        }
        if (map != null) {
            log("[generateInput] Replacing parameters in payload:" + map);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key.startsWith(IT_RESOURCE)) {
                    String itresParamValue = itResourceParametersMap.get(value);
                    if (itresParamValue == null) {
                        log("[generateInput] <warning> <warning> Configuration missing in IT Resource for :" + value);
                    } else {
                        inputForm = inputForm.replace(key, itresParamValue);
                    }
                } else {
                    String udFieldValue = processFormFieldMap.get(value);
                    if (udFieldValue == null) {
                        log("[generateInput] <warning> <warning> UD table value not found for :" + value);
                    } else {
                        String keyToReplace = itResourceParametersMap.get(SVR_KEY) + "~";
                        if (udFieldValue.startsWith(keyToReplace)) {
                            udFieldValue = udFieldValue.substring(keyToReplace.length());
                        }
                        inputForm = inputForm.replace(key, udFieldValue);
                    }
                }
            }
        }
        return inputForm;
    }

    /**
     * Adds mask to sensitive fields which are defined in MASK_INPUT lookup.
     *
     * @param input text which may contains sensitive data.
     * @return masked text
     */
    private String secure(String input) {
        String value = input;
        if (maskMap != null) {
            for (Map.Entry<String, String> entry : maskMap.entrySet()) {
                Pattern regex = Pattern.compile("(" + entry.getKey() + ")(.*?)(" + entry.getValue() + ")");
                Matcher matcher = regex.matcher(input);
                while (matcher.find()) {
                    if (matcher.group(2).length() > 0) {
                        value = value.replace(matcher.group(2), "******");
                    }
                }
            }
        }
        return value;
    }

    /**
     * Convenience method to generate the input to the REST web-service
     *
     * @param sucessTemplate
     * @param map
     * @return
     */
    private String getSuccessRes(String sucessTemplate, Map<String, String> map) {
        if (sucessTemplate.startsWith("Lookup.") && sucessTemplate.contains("~")) {
            String[] tokens = sucessTemplate.split("~");
            sucessTemplate = getLookupValuesByLookupName(tokens[0], "").get(tokens[1]);
        }
        if (map != null) {
            log("[getSuccessRes] Replacing parameters in payload:" + map);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key.startsWith(IT_RESOURCE)) {
                    String itresParamValue = itResourceParametersMap.get(value);
                    if (itresParamValue == null) {
                        log("[getSuccessRes] <warning> <warning> Configuration missing in IT Resource for :" + value);
                    } else {
                        sucessTemplate = sucessTemplate.replace(key, itresParamValue);
                    }
                } else {
                    String udFieldValue = processFormFieldMap.get(value);
                    if (udFieldValue == null) {
                        log("[getSuccessRes] <warning> <warning> UD table value not found for :" + value);
                    } else {
                        sucessTemplate = sucessTemplate.replace(key, udFieldValue);
                    }
                }
            }
        }
        return sucessTemplate;
    }

    /**
     * This method updates the form fieldName with fieldValue
     *
     * @param fieldName
     * @param fieldValue
     */
    @SuppressWarnings({"unchecked", "rawtypes"})
    private void updateFormField(String fieldName, String fieldValue) {
        tcFormInstanceOperationsIntf tcFormInstanceIntf = getService(tcFormInstanceOperationsIntf.class);

        Map paramMap = new HashMap();
        paramMap.put(fieldName, fieldValue);

        try {
            tcFormInstanceIntf.setProcessFormData(processInstanceKey, paramMap);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            tcFormInstanceIntf = null;
        }

    }

    private static OutputStreamWriter closeWriter(OutputStreamWriter objWriter) {
        if (objWriter != null) {
            try {
                objWriter.close();
                return null;
            } catch (IOException ex) {
                ex.printStackTrace(System.err);
                return objWriter;
            }
        } else {
            return null;
        }
    }

    /**
     * This method generates the Rest Web-Service URL to invoke
     *
     * @param resourcePath
     * @param queryParameterMap (request parameters to append to the URL)
     * @param appendStr (constant string to append to the URL)
     * @return
     * @throws UnsupportedEncodingException
     */
    private String generateQueryString(String resourcePath, Map<String, String> queryParameterMap, String appendStr) throws UnsupportedEncodingException {

        StringBuilder queryString = new StringBuilder(itResourceParametersMap.get("Host URL") + resourcePath);
        if (queryParameterMap != null) {
            int size = queryParameterMap.size();
            for (Map.Entry<String, String> entry : queryParameterMap.entrySet()) {
                String key = entry.getKey();
                String entryValue = entry.getValue();
                String value = "";
                if (key.startsWith(UD_FORM_FIELD)) {
                    key = key.replace(UD_FORM_FIELD, "");
                } 
                if (key.startsWith(IT_RESOURCE)) {
                    key = key.replace(IT_RESOURCE, "");
                    value = itResourceParametersMap.get(key);
                } else {
                    value = processFormFieldMap.get(key);
                }
                
                size--;
                if (value != null && value.length() > 0) {
                    value = URLEncoder.encode(value, "UTF-8");
                    if (getTemplates(resourcePath).contains(entryValue)) {
                        int startIndex = queryString.indexOf(entryValue);
                        int endIndex = startIndex + entryValue.length();
                        queryString.replace(startIndex, endIndex, value);
                    } else {
                        queryString.append(entryValue + "=" + value);
                        if (size != 0) {
                            queryString.append("&");
                        }
                    }
                } else {
                    log(entryValue + " not found in processFormFieldMap");
                    log("processFormFieldMap " + processFormFieldMap);
                }
            }
        }
        if (appendStr != null && appendStr.length() != 0) {
            queryString.append(appendStr);
        }

        return removeLastAmpersand(queryString.toString());
    }

    private String removeLastAmpersand(String queryString) {
        int length = queryString.length();
        return (queryString.lastIndexOf("&") == length - 1) ? queryString.substring(0, length - 1) : queryString;
    }

    private List<String> getTemplates(String path) {
        log("************** getTemplate() " + path);
        Matcher m = Pattern.compile("\\{([^}]+)\\}").matcher(path);
        List<String> templates = new ArrayList<String>();
        while (m.find()) {
            templates.add("{" + m.group(1) + "}");
        }
        System.out.println(templates);
        return templates;
    }

    /**
     * This method takes in the process instance key and returns a map (form
     * field Name to value).
     *
     * @return
     */
    private Map<String, String> getProcessFormFieldValueMap() {
        Map<String, String> formFieldValueMap = new HashMap<String, String>();
        tcFormInstanceOperationsIntf formOperationsIntf = getService(tcFormInstanceOperationsIntf.class);
        tcResultSet userForm = null;
        try {
            userForm = formOperationsIntf.getProcessFormData(processInstanceKey);
            userForm.goToRow(0);
            String[] columnNames = userForm.getColumnNames();
            for (String columnName : columnNames) {
                formFieldValueMap.put(columnName, userForm.getStringValue(columnName));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            userForm = null;
            formOperationsIntf = null;
        }

        return formFieldValueMap;
    }

    private <T> T getService(Class<T> serviceClass) {
        if (testConnection) {
            return getTestService(serviceClass);
        } else {
            return getOIMService(serviceClass);
        }
    }

    /**
     * This method retrieves the serviceClass from the platform
     *
     * @param serviceClass
     * @return
     */
    private <T> T getOIMService(Class<T> serviceClass) {
        return Platform.getService(serviceClass);
    }

    /**
     * This method retrieves the serviceClass by traditional authorization
     *
     * @param serviceClass
     * @return
     */
    private static <T> T getTestService(Class<T> serviceClass) {

        String oimInitialContextFactory = "weblogic.jndi.WLInitialContextFactory";

        System.setProperty("APPSERVER_TYPE", "wls");
        System.setProperty("weblogic.security.SSL.ignoreHostnameVerification",
                "true");
        System.setProperty("java.security.auth.login.config",
        		"D:/designconsole/config/authwl.conf");

        Hashtable<String, String> env = new Hashtable<String, String>();
        env.put(OIMClient.JAVA_NAMING_FACTORY_INITIAL, oimInitialContextFactory);
        env.put(OIMClient.JAVA_NAMING_PROVIDER_URL, "t3://uidmx0110.us.oracle.com:14000");
        OIMClient client = new OIMClient(env);
        try {
        	System.out.println("Login to platform");
            //TODO: client.login(user, pwd);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return client.getService(serviceClass);
    }

    /**
     * This method takes in the it resource key and returns a map (it resource
     * name to value)
     *
     * @param itResourceColumnName
     * @return
     */
    private Map<String, String> readItResourceParameters(String itResourceColumnName) {
        Map<String, String> itResourceConnectionParameters = null;
        tcITResourceInstanceOperationsIntf itResInstOpsIntf = getService(tcITResourceInstanceOperationsIntf.class);
        tcResultSet itResourceParametersResultSet = null;
        try {
            long itResourceKey = Long.parseLong(processFormFieldMap.get(itResourceColumnName));
            if (itResourceKey != 0) {
                itResourceParametersResultSet = itResInstOpsIntf.getITResourceInstanceParameters(itResourceKey);
                if (!itResourceParametersResultSet.isEmpty()) {
                    itResourceConnectionParameters = new HashMap<String, String>();
                    itResourceConnectionParameters.put(SVR_KEY, itResourceKey + "");
                    for (int row = 0; row < itResourceParametersResultSet.getRowCount(); row++) {
                        itResourceParametersResultSet.goToRow(row);
                        String key = itResourceParametersResultSet.getStringValue(IT_RESOURCE_PARAMETER_NAME);
                        String value = (itResourceParametersResultSet.getStringValue(IT_RESOURCE_PARAMETER_VALUE)).trim();
                        itResourceConnectionParameters.put(key, value);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            itResourceParametersResultSet = null;
            itResInstOpsIntf = null;
        }

        return itResourceConnectionParameters;
    }

    /**
     * This method returns all the lookup values for the passed in lookup
     *
     * @param lookupName
     * @return
     */
    private Map<String, String> getLookupValuesByLookupName(String lookupName, String debug) {
        tcLookupOperationsIntf lookupIntf = getService(tcLookupOperationsIntf.class);
        Map<String, String> keyValueMap = null;
        try {
            tcResultSet resultSet = lookupIntf.getLookupValues(lookupName);
            if (!resultSet.isEmpty()) {
                keyValueMap = new HashMap<String, String>();
                int rows = resultSet.getRowCount();
                for (int i = rows; i > 0; i--) {
                    resultSet.goToRow(i - 1);
                    try {
                        keyValueMap.put(resultSet.getStringValue(LKV_CODE), resultSet.getStringValue(LKV_DECODE));
                    } catch (tcColumnNotFoundException e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e) {
            //e.printStackTrace();
            log("Lookup for " + debug + " passed is null");
        } finally {
            lookupIntf = null;
        }
        return keyValueMap;
    }

    private void putPrivilegeInProcessformMap(String strPrivilege) {
        try {
            ApplicationInstance objAppInstance = getApplicationInstance(ApplicationInstance.ITRES_KEY, itResourceParametersMap.get(SVR_KEY));
            String strAppInstanceName = objAppInstance.getDisplayName();
            List<FormInfo> objFormsList = objAppInstance.getChildForms();
            if (objFormsList != null && !objFormsList.isEmpty()) {
                log("[putPrivilegeInProcessformMap] Application instance '" + strAppInstanceName + "' has child forms::" + objFormsList.size());
                for (FormInfo objForm : objFormsList) {
                    boolean isPrivColFound = false;
                    List<FormField> objFieldList = objForm.getFormFields();
                    if (objFieldList != null && !objFieldList.isEmpty()) {
                        for (FormField formField : objFieldList) {
                            HashMap<String, Object> properties = formField.getProperties();
                            if (properties != null && !properties.isEmpty()) {
                                String entitlement = (String) properties.get("Entitlement");
                                if (entitlement != null && entitlement.equalsIgnoreCase("true")) {
                                    isPrivColFound = true;
                                    processFormFieldMap.put(formField.getName(), strPrivilege);
                                    log("[putPrivilegeInProcessformMap] Form Name::" + objForm.getName() + ", Entitlement Column::" + formField.getName() + ", Privilege::" + strPrivilege);
                                    break;
                                }
                            }
                        }
                    } else {
                        log("[putPrivilegeInProcessformMap] Form has no fields: " + objForm.getName());
                    }
                    if (!isPrivColFound) {
                        log("[putPrivilegeInProcessformMap] Form doesn't have entitlement column: " + objForm.getName());
                    }
                }
            } else {
                log("[putPrivilegeInProcessformMap] No Child Forms for app-instance:" + strAppInstanceName);
            }
        } catch (Exception e) {
            log("[putPrivilegeInProcessformMap] Exception while putting privilege in process-form data map. Ex:" + e);
        }
    }

    private ApplicationInstance getApplicationInstance(String strKey, String strValue) {
        try {
            ApplicationInstanceService appInstanceService = getService(ApplicationInstanceService.class);
            SearchCriteria criteria = new SearchCriteria(strKey, strValue, SearchCriteria.Operator.EQUAL);
            List<ApplicationInstance> results = appInstanceService.findApplicationInstance(criteria, null);
            if (results.size() > 0) {
                ApplicationInstance appInstance = results.get(0);
                return appInstance;
            }
            log("[getApplicationInstance] Application instance not found with given search criteria::" + criteria.toString());
        } catch (GenericAppInstanceServiceException e) {
            log("[getApplicationInstance] Exception while retrieving app-instance:" + e.getMessage());
        } catch (Exception e) {
            log("[getApplicationInstance] Exception while retrieving app-instance:" + e.getMessage());
        }
        return null;
    }

    private void log(String message) {
        System.out.println("[Code Version 1.5] <" + new Date() + "> [IDMITSOAPWebService] " + secure(message));
    }

    
    private void setSystemProperties() {
        //System.out.println("called setSystemProperties");
        String systemPropertiesLookup = itResourceParametersMap.get("System Properties Lookup");
        System.out.println("[Inside SetSystemProperty] Lookup:"+systemPropertiesLookup);
        systemPropertiesLookup = systemPropertiesLookup == null ? "" : systemPropertiesLookup.trim();
        if (!systemPropertiesLookup.isEmpty()) {
            Map<String, String> systemProperties = getLookupValuesByLookupName(systemPropertiesLookup, "systemPropertiesLookup");
            if (systemProperties != null) {
                for (Map.Entry<String, String> entry : systemProperties.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    System.out.println("[setSystemProperties]"+"Setting System Property:"+key+"::"+value);
                    System.setProperty(key, value);
                }
            }
        }
    }

}
