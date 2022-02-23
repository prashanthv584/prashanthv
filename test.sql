select * from svp order by svp_key desc;

SELECT * FROM CATALOG WHERE ENTITY_key IN (SELECT * FROM REQUEST_BENEFICIARY_ENTITIES WHERE RBE_REQUEST_KEY IN(  19203910 ));

SELECT R.*, C.* FROM CATALOG C, REQUEST_BENEFICIARY_ENTITIES R WHERE C.ENTITY_key=R.RBE_ENTITY_KEY
and R.RBE_REQUEST_KEY in(739981);

SELECT REQUEST_KEY,REQUEST_STATUS,REQUEST_JUSTIFICATION,REQUEST_CREATION_DATE ,REQUEST_END_DATE FROM REQUEST
WHERE REQUEST_KEY IN ( 20943312, 20943345, 20943106, 20943283, 20943346, 20943347, 20943284, 20943285, 20943286, 20943367, 20943348, 20943368, 20943313, 20943314, 20943349, 20943352, 20943356, 20943359, 20943387, 20943362, 20943320, 20943363, 20943371, 20943364, 20943321, 20943365, 20943366, 20943407, 20943388, 20943322, 20943389, 20943408, 20943390, 20943409, 20943391, 20943410, 20943372, 20943411, 20943392, 20943323, 20943373, 20943412, 20943374, 20943413, 20943414, 20943324, 20943393, 20943415, 20943416, 20943325, 20943375, 20943417, 20943394, 20943418, 20943395, 20943419, 20943396, 20943420, 20943397, 20943421, 20943398, 20943422, 20943423, 20943424, 20943399, 20943425, 20943400, 20943426, 20943401, 20943427, 20943428, 20943376, 20943377, 20943326, 20943402, 20943379, 20943380, 20943435, 20943403, 20943436, 20943381, 20943437, 20943404, 20943438, 20943405, 20943439, 20943406, 20943440, 20943441, 20943442, 20943467, 20943382, 20943449, 20943383, 20943443, 20943384, 20943450, 20943385, 20943451, 20943487, 20943452, 20943488, 20943453, 20943454, 20943444, 20943445, 20943468, 20943489, 20943490, 20943455, 20943469, 20943446, 20943491, 20943492, 20943456, 20943493, 20943494, 20943495, 20943457, 20943496, 20943458, 20943459, 20943460, 20943507, 20943461, 20943462, 20943463, 20943508, 20943470, 20943509, 20943511, 20943502, 20943513, 20943506, 20943464, 20943527, 20943465, 20943516, 20943466, 20943517, 20943518, 20943519, 20943547, 20943520, 20943528, 20943521, 20943529, 20943523, 20943471, 20943530, 20943531, 20943524, 20943548, 20943525, 20943472, 20943532, 20943526, 20943567, 20943568, 20943569, 20943549, 20943533, 20943550, 20943551, 20943570, 20943534, 20943535, 20943571, 20943552, 20943536, 20943473, 20943572, 20943573)
and   REQUEST_STATUS  ='Request Failed' order by REQUEST_STATUS;

SELECT REQUEST_KEY,REQUEST_STATUS,REQUEST_JUSTIFICATION,REQUEST_CREATION_DATE ,REQUEST_END_DATE FROM REQUEST
WHERE REQUEST_JUSTIFICATION like ('SR#190621-000207') and REQUEST_STATUS  ='Request Failed'; 

select * from UD_EMDS_U where orc_key in (
select orc_key from UD_EMDS_P where request_key in (SELECT REQUEST_KEY FROM REQUEST
WHERE REQUEST_JUSTIFICATION like ('SR#190621-000207') and REQUEST_STATUS ='Request Failed')
);

select * from REQUEST_BENEFICIARY_ENTITYDATA WHERE RBE_KEY IN (478048   );
select * from REQUEST_BENEFICIARY_ENTITIES WHERE RBE_BENEFICIARY_KEY IN (478048   );


update catalog set UDF_GRANT_EXTENSION_IN_HRS = '2160', UDF_GRANT_NOTIFYINTRVL_IN_HRS = '168', 
UDF_GRANT_NOTIFYCOUNT = '2', UDF_GRANT_FINAL_NOTIFY_IN_HRS = '24', UDF_GRANT_REQUIRED_FIELDS = 'NO_FIELDS' 
where catalog_id =  256465;

select * from APS_OCP_THIRD_PARTY_REQUESTS_n@apsap.us.oracle.com where request_uid in (9923129);
select * from aps_ocp_user_requests_n@apsap.us.oracle.com where request_uid  in (5744173);

select REQUEST_KEY,REQUEST_STATUS,REQUEST_CREATION_DATE ,REQUEST_END_DATE from REQUEST 
where REQUEST_KEY in ( 'HRIT Japan 401K Employee Contribution Tool');

update REQUEST set  REQUEST_STATUS='Request Closed' where  REQUEST_KEY in (18331234,18331231,18330941,18330816);
update REQUEST set  REQUEST_STATUS='Request Closed' where  REQUEST_KEY in (17666959,17666983,17666985);

oci-cxaprod-rsvp	17666960
oci-cxaprod-grid	17666962
oci-cxapreprod-obiee	17666972

select distinct REQUEST_STATUS from REQUEST;


select request_key,request_status,request_creation_date ,request_end_date,request_justification from request where
request_key in (764817,764829 );
SELECT REQUEST_KEY,REQUEST_STATUS,REQUEST_CREATION_DATE FROM REQUEST WHERE request_status !='Request Completed' and REQUEST_KEY IN (3661976, 3661787, 3661977, 3661943, 3661788, 3661789, 3661978, 3661944, 3661790, 3661979, 3661991, 3661980, 3661992, 3661981, 3661993, 3661982, 3661994, 3661922, 3661995, 3661923, 3661996, 3661997, 3661998, 3661945, 3661983, 3661946, 3661985, 3661948, 3661986, 3661926, 3661987, 3661988, 3661989, 3661990, 3662011, 3661999, 3662000, 3662012, 3662001, 3661949, 3662002, 3662013, 3662003, 3661950, 3661927, 3662015, 3662017, 3662031, 3661928, 3662020, 3662032, 3661929, 3661930, 3662021, 3662023, 3662034, 3662051, 3662035, 3662005, 3662036, 3662007, 3662025, 3662052, 3662037, 3662053, 3662054, 3662038, 3662026, 3662055, 3662027, 3662008, 3662009, 3662056, 3662028, 3662057, 3662029, 3662058, 3662030, 3662010, 3662039, 3662059, 3662042, 3662060, 3662092, 3662094, 3662043, 3662072, 3662096, 3662097, 3662045, 3662074, 3662046, 3662075, 3662062, 3662063, 3662101, 3662076, 3662047, 3662102, 3662048, 3662064, 3662077, 3662103, 3662104, 3662078, 3662105, 3662079, 3662066, 3662106, 3662049, 3662107, 3662108, 3662109, 3662110, 3662080, 3662111, 3662050, 3662081, 3662112, 3662067, 3662113, 3662131, 3662082, 3662114, 3662083, 3662084, 3662085, 3662068, 3662086, 3662132, 3662087, 3662133, 3662134, 3662135, 3662136, 3662137, 3662070, 3662151, 3662153, 3662154, 3662088, 3662155, 3662115, 3662156, 3662089, 3662157, 3662090, 3662158, 3662171, 3662159, 3662172, 3662173, 3662116, 3662161, 3662162, 3662140, 3662174, 3662141, 3662175, 3662142, 3662176, 3662165, 3662178, 3662143, 3662120, 3662179, 3662180, 3662166, 3662181, 3662182, 3662183, 3662167, 3662184, 3662146, 3662169, 3662170, 3662121, 3662148, 3662186, 3662191, 3662187, 3662149, 3662188, 3662150, 3662122, 3662192, 3662211, 3662193, 3662189, 3662190, 3662231, 3662194, 3662123, 3662232, 3662233, 3662195, 3662212, 3662196, 3662234, 3662235, 3662124, 3662213, 3662236, 3662214, 3662197, 3662237, 3662215, 3662198, 3662238, 3662199, 3662125, 3662239, 3662216, 3662217, 3662243, 3662202, 3662218, 3662219, 3662127, 3662205, 3662247, 3662206, 3662248, 3662220, 3662128, 3662221, 3662207, 3662249, 3662208, 3662209, 3662210, 3662222, 3662251, 3662223, 3662224, 3662250, 3662129, 3662252, 3662253, 3662254, 3662130, 3662225, 3662271, 3662255, 3662226, 3662272, 3662256, 3662227, 3662273, 3662257, 3662258, 3662259, 3662260, 3662261, 3662291, 3662262, 3662274, 3662263, 3662264, 3662265, 3662266, 3662267, 3662229, 3662275, 3662276, 3662268, 3662278, 3662269, 3662279, 3662230, 3662280, 3662281, 3662270, 3662311, 3662331, 3662332, 3662282, 3662312, 3662313, 3662314, 3662283, 3662315, 3662316, 3662317, 3662333, 3662335, 3662336, 3662320, 3662321, 3662337, 3662322, 3662293, 3662294, 3662324, 3662325, 3662326, 3662285, 3662339, 3662327, 3662340, 3662286, 3662341, 3662288, 3662330, 3662352, 3662343, 3662353, 3662354, 3662295, 3662356, 3662289, 3662290, 3662345, 3662358, 3662372, 3662359, 3662296, 3662346, 3662373, 3662360, 3662374, 3662347, 3662348, 3662361, 3662375, 3662349, 3662376, 3662362, 3662377, 3662363, 3662350, 3662364, 3662379, 3662365, 3662394, 3662366, 3662395, 3662367, 3662368, 3662369, 3662381, 3662370, 3662396, 3662397, 3662411, 3662412, 3662398, 3662399, 3662383, 3662413, 3662384, 3662297, 3662416, 3662417, 3662400, 3662419, 3662385, 3662420, 3662387, 3662421, 3662388, 3662422, 3662389, 3662401, 3662402, 3662423, 3662403, 3662424, 3662404, 3662300, 3662390, 3662425, 3662431, 3662301, 3662432, 3662405, 3662433, 3662303, 3662406, 3662407, 3662436, 3662437, 3662408, 3662426, 3662438, 3662304, 3662409, 3662427, 3662439, 3662305, 3662410, 3662306, 3662451, 3662441, 3662442, 3662443, 3662444, 3662307, 3662447, 3662308, 3662452, 3662448, 3662453, 3662454, 3662449, 3662450, 3662471, 3662429, 3662472, 3662473, 3662474, 3662475, 3662476, 3662477, 3662478, 3662479, 3662480, 3662481, 3662482, 3662455, 3662483, 3662484, 3662485, 3662487, 3662488, 3662309, 3662489, 3662456, 3662490, 3662491, 3662457, 3662310, 3662492, 3662493, 3662494, 3662458, 3662495, 3662511, 3662459, 3662496, 3662497, 3662512, 3662498, 3662513, 3662499, 3662460, 3662500, 3662502, 3662461, 3662504, 3662506, 3662462, 3662508, 3662430, 3662510, 3662531, 3662532, 3662533, 3662534, 3662551, 3662464, 3662465, 3662535, 3662466, 3662536, 3662552, 3662537, 3662467, 3662538, 3662515, 3662539, 3662468, 3662469, 3662470, 3662540, 3662516, 3662542, 3662543, 3662572, 3662574, 3662545, 3662546, 3662576, 3662553, 3662547, 3662518 );

select B.REQUEST_KEY, B.BENEFICIARY_KEY ,U1.USR_LOGIN ,U1.USR_STATUS from REQUEST_BENEFICIARY B , USR U1 where B.REQUEST_KEY in (8643582   ,8783724  )
AND U1.USR_KEY =  B.BENEFICIARY_KEY;

select B.REQUEST_KEY,U1.USR_KEY,U1.USR_EMP_TYPE,U1.USR_EMP_NO, B.BENEFICIARY_KEY ,U1.USR_LOGIN ,U1.USR_STATUS,U1.USR_EMP_TYPE,U2.USR_LOGIN as MANAGER ,U2.USR_STATUS as MANAGER_STATUS from REQUEST_BENEFICIARY B , USR U1, USR U2 
where B.REQUEST_KEY in (426083    )
and u1.usr_key =  b.beneficiary_key and u1.usr_manager_key =u2.usr_key;

SELECT USR_COUNTRY, usr_emp_no,USR_KEY,USR_MIDDLE_NAME,USR_DISPLAY_NAME,USR_EMP_TYPE,USR_LOGIN,USR_EMAIL,USR_STATUS,USR_UDF_RESPONSIBILITY_CODE,USR_EMP_NO,USR_UDF_GLOBALUID,USR_MANAGER_KEY,USR_END_DATE,USR_UDF_ORCLSTATUS ,USR_UDF_MANAGER_FLAG,USR_LDAP_DN,USR_LDAP_GUID,USR_END_DATE,USR_COUNTRY
From Usr Where Usr_key in (Select U.Usr_manager_key From Request_Beneficiary B , Usr U Where B.Request_Key In (4029266)
and U.USR_KEY =  B.BENEFICIARY_KEY);

 -- REQUEST DETAILS
select request.request_key AS "Request_id", usr.usr_login,usr.USR_UDF_GLOBALUID, 
DECODE(REQUEST_MODEL_NAME,'Provision ApplicationInstance', 'Create Account', REQUEST_MODEL_NAME) "Provision_type",
	ai.app_instance_display_name "ACCOUNT NAME", 
  (CASE WHEN c.entity_display_name =  ai.app_instance_display_name THEN 'Login' ELSE c.entity_display_name END) "PRIVILEGE NAME", 
  request_status,
	request_creation_date, 
  request_end_date, 
  request_justification,
  rbe_entity_name , c.entity_name
from request_beneficiary_entities request_beneficiary_entities,
    request request, 
    request_beneficiary request_beneficiary , 
    catalog c,
    usr,
    app_instance ai 
where
usr.usr_key = request_beneficiary_entities.rbe_beneficiary_key 
and request.request_key = request_beneficiary.request_key
and request_beneficiary.beneficiary_key = request_beneficiary_entities.rbe_beneficiary_key
and upper(request.request_isparent) like 'FALSE'
and request_beneficiary_entities.rbe_request_key= to_char(request.request_key)
and (  (REQUEST_MODEL_NAME in ('Provision ApplicationInstance', 'Provision Entitlement','Revoke Entitlement')
        and rbe_entity_key=to_char(c.entity_key)  and rbe_entity_type = c.entity_type)  
     OR  (REQUEST_MODEL_NAME in ('Enable Account','Revoke Account','Disable Account', 'Revoke Entitlement', 'Modify Account') 
     and  rbe_entity_name = c.entity_name) 
    )
and ai.app_instance_key = nvl(c.udf_app_parent_application,(nvl(c.parent_entity_key, c.entity_key)))
and request.request_status not in ('Request Draft Created')
--and request_justification like '%170425-001116%'
--AND ai.app_instance_display_name like 'ORADEV Domain Admin%'
--and usr_login in ('DANIEL.GARIEPY@ORACLE.COM', 'QI.TANG@ORACLE.COM', 'CLAUDIA.GUTMANN@ORACLE.COM', 'BOOPATHI.RAMAMOORTHI@ORACLE.COM', 'AZIZ.MAHDAD@ORACLE.COM', 'RESMI.PILLAI@ORACLE.COM', 'SACHIN.DHARMIK@ORACLE.COM', 'JIE.CHEN@ORACLE.COM', 'ANBIN.KUMAR@ORACLE.COM', 'YOSHIKO.NAKANO@ORACLE.COM', 'RIEKO.SATOMI@ORACLE.COM', 'YUKI.OKADA@ORACLE.COM', 'JING.H.HUANG@ORACLE.COM', 'WENFENG.ZHU@ORACLE.COM')
--and (upper(usr.usr_login) like upper(:p_email_address)
 and request.request_key in (20943106, 20943283, 20943284, 20943285, 20943286, 20943312, 20943313, 20943314, 20943320, 20943321, 20943322, 20943345, 20943346, 20943347, 20943348, 20943349, 20943352, 20943356, 20943359, 20943362, 20943363, 20943364, 20943365, 20943366, 20943367, 20943368, 20943371, 20943372, 20943387, 20943388, 20943389, 20943390, 20943391, 20943400, 20943407, 20943408, 20943409, 20943410, 20943456, 20943473, 20943491, 20943492, 20943493, 20943494, 20943521, 20943528, 20943536, 20943549, 20943569)
order by request_creation_date desc
;


select usr.usr_login, cat.entity_display_name, cat.entity_description, req.request_id, req.request_status, req.request_creation_date, req.request_justification, req.requester_key, rbe.rbe_beneficiary_key,req.request_model_name
from request req, request_beneficiary_entities rbe, usr, catalog cat
where req.request_id= rbe.rbe_request_key and rbe.rbe_beneficiary_key=usr.usr_key
and cat.entity_key||''= rbe.rbe_entity_name
and req.request_model_name in  ('Revoke Entitlement')
and usr.usr_login in ('ALAN.WAXMAN@ORACLE.COM')
--and req.request_status = 'Operation Initiated'
--and cat.entity_display_name like 'CloudEM%'
--and cat.entity_description like 'CloudEM%'
order by request_id desc
;



select usr.usr_login, cat.entity_display_name, cat.entity_description, req.request_id, req.request_status, req.request_creation_date, req.request_justification, req.requester_key, rbe.rbe_beneficiary_key,req.request_model_name
from request req, request_beneficiary_entities rbe, usr, catalog cat
where req.request_id= rbe.rbe_request_key and rbe.rbe_beneficiary_key=usr.usr_key
and cat.entity_key||''= rbe.rbe_entity_name
and req.request_model_name in  ('Revoke Entitlement')
--and usr.usr_login in ('AKHLAQ.QURESHI@ORACLE.COM', 'AKHLAQ.QURESHI@ORACLE.COM', 'CHEN.Z.CHEN@ORACLE.COM', 'CLOUD.XIA@ORACLE.COM', 'DEEPTA.LAKKANIKI@ORACLE.COM', 'KHALED.ELMELEEGY@ORACLE.COM', 'KIRAN.KUMAR.NUTHALAPATI@ORACLE.COM', 'MANORANJAN.PUTTACHENNAPPA@ORACLE.COM', 'MARK.MILLER@ORACLE.COM', 'NAVEEN.SREERAMOJU@ORACLE.COM', 'NEHA.BORKAR@ORACLE.COM', 'PRADYOT.MISHRA@ORACLE.COM', 'RAMAKRISHNA.RAO.GUDLA@ORACLE.COM', 'SANTHANAKRISHNAN.SRINIVASAN@ORACLE.COM', 'SRIKALA.PALEM@ORACLE.COM', 'SRIKALA.PALEM@ORACLE.COM', 'WALTER.L.LEE@ORACLE.COM', 'WALTER.L.LEE@ORACLE.COM')
and req.request_status = 'Operation Initiated'
--and cat.entity_display_name = 'OPC_SAAS_FADEVOPS_EJJX'
--and cat.entity_description = 'OCI Server Account - AMER'
and  req.request_id in (18331234,18330941,18331231,18330816)
;

select * from catalog where entity_display_name ='OPC_SAAS_FADEVOPS_EJJX';
select * from ud_ocis_u where ud_ocis_u_username = 'EDUARDO.R.OLIVEIRA@ORACLE.COM';
select * from ud_ocis_p where orc_key = 17951452 ;
select * from ud_ocis_u order by orc_key desc; 
select * from ent_assign where oiu_key=14927297 ;
select * from oiu where orc_key=17949377;


--Request form data
 select RBE_REQUEST_KEY as "RBE_REQUEST_KEY",
rd.RBED_ENTITY_FIELD_NAME, rd.RBED_ENTITY_FIELD_VALUE
from REQUEST_BENEFICIARY_ENTITYDATA RD,  REQUEST_BENEFICIARY_ENTITIES RB
WHERE RD.RBED_RBE_KEY =RB.RBE_KEY 
and  RBE_REQUEST_KEY = 15104703   ;
--select * from REQUEST_BENEFICIARY_ENTITIES  where RBE_REQUEST_KEY=9720494;
10303841
10303227
10298298
10298116


--enable users in OIM
desc usr;
select --request_justification, count(*)
r.request_key, u.usr_login, u.usr_country, REQUESTER_KEY,u1.usr_login as requestor,u1.USR_UDF_MANAGEMENT_CHAIN requestor_mgmt_chain, u.usr_status, request_model_name, request_justification,
request_status,  request_creation_date, request_end_date, u.usr_emp_type
From request r, usr u, prod_oim.request_entities re, usr u1
where 1=1
and request_model_name = 'Disable User' 
and re.request_key = r.request_key
--and REQUESTER_KEY  in (1,5)
and u.usr_key = re.entity_key
--and request_creation_date > sysdate - 7
and u.usr_login  ='VIKRAM.SHUKLA@ORACLE.COM'
and REQUESTER_KEY = u1.usr_KEY
--and u1.USR_UDF_MANAGEMENT_CHAIN not like '%PRASAD.GADIRAJU%'
--and request_status='Request Awaiting Approval'
;
desc usr;
desc ud_DSEK_usr;

select 8 from usr where

select distinct RBE_OPERATION from REQUEST_BENEFICIARY_ENTITIES;
select * from request where request_key in (2429690, 2429618,2429657);

select * from REQUEST_ENTITY_DATA where ENTITY_FIELD_VALUE like '%STORAGE%';
select * from REQUEST_ENTITIES  ;
select * from apsoim.NAA_CONTRACTOR_LOOKUP_V where EMPLOYEE_ID in ('172954'); 
select * from NAA_CONTRACTOR_LOOKUP_V where PE#='PE144345'; 

SELECT * FROM NAA_CONTRACTOR_LOOKUP_V A WHERE A.EMPLOYEE_ID in ('CWKN1394637') AND A.COUNTRY_CODE = 'IN' and
a.PE_TERMINATION_DATE in (select max(B.PE_TERMINATION_DATE) from NAA_CONTRACTOR_LOOKUP_V B 
WHERE B.EMPLOYEE_ID = A.EMPLOYEE_ID AND B.COUNTRY_CODE = A.COUNTRY_CODE) and UPPER(VPN_ACCESS) = 'Y' and A.PE_TERMINATION_DATE > sysdate;

ApplicationInstance 3829  Store Oracle CX Access
ApplicationInstance
SELECT * FROM CATALOG WHERE ENTITY_KEY IN (SELECT ENTITY_KEY FROM APSOIM.OIM_APPROVAL_MASTER WHERE APPROVAL_MASTER_ID IN
( SELECT APPROVAL_MASTER_ID FROM APSOIM.OIM_APPROVAL_DETAILS WHERE USER_ID IN (130747)));
select APPROVAL_MASTER_ID from APSOIM.OIM_APPROVAL_DETAILS where user_id in (130747);
SELECT * FROM APSOIM.OIM_APPROVAL_MASTER WHERE  approval_master_id in (5134);
ParentForm.OCCN Group#UD_OCCN_U_GROUP=GIT_APAC
SELECT * FROM OIM_APPROVAL_CONDITIONS WHERE CONDITION1 LIKE '%UD%';
select * from oim_approval_conditions where condition2 like '%OCCN%';
DESC APSOIM.OIM_APPROVAL_CONDITIONS;
DESC UD_EAPP_U;
UD_EAPP_U_ROLE
ParentForm.Role#UD_EAPP_U_ROLE=Administrator
ParentForm.Role#UD_APPX_U_ROLE=ADMIN

update APSOIM.oim_approval_conditions set condition1='ParentForm.Role#UD_EAPP_U_ROLE=Administrator' WHERE APPROVAl_details_ID IN (8577);

update APSOIM.OIM_APPROVAL_DETAILS set SUPPORT_NOTES='SR#497386-1049875810' where  APPROVAl_details_ID In (501158);

select * from APSOIM.OIM_APPROVAL_DETAILS where SUPPORT_NOTES in ('SR#497386-942440247') and APPROVER_TYPE='MGR';

update  APSOIM.OIM_APPROVAL_DETAILS  set EXPIRATION_DATE=null  WHERE  APPROVAL_DETAILS_ID IN (501158) ; 
SELECT * FROM UD_HMSP_U WHERE REQUEST_KEY IS NOT NULL;
SELECT * FROM UD_HMSP_p WHERE REQUEST_KEY IS NOT NULL;;

update APSOIM.OIM_APPROVAL_DETAILS set EXPIRATION_DATE=to_date('11-JUL-15','DD-Mon-yyyy'),SUPPORT_NOTES='Auto Approve as There is no L1 and has L2ManualSync' WHERE   APPROVAL_DETAILS_ID IN (113589,113678);

select * from ud_flem_u;;
select *  from APSOIM.oim_approval_master where SUPPORT_NOTES in ('SR#171031-000202','SR#171101-000017');
select usr_key,usr_login from usr where usr_key in (251249);
SELECT * FROM APSOIM.OIM_APPROVAL_MASTER WHERE ENTITY_KEY IN (SELECT ENTITY_KEY FROM CATALOG WHERE ENTITY_DISPLAY_NAME IN ('REF Project Tracking%'));
update APSOIM.OIM_APPROVAL_DETAILS set EXPIRATION_DATE=sysdate where APPROVER_TYPE !='AUTO_APPROVE' and  SUPPORT_NOTES in ('SR#497386-868407764');

update APSOIM.OIM_APPROVAL_DETAILS set EXPIRATION_DATE=sysdate,  SUPPORT_NOTES=SUPPORT_NOTES||'SR#190522-000457',UPDATED_BY='250994',UPDATED_DATE=sysdate
WHERE  APPROVAL_DETAILS_ID IN (17600951) ;

UPDATE APSOIM.OIM_APPROVAL_DETAILS SET SUPPORT_NOTES=SYSDATE, SUPPORT_NOTES='SR#UNIFIER' WHERE  APPROVER_TYPE ='AUTO_APPROVE' AND APPROVAL_MASTER_ID IN (8365,8486) ;
update apsoim.oim_approval_details set support_notes='SR#497386-791341287' where  approval_details_id in (397800) ;
select * from apsoim.oim_approval_details    where  support_notes in  ('SR#171101-000017
');
update APSOIM.OIM_APPROVAL_DETAILS set approver_type= 'AUTO_APPROVE' where APPROVAL_DETAILS_ID in (13614);
UPDATE APSOIM.OIM_APPROVAL_DETAILS SET SUPPORT_NOTES='SR#497386-808734496' WHERE   APPROVAL_MASTER_ID IN  (141290, 141289, 141291)  AND SUPPORT_NOTES IN ('SR#497386-808734496') ;
UPDATE APSOIM.OIM_APPROVAL_DETAILS SET EXPIRATION_DATE=null WHERE APPROVAL_DETAILS_ID IN (9004,9007) ;
select * from  apsoim.oim_approval_master where UPDATED_BY = (504690);

update apsoim.oim_approval_master set CREATED_BY=250994  where CREATED_BY=504690;
update apsoim.oim_approval_master set UPDATED_BY=250994  where UPDATED_BY=504690;

select * from ent_assign where ent_list_key = 3935;

select * from ent_list where ent_list_key =3935;


select usr_key ,usr_login,usr_status from usr where usr_login in ();
SELECT USR_KEY,USR_LOGIN,usr_status FROM USR WHERE USR_KEY IN (26439);
select * from APSOIM.OIM_APPROVAL_DETAILS where USER_ID in (183865);

select entity_key from CATALOG where ENTITY_DESCRIPTION like '%ITAS Provisioning%' and entity_type='Entitlement' and ENTITY_DISPLAY_NAME like '%Group Owner%';

SELECT * FROM APSOIM.OIM_APPROVAL_DETAILS where approval_master_id in (
SELECT APPROVAL_MASTER_ID FROM APSOIM.OIM_APPROVAL_MASTER WHERE ENTITY_TYPE != 'Entitlement' AND ENTITY_KEY IN 
(SELECT ENTITY_KEY FROM CATALOG WHERE ENTITY_DESCRIPTION LIKE '%ITAS Provisioning%' AND ENTITY_TYPE='Entitlement' -- AND ENTITY_DISPLAY_NAME LIKE '%Group Owner%'
)
)-- AND expiration_date is null
and support_notes like '%ITAS Entitlement Approver Master%'

;
update APSOIM.OIM_APPROVAL_DETAILS set EXPIRATION_DATE=sysdate,  SUPPORT_NOTES=SUPPORT_NOTES||'SR#190522-000457',UPDATED_BY='250994',UPDATED_DATE=sysdate
WHERE  APPROVAL_DETAILS_ID IN (16812552,16812554) ;

insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,440095,null,'AUTO_APPROVE',1,null,sysdate,null,'SR#190522-000457',sysdate,250994,sysdate,250994,null);

select * from usr where usr_login in ('KEIKO.KANEKO@ORACLE.COM');
select * from APSOIM.OIM_APPROVAL_DETAILS;
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,201078,null,'EMPLOYEE',2,37346,sysdate,null,'SR#180806-001241',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,201079,null,'EMPLOYEE',2,37346,sysdate,null,'SR#180806-001241',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,391803,null,'EMPLOYEE',2,621752,sysdate,null,'SR#171101-000017',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,391831,null,'EMPLOYEE',2,104283,sysdate,null,'SR#171101-000017',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,391824,null,'EMPLOYEE',2,210183,sysdate,null,'SR#171101-000017',sysdate,250994,sysdate,250994,null);

---------------APP details

select svr_key,ai.app_instance_display_name,ai.app_instance_name, svr_name it_resource, obj_name object_name, pkg_name process_def, sdk_name ud_table, app_instance_key,svd_svr_type It_Resource_type,svr_key
from app_instance ai, pkg, sdk,tos, obj, svr,svd
where itresource_key = svr_key
and svd.svd_key=svr.svd_key
and pkg.obj_key = obj.obj_key
and object_key = pkg.obj_key
and pkg.pkg_key = tos.pkg_key
and tos.sdk_key = sdk.sdk_key
--and sdk_name like '%UCSA%'
and ai.app_instance_display_name like '%GBUCS AD (GBUCS AUTH AD Account)%';
;


select * from UD_NSIT_USR;

select * from apsoim.oim_bg_setup_mapping WHERE EXPIRATION_DATE IS NULL;
update  apsoim.oim_bg_setup_mapping set em_name='EMPOOL1',em_url='https://slcn17vmf0056.c9dev1.oraclecorp.com:7302/em/' where mapping_id=5;

select * from UD_OCIA_USR;
select * from UD_OCIA_GRP;
----- 

select * from user_objects where object_name like '%MMCS%';
select * from sdk where sdk_name like '%MMCS%';

select * from UDX_RRL_RRL;

select usr_key, usr_login from usr where usr_login in ('MEHARAJ.HUSSAIN@ORACLE.COM');
select usr_key, usr_login,usr_status from usr where usr_key in (142266);


-------------------BG ALERT break glass
select * from CATALOG where UPPER(ENTITY_DISPLAY_NAME) like UPPER('%elhe-dev1_gsi_EMERGENCY_ACCESS_FUSION_OAM_ADMIN%');
select 2880-((sysdate-request_end_date)*24*60) from request where request_key in ('20777687');

/*
https://cloudem.oracle.com/em/public/reports/render?action=restore&versionID=latest_copy&reportID=1572F475327F2EFEE053E8A01790ACB4

export JAVA_HOME=/u01/app/oracle/product/jdk1.8.0_131
export ANT_HOME=/u01/app/oracle/product/mwhome/oracle_common/modules/thirdparty/org.apache.ant/1.9.8.0.0/apache-ant-1.9.8
export PATH=$JAVA_HOME/bin:$ANT_HOME/bin:/u01/app/oracle/product/mwhome/OPatch:$PATH
export APP_SERVER=weblogic

./fa_breakglass_oim.sh -emUserName CLOUDINFRA.OCLOUD9_CORPOIM_APPID -idDomain don -serviceName hcm -noLogin true -emcliStateDir /u01/BGEM/EMAMS1 -emcliPath /u01/BGEM/EMAMS1 -startAfter 2788 -startAfterTimeUnit minutes -entitlementName don_hcm_EMERGENCY_ACCESS_FUSION_ORCLADMIN


*/


---------------------------CATALOG TABLE

304905,304904 and parent_entity_key =6389;,
select * from CATALOG where ENTITY_TYPE='Entitlement' and IS_REQUESTABLE=1 and IS_DELETED=0 and  ENTITY_DESCRIPTION like '%Subscribe to Beehive Group%';
select * from CATALOG order by catalog_id desc;
SELECT ENTITY_DESCRIPTION,ENTITY_DISPLAY_NAME FROM CATALOG WHERE PARENT_ENTITY_KEY=2148 AND IS_REQUESTABLE=1 AND IS_DELETED=0;
select * from CATALOG where UPPER(ENTITY_DISPLAY_NAME) like UPPER('%Enterprise Psafe admins%');
SELECT * FROM CATALOG WHERE   (ENTITY_DISPLAY_NAME) IN ('SaaS FA EM ADVSEC FSI Support Elevated','SaaS FA EM ADVSEC Support Elevated')
order by ENTITY_DISPLAY_NAME;
select * from CATALOG where lower(ENTITY_name) like lower('%81b0a142664e4f0bbdcdb6aae96337ab%');

select * from CATALOG where UPPER(ENTITY_DISPLAY_NAME) like UPPER('%OCI%') and entity_type='ApplicationInstance';

update CATALOG set udf_opcbg_identity_domain = 'bks1810 ' where  udf_opcbg_identity_domain like '%bks1810%' and is_deleted=0;

update CATALOG set  udf_opcbg_identity_domain = 'elho' where catalog_id in (731244,731245,731150,731149,731300,731295,731296,731297,731301);

select * from CATALOG where  udf_opcbg_identity_domain like '%elho%' and is_deleted=0;
select * from CATALOG where UPPER(ENTITY_DISPLAY_NAME) like UPPER('Confluence Users') and ENTITY_DESCRIPTION like 'DM Support HUB - Global Deal Management%';
SELECT * FROM CATALOG WHERE   lower(ENTITY_NAME) like lower('%ou=applications%');
 SELECT * FROM CATALOG WHERE PARENT_ENTITY_KEY =1324  and UPPER(ENTITY_DISPLAY_NAME) like UPPER('Oracle Sales Administrator%') and IS_DELETED=0
 --and entity_name like '%HGBU%'
 order by catalog_id desc;
 
  SELECT * FROM CATALOG WHERE ENTITY_KEY =10655  and IS_DELETED=0;
  --update CATALOG set PARENT_ENTITY_KEY=11775   WHERE PARENT_ENTITY_KEY =12575  and IS_DELETED=1 and udf_supportnotes='SR3#190308-000271';
  select * from CATALOG   WHERE PARENT_ENTITY_KEY =18295   and IS_DELETED=0;
 update CATALOG set UDF_SUPPORTNOTES='SR#190405-000319',UDF_APP_PARENT_APPLICATION=17492 WHERE catalog_id in (731239,731240,731237,731238,731236);
 
 SELECT * FROM CATALOG WHERE UPPER(ENTITY_DISPLAY_NAME) like UPPER('%OCI-PAAS-STAGE : Self-service and compliance for OCI PASS Services%') and IS_REQUESTABLE=1 and IS_DELETED=0 ;
select * from CATALOG where upper(ENTITY_DESCRIPTION) like upper('%Global Life Cycle Management%') order by catalog_create ;
select * from CATALOG where PARENT_ENTITY_KEY=13332 and PARENT_ENTITY_type='ApplicationInstance' and IS_REQUESTABLE=1 and IS_DELETED=0;
select * from CATALOG where ENTITY_KEY in ( 13332)  
order by ENTITY_DISPLAY_NAME;
select * from CATALOG where PARENT_ENTITY_KEY=11095 and entity_name like '%13%';
select * from CATALOG where ENTITY_DISPLAY_NAME='CSR All Viewer' and ENTITY_DESCRIPTION='CSR User Account [PreProd]' and IS_REQUESTABLE=1 and IS_DELETED=0 ;
select * from CATALOG where category like 'Fusion CRMAU';
select * from CATALOG where tags like '%oradocs%' ;
select * from CATALOG where UPPER(ENTITY_DISPLAY_NAME) like UPPER('%oci_aoic') and ENTITY_DESCRIPTION like '%OCI Server Account - LAD%' order by RISK_UPDATE_DATE  desc;
select * from CATALOG where (UDF_BEEHV_GRP_SUBSCRIBE_TYPE) in ('closed');
select * from CATALOG where ENTITY_KEY =; ;
SELECT * FROM catalog WHERE UDF_SUPPORTNOTES  IN  ('SR#181128-000792');
select * from CATALOG where PARENT_ENTITY_KEY  in (64);
select * from CATALOG where udf_supportnotes in  ('SR#180806-001241','SR#180725-000883');
select * from CATALOG where UPPER(ENTITY_NAME)  like UPPER('%cloudops_tech_team:USER%') ;
select * from catalog where (entity_name) in ('17887~OCI Stack-OCI Exception Approvers','IDMIT Default OCI Stack','OCIStack');;
select * from catalog where lower(tags) like lower('TPSCM%') ;
select * from CATALOG  WHERE CATALOG_ID in (64 );
select * from CATALOG  where UDF_SUPPORTNOTES like '%190405-000319%';
select * from apsoim.oim_approval_master order by  creation_date desc;

-----Notification rule
update catalog set
UDF_NOTIFICATION_RULE='[{ACTION:"PROVISION",TEMPLATE:"IDMIT Provision Request Complete",SENDTO:"RECEIVERS"},{ACTION:"REVOKE",TEMPLATE:"IDMIT Deprovision Request Complete",SENDTO:"RECEIVERS"}]'
where
entity_name  in ('GITDevOpsChefAutomate1');

update catalog set
UDF_NOTIFICATION_RULE=''
where
entity_name  in ('GITDevOpsChefAutomate1');


update catalog set UDF_NOTIFICATION_RULE=''
where entity_name in ('17887~OCI Stack-OCI Exception Approvers','IDMIT Default OCI Stack','OCIStack');

select distinct UDF_NOTIFICATION_RULE from catalog;

select * from CATALOG  WHERE UDF_APPROVAL_COMPOSITE is not null;

update CATALOG set udf_grant_extension_in_hrs='2160',udf_grant_notifyintrvl_in_hrs=168,
udf_grant_notifycount=2,udf_grant_final_notify_in_hrs=24
where  catalog_id in (679052);

update CATALOG set udf_grant_extension_in_hrs='48',udf_grant_notifyintrvl_in_hrs=48,
udf_grant_notifycount=2,udf_grant_final_notify_in_hrs=24
where  catalog_id in (256465);

select entity_display_name, udf_grant_extension_in_hrs,udf_grant_notifyintrvl_in_hrs,
udf_grant_notifycount,udf_grant_final_notify_in_hrs from catalog where   entity_display_name like 'cloud-bics-root';

update CATALOG set udf_supportnotes=udf_supportnotes||'SR2#190314-000175' where PARENT_ENTITY_KEY=11695 and PARENT_ENTITY_type='ApplicationInstance';

update CATALOG set is_requestable=0,udf_supportnotes=udf_supportnotes||'SR#190307-000394' where catalog_id=739832;

update CATALOG set is_requestable=0 where catalog_id in (740592,740593);

select * from CATALOG  WHERE upper(udf_opcbg_identity_domain) in ('EKQF-DEV2' );
select * from CATALOG  WHERE  udf_opcbg_identity_domain is not null order by 1 desc;
update CATALOG set udf_opcbg_identity_domain ='EKQF-DEV2' where  udf_opcbg_identity_domain in ('EKQF-DEV2#PVUDUTHA' );

update CATALOG set entity_description='Power Broker for OPC servers'
WHERE CATALOG_ID in (679052);

update  CATALOG set udf_opcbg_identity_domain ='bks1901 ' where  entity_name like '%bks1901%' and is_deleted=0;

update  CATALOG set is_requestable=0 where catalog_id=335354;


select * from catalog where catalog_id in (335354);
update catalog set udf_opcbg_service_name='gsi' where catalog_id in (645264, 645265, 645261, 645262, 645263, 645300, 645301, 645302, 645244);

select usr_login,usr_status from usr where usr_key in (674779);
--update CATALOG set ENTITY_DESCRIPTION='Sales Central Content Manager' where CATALOG_ID in (8479,8481,8481);
--update catalog set udf_supportnotes=udf_supportnotes||'SR#180511-001059' where (ENTITY_DISPLAY_NAME) IN ('DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_ACCESS', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_ACCESS_ACCESS-MANAGER', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_DIRECTORY', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_DIRECTORY_DIR-INTEGRATION-PLATFORM', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_DIRECTORY_INTERNET-DIR', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_DIRECTORY_UNIFIED-DIR', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_GOVERNANCE', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_GOVERNANCE_ID-MANAGER', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_INFRASTRUCTURE', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_INFRASTRUCTURE_ID-GOVERNANCE', 'DOCENG_PRODUCT_MIDDLEWARE_ID-MANAGEMENT_INFRASTRUCTURE_SEC-TOOLKIT');
--update catalog set category ='Entitlement' where  entity_description ='IDZ Server Access Account' and  parent_ENTITY_KEY = 7309 ; 
SELECT * FROM SVR WHERE SVR_NAME LIKE '%GIT DevOps – Chef Automate%'; 1107;
select * from svr where svr_key= 17887;
REF Unifier
--update CATALOG set entity_name=105 where entity_ley=199076;
update CATALOG set is_requestable=1 WHERE catalog_id in (335972);
update CATALOG set udf_opcBG_time_in_minutes=1440,udf_opcBG_pre_approved=0,udf_supportnotes=udf_supportnotes||'SR#181004-000515' WHERE catalog_id in (646256, 646254, 646253, 646255, 646259, 646257, 646258, 646252, 646260);
 update CATALOG set udf_supportnotes='SR3#190308-000271'  where catalog_id =305624;
 and IS_REQUESTABLE=1 and IS_DELETED=0 and udf_supportnotes is null ;



select * from CATALOG where CATALOG_ID  in (335972);

update CATALOG set ENTITY_DISPLAY_NAME='DOCENG_PRODUCT_CLOUD_PAAS_APP-DEV_MOBILE-AUTONOMOUS-CLOUD' 
,entity_name='DOCENG_PRODUCT_CLOUD_PAAS_APP-DEV_MOBILE-AUTONOMOUS-CLOUD', udf_supportnotes=udf_supportnotes||'SR#180521-000955' WHERE catalog_id in (539924);

update CATALOG set  udf_supportnotes=udf_supportnotes||'SR#190215-000259' where  CATALOG_ID in (239035);

UPDATE CATALOG SET ENTITY_DISPLAY_NAME = 'TOA Legacy Quickbooks: Read-only',entity_name='TOA Legacy Quickbooks: Read-only'   WHERE catalog_id  IN (323955);

update CATALOG set   IS_REQUESTABLE=0   where catalog_id in (704033);;
17525754 
UPDATE CATALOG SET udf_supportnotes=udf_supportnotes||'SR1#190314-000175' WHERE    catalog_id in (289704);
UPDATE CATALOG SET UDF_APP_PARENT_APPLICATION ='8410' WHERE    catalog_id in (611733);
UPDATE CATALOG SET UDF_APP_PARENT_APPLICATION ='9090' WHERE    catalog_id in (585405);
UPDATE CATALOG SET  user_defined_tags='SFTP Groups OFSS - SCM (FCUBS Shipment)' where catalog_id in (396580);

select * from CATALOG  WHERE CATALOG_ID IN (507590);
UPDATE CATALOG SET IS_REQUESTABLE=1   where PARENT_ENTITY_KEY =14452 and  IS_REQUESTABLE=0 and IS_DELETED=0;
--UPDATE CATALOG SET IS_REQUESTABLE=0   where catalog_id in(320904, 320943, 320984, 320985, 320986, 320987, 320988, 320989, 320990, 320991, 320992, 320993, 320994, 320995, 320996, 320997, 320998, 320999, 321000, 321001, 321002, 321003, 321004, 321005, 321006, 321007, 321008, 321009, 321010, 321011, 321012, 321013, 321014, 321015, 321016, 321017, 321018, 321019, 321020, 321021, 321022, 321023, 321024, 321025, 321026, 321027, 321028, 321029, 321030, 320888, 320889, 320890, 320891, 320892, 320893, 320894, 320895, 320896, 320897, 320898, 320899, 320900, 320901, 320902, 320903, 320944, 320945, 320946, 320947, 320948, 320949, 320950, 320951, 320952, 320953, 320954, 320955, 320956, 320957, 320958, 320959, 320960, 320961, 320962, 320963, 320964, 320965, 320966, 320967, 320968, 320969, 320970, 320971, 320972, 320973, 320974, 320975, 320976, 320933, 320934, 320935, 320936, 320937, 320938, 320939, 320940, 320941, 320942, 320905, 320906, 320907, 320908, 320909, 320910, 320911, 320912, 320913, 320914, 320915, 320916, 320917, 320918, 320919, 320920, 320921, 320922, 320923, 320924, 320925, 320926, 320927, 320928, 320929, 320930, 320931, 320932);

update CATALOG set udf_notification_rule =null where catalog_id=654592; 

--UPDATE CATALOG SET IS_REQUESTABLE=1 ,udf_supportnotes='SR#497386-964761858' WHERE  catalog_id in (254555, 254554, 254579, 254540, 254539, 254538, 254537, 254536, 254578, 254577, 254535, 254534, 254533, 254576, 254575, 254574, 254573, 254532, 254531, 254530, 254529, 254528, 254527, 254526, 254525, 254524, 254572, 254571, 254570, 254553, 254552, 254551, 254550, 254569, 254549, 254548, 254547, 254568, 254546, 254545, 254567, 254544, 254566, 254565, 254564, 254563, 254562, 254543, 254542, 254523);
--UPDATE CATALOG SET IS_DELETED=0 WHERE  ENTITY_DISPLAY_NAME = 'Operations Management Portal';
select * from catalog where lower(entity_name) like '%1386250031000%';
select * from app_instance where app_instance_display_name='Federal EM 12c Stage (fodem2s)';

select * from ent_list where lower(ent_code) like '%cn=orcl_crm_report_dev_abstract,cn=apsgroups,cn=fusioncrmgroups,cn=groups,dc=oracle,dc=com%'; 

select * from apsoim.oim_approval_details where approval_master_id in (20886);
SELECT * FROM APSOIM.OIM_APPROVAL_MASTER WHERE APPROVAL_MASTER_ID IN (148661,147064,146210,183095,132400,143400,143400,132400,183095,184647,137472,139735,133963
);
select * from apsoim.oim_approval_details where CREATED_BY =250994 or UPDATED_BY=250994;

select * from apsoim.oim_approval_conditions where approval_master_id in (select approval_master_id from apsoim.oim_approval_details where user_id in (36591));
select entity_key from apsoim.oim_approval_master where approval_master_id in((select approval_master_id from apsoim.oim_approval_details where user_id in (124119)));
select * from apsoim.ent_approvers_processed where ent_code = 'cn=hckd-dev2_hcm_EMERGENCY_ACCESS_FUSION_OAM_ADMIN,cn=Groups,orclMTTenantGuid=57623322663513015,dc=cloud,dc=oracle,dc=com';
select * from APSOIM.ENT_PROCESSED where ent_code = '200955378';

select entity_display_name,entity_key,entity_name, entity_description from catalog where entity_key in (select entity_key from apsoim.oim_approval_master where approval_master_id in(
select approval_master_id from apsoim.oim_approval_details  where user_id in(select usr_key from usr where usr_login 
like upper('JAE.EVANS@ORACLE.COM')
))) ;

select usr_login from usr where usr_key in (select user_id from apsoim.oim_approval_details where approval_master_id in(select entity_key from catalog where entity_display_name in 
('Confluence Administrator')));


select * from apsoim.ent_approvers_processed where entity_type='ACCOUNT' and approver_type='AUTO_APPROVE';

--- APPROVER LIST EXCEL

When you upload a excel sheet from ADF UI
=> Master record will be inserted in appr_modify_ui_input
=> Excel file will be stored in server location.
=> When **Approval Modification** job is ran, file will be processed, data will be loaded into ent_approvers/ent_approvers_processed.
=> When **Load Enti** job is ran, actual approval setup is done.

select * from appr_modify_ui_input order by appr_modify_ui_input_key desc;
SELECT * FROM APSOIM.ENT_APPROVERS  WHERE SUPPORT_NOTES  in  ('APPRUI#111600') ORDER BY  CREATION_DATE DESC;

-- APPROVER LIST

select det.entitlement_key, det.CONDITION_ID ,cat.entity_type,mas.entity_key,cat.entity_display_name,cat.entity_description
,det.approval_level, usr_login,det.approver_type, det.expiration_date,det.user_id, usr.usr_key, mas.approval_master_id
, det.approval_details_id ,det.support_notes,cat.entity_name
  from catalog cat, apsoim.oim_approval_master mas, apsoim.oim_approval_details det left outer join usr on (det.user_id=usr.usr_key)
  where 1=1
  and cat.entity_key=mas.entity_key
  and cat.entity_type=mas.entity_type
  --and cat.is_deleted=0
  and mas.approval_master_id=det.approval_master_id
  --and det.user_id=usr.usr_key
  and det.expiration_date is  null 
  --and cat.entity_display_name like ('%NSGBU Environment%') 
  and (cat.entity_display_name) like ('Management Metrics Reporting%') 
  --and cat.entity_name like ('%OAL Security Store - GXPDT%') 
  --  and entity_description like '%Oracle Click2Chat Service Cloud Administrator%'
  and cat.is_deleted = 0
--and det.approval_level = 2
--and  cat.ENTITY_KEY =491860
--and  cat.PARENT_ENTITY_KEY =10395
--and det.SUPPORT_NOTES like ('SR#180416-000955')
 --and mas.approval_master_id in (442387)
--and usr_login in ('KEVIN.SUYDAM@ORACLE.COM')
order by det.approval_master_id, approval_level;

We could not find an entity with given entity key, entity type and entity_name {509464,ENTITLEMENT,GBUCS AD - UGBU_Application_Engineers)
select usr_status from usr where usr_login='MOHAMMAD.BABAR.KHAN@ORACLE.COM';


select * from catalog where entity_display_name='EFIP-TEST - OAL Cloud POD STAGE';

insert into apsoim.ENT_APPROVERS (ent_approver_id,app_instance_name,lookup_name,ent_code,approver_type,approval_level,approver_mail,creation_date,support_notes)
values (apsoim.ent_approvers_seq.nextval, 'ContainerRegistryAdmin', 'Lookup.DBUM.Oracle.RIProvider.CRA',data.ent_name, 'ENTITLEMENT', 2,
'Container Registry Manager->container-registry-admin (internal system only)',sysdate, 'SR#180813-000811');


select * from APPR_MODIFY_UI_INPUT order by creation_date desc;
select * from APPR_MODIFY_UI_INPUT order by creation_date desc;

select * from APPR_MODIFY_UI_INPUT where APPR_MODIFY_UI_INPUT_KEY = 116060; 

select * from ENT_APPROVERS_PROCESSED where APPROVAL_MODIFY_UI_INPUT_KEY = 116060;

SELECT * FROM CATALOG WHERE UPPER(ENTITY_DISPLAY_NAME) LIKE UPPER('%hckd-test_hcm_EMERGENCY_ACCESS_SUPPORT%');

UPDATE APSOIM.OIM_APPROVAL_MASTER SET template_name= 'IDMIT Approval Notification - OCI Stack' where APPROVAL_MASTER_ID in (254223)  ;

select * from apsoim.OIM_APPROVAL_MASTER where APPROVAL_MASTER_ID in (457150) ;
select * from apsoim.OIM_APPROVAL_CONDITIONS where APPROVAL_MASTER_ID in (129881) and condition_id in (1379,1378) ;

select * from apsoim.OIM_APPROVAL_MASTER where entity_key in ('16772') and entity_type='Entitlement';

select * from APSOIM.OIM_APPROVAL_DETAILS where APPROVAL_MASTER_ID in (462141) and USER_ID in
(select USR_KEY from USR where USR_LOGIN in UPPER('laura.fazekas@oracle.com')) and expiration_date is null ;
select * from APSOIM.OIM_APPROVAL_DETAILS where SUPPORT_NOTES in ('SR#497386-1011036767') order by APPROVAL_MASTER_ID;
select * from APSOIM.OIM_APPROVAL_DETAILS where APPROVAL_MASTER_ID in (254223) 
 --and condition_id in (363)
 --and condition_id is null
order by APPROVAL_MASTER_ID,condition_id,approval_level ;
select * from APSOIM.OIM_APPROVAL_CONDITIONS where APPROVAL_MASTER_ID in (254223); and 
--condition_id in (114713, 114714, 114715, 114716, 114717, 114718, 114719, 121556, 112824, 112825, 112826, 112827, 112828, 112830, 112831, 112832, 112833, 112834, 112835, 117749);
select * from APSOIM.OIM_APPROVAL_MASTER where ENTITY_KEY in (694752 );
select * from APSOIM.OIM_APPROVAL_MASTER where APPROVAL_MASTER_ID in (454274,454278);

update APSOIM.OIM_APPROVAL_CONDITIONS  set condition1=replace(condition1,'GROUP','ROLE') where APPROVAL_MASTER_ID in (254223);

update APSOIM.OIM_APPROVAL_DETAILS set expiration_date=sysdate where  APPROVAL_details_ID in (22405400,
22446964,
22446963);
select * from APSOIM.OIM_APPROVAL_CONDITIONS where    APPROVAL_MASTER_ID in (454278,454274) ;

Organization.Management Chain=258093;
select * from usr where usr_login='DON.JOHNSON@ORACLE.COM';

update  APSOIM.OIM_APPROVAL_CONDITIONS set condition2='Organization.Management Chain=258093'
 where condition_id in (125514);

select  u.usr_login, u.usr_key,c.condition_id ,c.approval_master_id from usr u, OIM_APPROVAL_CONDITIONS c 
where u.usr_key= replace (c.condition1,'Organization.Management Chain=','')
and  c.APPROVAL_MASTER_ID in (437744);

update OIM_APPROVAL_DETAILS set expiration_date=sysdate ,SUPPORT_NOTES =SUPPORT_NOTES||'SR#190118-002420' where    
 APPROVAL_DETAILS_id in (22624798,22624802,22624801,22624803,22624800);
 
 update OIM_APPROVAL_DETAILS set expiration_date=null where    
 APPROVAL_DETAILS_id in (22624798,22624802,22624801,22624803,22624800);

select * from OIM_APPROVAL_DETAILS where APPROVAL_DETAILS_id in (16800628,16800624,16800626);

'%SR#170509-000945%'
SELECT * FROM APSOIM.OIM_APPROVAL_MASTER WHERE SUPPORT_NOTES like ('%SR#170509-000945%');
select * from APSOIM.OIM_APPROVAL_DETAILS  WHERE SUPPORT_NOTES like ('%SR#170509-000945%');

93689

select * from catalog where entity_display_name ='Support Renewals CP Devloper';


delete  FROM APSOIM.OIM_APPROVAL_MASTER WHERE SUPPORT_NOTES like ('%ITAS Entitlement Approver Master%') and creation_date >= sysdate-2;

update APSOIM.OIM_APPROVAL_DETAILS set SUPPORT_NOTES=SUPPORT_NOTES||'SR#180829-000660', EXPIRATION_DATE=sysdate,UPDATED_BY='250994',UPDATED_DATE=sysdate
where  APPROVAL_DETAILS_ID  in (1413305,1413281) ;

delete from  APSOIM.OIM_APPROVAL_DETAILS WHERE  APPROVAL_DETAILS_ID IN (17656537,17656538) ;

UPDATE APSOIM.OIM_APPROVAL_DETAILS SET SUPPORT_NOTES=SUPPORT_NOTES||'SR#160831-000480', EXPIRATION_DATE=SYSDATE,UPDATED_BY='250994',UPDATED_DATE=SYSDATE
where  APPROVAL_DETAILS_ID in (517352,519299,604582,1066944,1407669);




Insert into ent_approvers
(ENT_APPROVER_ID,APP_INSTANCE_NAME,LOOKUP_NAME,ENT_CODE,APPROVER_TYPE,APPROVAL_LEVEL,APPROVER_MAIL,CREATION_DATE,SUPPORT_NOTES) values
(APSOIM.ENT_APPROVERS_SEQ.NEXTVAL,'CSRBreakGlassQADR','Lookup.OID.Group.BGQA',
'cn=fadrsdihcmser2045623_ser2045623_EMERGENCY_ACCESS_FUSION_ORCLADMIN,cn=Groups,orclMTTenantGuid=13074460188174950,dc=us,dc=oracle,dc=com'
,'MGR','1',null,sysdate,'SR#160719-000047');




insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,302851,null,'EMPLOYEE',3,103201,sysdate,null,'SR#180829-000660',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,302851,null,'EMPLOYEE',3,84282,sysdate,null,'SR#180829-000660',sysdate,250994,sysdate,250994,null);

SELECT * FROM APSOIM.OIM_APPROVAL_DETAILS where approval_master_id in (
SELECT APPROVAL_MASTER_ID FROM APSOIM.OIM_APPROVAL_MASTER WHERE ENTITY_TYPE != 'Entitlement' AND ENTITY_KEY IN 
(SELECT ENTITY_KEY FROM CATALOG WHERE ENTITY_DESCRIPTION LIKE '%ITAS Provisioning%' AND ENTITY_TYPE='Entitlement' -- AND ENTITY_DISPLAY_NAME LIKE '%Group Owner%'
)
) AND EXPIRATION_DATE IS NULL
AND SUPPORT_NOTES LIKE '%ITAS Entitlement Approver Master%';

SELECT CAT.* FROM APSOIM.OIM_APPROVAL_DETAILS AD , APSOIM.OIM_APPROVAL_MASTER AM, CATALOG CAT WHERE AD.USER_ID=130747 AND AM.APPROVAL_MASTER_ID=AD.APPROVAL_MASTER_ID
and am.entity_key=cat.entity_key and ad.expiration_date is not null;

select * from 


select * from catalog where entity_key in (883);
select * from usr where usr_key =173432;
select * from USR where UPPER(USR_LOGIN) like '%PRASAD.GADIRAJU@ORACLE.COM';
desc usr;
update APSOIM.OIM_APPROVAL_DETAILS set EXPIRATION_DATE=sysdate ,UPDATED_DATE=sysdate,UPDATED_BY=250994,SUPPORT_NOTES=SUPPORT_NOTES||'SR#497386-834881565'
where approval_details_id in (363909,363910,363924,363925)  ;

UPDATE APSOIM.OIM_APPROVAL_DETAILS SET EXPIRATION_DATE=SYSDATE ,UPDATED_DATE=SYSDATE,SUPPORT_NOTES=SUPPORT_NOTES||'SR#497386-' 
where approval_details_id in (15092) ;
select * from OIM_APPROVAL_MASTER where entity_key=18532 and ENTITY_TYPE='ApplicationInstance';
desc APSOIM.OIM_APPROVAL_DETAILS;
,
13968
insert into APSOIM.OIM_APPROVAL_MASTER (APPROVAL_MASTER_ID, ENTITY_KEY, ENTITY_TYPE, TEMPLATE_NAME, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES ( OIM_APPROVAL_MASTER_SEQ.NEXTVAL,18413,'ApplicationInstance','IDMIT Approval Notification - OCI Stack','SR#190307-000394',250994,SYSDATE,250994,SYSDATE);
insert into OIM_APPROVAL_MASTER (APPROVAL_MASTER_ID, ENTITY_KEY, ENTITY_TYPE, TEMPLATE_NAME, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES ( OIM_APPROVAL_MASTER_SEQ.NEXTVAL,18532,'ApplicationInstance',null,'SR#190612-000244',250994,SYSDATE,250994,SYSDATE);,
insert into OIM_APPROVAL_MASTER (APPROVAL_MASTER_ID, ENTITY_KEY, ENTITY_TYPE, TEMPLATE_NAME, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES ( OIM_APPROVAL_MASTER_SEQ.NEXTVAL,2979,'Role',null,'SR#OIMADMINTOOL',250994,SYSDATE,250994,SYSDATE);,

insert into OIM_APPROVAL_MASTER (APPROVAL_MASTER_ID, ENTITY_KEY, ENTITY_TYPE, TEMPLATE_NAME, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES ( OIM_APPROVAL_MASTER_SEQ.NEXTVAL,664609,'Entitlement',null,'SR#180810-000114',250994,SYSDATE,250994,SYSDATE);,

insert into OIM_APPROVAL_MASTER (APPROVAL_MASTER_ID, ENTITY_KEY, ENTITY_TYPE, TEMPLATE_NAME, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES ( OIM_APPROVAL_MASTER_SEQ.NEXTVAL,664629,'Entitlement',null,'SR#180810-000114',250994,SYSDATE,250994,SYSDATE);,

insert into OIM_APPROVAL_MASTER (APPROVAL_MASTER_ID, ENTITY_KEY, ENTITY_TYPE, TEMPLATE_NAME, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES ( OIM_APPROVAL_MASTER_SEQ.NEXTVAL,14632,'ApplicationInstance','IDMIT Approval Notification CPTM','SR#180119-000493',250994,SYSDATE,250994,SYSDATE);

select * from APSOIM.OIM_APPROVAL_MASTER where entity_key in (15092);
update OIM_APPROVAL_MASTER set template_name='IDMIT Approval Notification SAML IDCS' where APPROVAL_MASTER_ID in (406686,406316,406687);
insert into apsoim.oim_approval_details values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,201081,null,'MGR',1,null,sysdate,null,'SR#180806-001241',sysdate,250994,sysdate,250994,null);

select * from apsoim.oim_approval_details where APPROVAL_MASTER_ID in (464337);
update  apsoim.oim_approval_details set SUPPORT_NOTES='SR#180416-000955' where APPROVAL_DETAILS_ID in (16650639,16650640);
select * from usr where usr_login in ('MURTHY.DASARI@ORACLE.COM');
	
	
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,280390,null,'EMPLOYEE',2,181401,sysdate,null,'SR#190307-000394',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,280390,null,'EMPLOYEE',2,106781,sysdate,null,'SR#190307-000394',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,280390,null,'EMPLOYEE',2,103647,sysdate,null,'SR#190307-000394',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,280390,null,'EMPLOYEE',2,98836,sysdate,null,'SR#190307-000394',sysdate,250994,sysdate,250994,null);

insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,429825,null,'EMPLOYEE',1,43794,sysdate,null,'SR#180806-001241',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,428766,null,'EMPLOYEE',3,39257,sysdate,null,'CR#IDM-6930',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,428766,null,'EMPLOYEE',4,94568,sysdate,null,'CR#IDM-6930',sysdate,250994,sysdate,250994,null);

insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,268343,373,'AUTO_APPROVE',1,null,sysdate,null,'SR#190207-000030',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,280390,null,'AUTO_APPROVE',1,null,sysdate,null,'SR#190307-000394',sysdate,250994,sysdate,250994,null);

insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,470271,null,'MGR',1,null,sysdate,null,'SR#190612-000244',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,470271,null,'EMPLOYEE',2,15571,sysdate,null,'SR#190612-000244',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,470271,null,'EMPLOYEE',2,147231,sysdate,null,'SR#190612-000244',sysdate,250994,sysdate,250994,null);

insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,469150,null,'EMPLOYEE',2,86887,sysdate,null,'SR#190307-000394',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,469150,null,'EMPLOYEE',2,20744,sysdate,null,'SR#190307-000394',sysdate,250994,sysdate,250994,null);

94934
87631


insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,457151,null,'EMPLOYEE',2,687894,sysdate,null,'SR#190207-000030',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,457151,null,'EMPLOYEE',2,389599,sysdate,null,'SR#190207-000030',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,201065,null,'EMPLOYEE',2,13815,sysdate,null,'SR#180725-000883',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,201066,null,'EMPLOYEE',2,13815,sysdate,null,'SR#180725-000883',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,201067,null,'EMPLOYEE',2,13815,sysdate,null,'SR#180725-000883',sysdate,250994,sysdate,250994,null);

TAKASHI.MIYAMOTO@ORACLE.COM
ATSUKO.YOSHIKAWA@ORACLE.COM
--delete from apsoim.oim_approval_details where support_notes='SR#497386-' and APPROVAL_MASTER_ID in (271946,271949); ;

select USR_KEY ,USR_LOGIN,USR_STATUS from prod_oim.USR where USR_LOGIN in ('NIPUN.KOHLI@ORACLE.COM','ADRIAN.MURARASU@ORACLE.COM');


SELECT USR_KEY ,USR_LOGIN,USR_STATUS FROM USR WHERE USR_KEY IN (291386,
260517,
182677);

select * from ud_OCCT_usr where request_key=9196815;

update  apsoim.oim_approval_details set expiration_date=sysdate where approval_details_id in ('17590049');
select * from apsoim.oim_approval_details where approval_master_id in (437103);
select * from apsoim.oim_approval_conditions where approval_master_id in (128524);
select * from apsoim.oim_approval_master where entity_key in (14592,14593);
select * from apsoim.oim_approval_master where approval_master_id in (128524);


select entity_key from catalog where  entity_description ='Self Service Applications'  and parent_entity_type is null and IS_REQUESTABLE = 1 and catalog_create < '19-JUL-14'

minus

select entity_key from apsoim.oim_approval_master ;

select * from catalog where entity_key=49266;

select condition_id ,approval_master_id from apsoim.oim_approval_conditions 
minus
select condition_id,approval_master_id from apsoim.oim_approval_details; 


select * from catalog where entity_key in (select entity_key from apsoim.oim_approval_master where approval_master_id in (51307, 37397, 60640, 60610, 60583, 60614, 60592, 60569, 60655, 60652, 60601, 60602, 60650, 60590, 60613, 60577, 60588, 60633, 60654, 60647, 60574, 60628, 60616, 60567, 60589, 60659, 60615, 60585, 60617, 60611, 60606, 60627, 60607, 60584, 60660, 60643, 60642, 60624, 60653, 60579, 60570, 60591, 60646, 60572, 60648, 60621, 60608, 60644, 60604, 60595, 60638, 60639, 60568, 60641, 60632, 60631, 60594, 60600, 60612, 60582, 60645, 60700, 60699, 60707, 60710, 60708, 60703, 60709, 60713, 60705, 60712, 60704, 60701, 60702, 60706, 60711, 60830) 
) and IS_REQUESTABLE = 1 and catalog_create < '19-JUL-14';


INSERT INTO OIM_APPROVAL_CONDITIONS(CONDITION_ID, APPROVAL_MASTER_ID, PRIORITY, CONDITION1, CONDITION2, CONDITION3, CONDITION4, CONDITION5, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES (OIM_APPROVAL_CONDITIONS_SEQ.NEXTVAL,8577, 1,'ParentForm.Group#UD_OCIS_U_GROUP=ocistack-oci-members','','','','','','SR#190107-000880',250994,SYSDATE,250994,SYSDATE);

select * from apsoim.OIM_APPROVAL_CONDITIONS where CONDITION1 like '%Group%';

select count(*) ,c.entity_key from ent_list e ,catalog c
where e.ent_list_key = c.entity_key group by c.entity_key having count(*) > 3;

select * from catalog where entity_key =42;


PolicyAutomationDevelopment

CONCATENATE("Insert into ent_new_load (ID,APP_INSTANCE_NAME,LOOKUP_NAME,ENT_CODE,ENT_DISPLAY_NAME,ENT_DESCRIPTION,TYPE,PREFIX_IT_RESOURCE,CREATION_DATE,SUPPORT_NOTES,STATUS,COMMENTS,PROCESSED_DATE,ENTITY_KEY,CATALOG_UDF_ATTRIBUTE) values(ent_new_load_seq.nextval,'AppPrivilegeProvInternalStage','Lookup.OID.Group.ICF.APP','";B1;"','";A1;"','Policy Automation Development','ENTITLEMENT',1,sysdate,'SR#497386-736228644',null,null,null,null,'UDF_APP_PARENT_APPLICATION->3209');")

SELECT * FROM OIM_BLKLD_EX_ORNAP1;
SELECT * FROM OIM_BLKLD_EX_ORNAP2;

select * from OIM_BLKLD_TMP_ORNAP1;



select req.request_key, u.usr_login, C.Entity_Display_Name, C.Entity_Description, request_model_name, request_status,request_creation_date, Req.Req_Depends_On_Reqid, Req.Request_Failure_Reason
from request_beneficiary_entities rbe,request req, usr u, catalog c
where 
c.entity_type= rbe.RBE_ENTITY_TYPE
and c.ENTITY_KEY= rbe.RBE_ENTITY_KEY
and rbe.RBE_BENEFICIARY_KEY = u.usr_key
and rbe.rbe_request_key= req.REQUEST_KEY 
and REQ.REQUEST_ISPARENT='false'
--and request_model_name='Revoke Entitlement' 
--and rbe.rbe_entity_type='Provision Entitlement' 
and c.Entity_Display_Name like '%Global%' 
--and request_justification='User Manager Change'
and U.USR_LOGIN in ('MAHANTAYYA.BETAGERIMATH@ORACLE.COM')
--and Req.Request_Creation_Date > sysdate -10
order by REQ.REQUEST_CREATION_DATE
 ;


Update Orc Orc
SET ORC_TOS_INSTANCE_KEY = (SELECT UD_ORNA_U_NAME UD FROM UD_ORNA_U UD WHERE UD.ORC_KEY=ORC.ORC_KEY)
WHERE ORC_KEY IN (SELECT ORC_KEY FROM UD_ORNA_U where ud_orna_u_route_id ='cobrowse_admin') ;

SELECT *  FROM UD_ORNA_U where ud_orna_u_route_id ='cobrowse_admin';


update  UD_ORNA_U set ud_orna_u_name =upper(ud_orna_u_name), ud_orna_u_oldname=upper(ud_orna_u_oldname) where ud_orna_u_route_id ='cobrowse_admin';

select * from OIM_BLKLD_EX_ORNAG1;

select * from ud_eapp_u;
SELECT * FROM ud_eapp_p;
select * from ud_eapp_r;



select * from ud_orcc_u where ud_orcc_u_email ='bud.bromley@oracle.com';

update ud_capr_u set ud_capr_u_justification='SR#497386-869293797_REVOKED' where request_key =62214;

select * from ud_capr_u where request_key =62214;




UPDATE ORC ORC
SET ORC_TOS_INSTANCE_KEY = (SELECT UD_ORNA_U_NAME UD FROM UD_ORNA_U UD WHERE UD.ORC_KEY=ORC.ORC_KEY AND UD.UD_ORNA_U_ROUTE_ID ='ora_ord_jp_account')
where orc_key in (select orc_key from ud_orna_u where ud_orna_u_route_id='ora_ord_jp_account' ) ;

desc ud_orna_u;



select * from ud_pu_users order by ud_pu_users_create desc;



select * from REQUEST_BENEFICIARY_ENTITIES;


select C.ENTITY_DISPLAY_NAME,U.USR_LOGIN,U.USR_STATUS,D.APPROVAL_LEVEL, D.EXPIRATION_DATE, M.ENTITY_KEY,M.APPROVAL_MASTER_ID,D.APPROVAL_DETAILS_ID, 
C.ENTITY_DESCRIPTION,D.CREATION_DATE,D.UPDATED_DATE,D.SUPPORT_NOTES, C.ENTITY_NAME
from usr u ,apsoim.oim_approval_details d ,apsoim.oim_approval_master m ,catalog c
where D.USER_ID = U.USR_KEY and 
M.APPROVAL_MASTER_ID = D.APPROVAL_MASTER_ID and 
c.entity_key = m.entity_key
and c.is_deleted = 0
AND  m.entity_type = c.entity_type
and M.ENTITY_TYPE='Entitlement' --ApplicationInstance Entitlement Role
--and M.ENTITY_KEY in (3590)

--and M.APPROVAL_MASTER_ID in (155319, 155333, 155339, 155320, 155334, 155325, 155331, 155330, 155321, 155336, 155315, 155342, 155326, 155341, 155338, 155343, 155329, 155335, 155327, 155328, 155332, 155316, 155317, 155318, 155322, 155337, 155323, 155324, 155340)
--AND LOWER( C.ENTITY_NAME) LIKE 'Deal Approval System%'
and C.ENTITY_DISPLAY_NAME like ('%AddThis Legacy MS Dynamics: Read-Only%')
AND C.ENTITY_DESCRIPTION LIKE ('Legacy Applications')
and D.EXPIRATION_DATE is null
--and D.CREATION_DATE >= sysdate-10
--and D.APPROVAL_LEVEL = 2
--and D.APPROVAL_DETAILS_ID IN (400630, 402121, 400628, 400632, 402123)
--and d.user_id  in (select usr_key from usr where usr_login  in ('RACHANA.GUPTA@ORACLE.COM'))
;

Update Orc Orc
SET ORC_TOS_INSTANCE_KEY = (SELECT UD_ORNA_U_NAME UD FROM UD_ORNA_U UD WHERE UD.ORC_KEY=ORC.ORC_KEY)
WHERE ORC_KEY IN (SELECT ORC_KEY FROM UD_ORNA_U) ;

select * from user_views where view_name='PCI_USERS_VW';
select * from PCI_USERS_VW;

select usr_login, c.entity_name, c.entity_display_name
from prod_oim.usr,prod_oim.ent_assign ea,prod_oim.catalog c,prod_oim.ent_list el
where usr.usr_key = ea.usr_key
and c.entity_key = ea.ent_list_key
and ea.ent_list_key = el.ent_list_key
and c.udf_is_ssa_pci_resp = '1'
and c.entity_type = 'Entitlement'
and ea.ent_status = 'Provisioned'
and usr_status='Active'
and el.ent_valid ='1';


select * from catalog where udf_is_ssa_pci_resp =1;

select * from apps.xdp_ready_fas_v order by queued_on;

select * from ud_vsac_u where request_key =3081276;

select * from OIM_BLKLD_EX_ORNAO2 ;
--delete from UD_ORNA_P where UD_ORNA_P_PRIVILEGE ='4703~4' and UD_ORNA_P_SUPPORTNOTES =  'SR#497386-108934534';


select * from UD_OFSA_USR where request_key = 3893656;

desc ud_naxs_usr;

SELECT * FROM stage_oim.UD_NAXS_USR WHERE UPPER(UD_NAXS_USR_EMAIL) IN ('FNAME1TEST1.LNAME1TEST1@ORACLE.COM','EMPFNAME.EMPLNAME@ORACLE.COM') ;
update UD_NAXS_USR set UD_NAXS_USR_NOTF_RELEASE_DATE = null where UPPER(UD_NAXS_USR_EMAIL) IN ('FNAME1TEST1.LNAME1TEST1@ORACLE.COM','EMPFNAME.EMPLNAME@ORACLE.COM') ;
         select * from user_views where view_name='MNA_USER_VIEW';
         
         update usr set USR_UDF_PREV_EMP_EMAIL='EMPFNAME.EMPLNAME@TINGTING.COM' , USR_MANAGER_KEY = 504690 where USR_LOGIN in ('EMPFNAME.EMPLNAME@ORACLE.COM');
     
      /*SELECT
OIU.ORC_KEY ORC_KEY, USR_LOGIN USER_LOGIN, USR_DISPLAY_NAME USER_NAME, USR_UDF_GLOBALUID USER_GUID, (SELECT USR_LOGIN FROM USR U WHERE U.USR_KEY=USR.USR_MANAGER_KEY) USER_MANAGER_LOGIN,  
USR_UDF_PREV_EMP_EMAIL USER_PREV_EMAIL, USR_COUNTRY USER_COUNTARY, APP_INSTANCE_DISPLAY_NAME, OIU_CREATE,  OIU.REQUEST_KEY, 
OST_STATUS,  OIU.OIU_KEY,  OIU.USR_KEY, USR.USR_LAST_NAME, USR.USR_FIRST_NAME, USR.USR_UDF_EMPLOYEE_SUBTYPE EMPLOYEE_SUBTYPE
FROM prod_oim.OIU, prod_oim.USR USR, prod_oim.OST, prod_oim.APP_INSTANCE APP,prod_oim.UD_SSOA_USR SSOA
WHERE 
OIU.OST_KEY = OST.OST_KEY 
AND OIU.USR_KEY = USR.USR_KEY
AND OIU.ORC_KEY = SSOA.ORC_KEY
AND APP.APP_INSTANCE_KEY = OIU.APP_INSTANCE_KEY
AND app.app_instance_name='CorporateSSOAccount' ---- SSO ACCOUNT
AND OST_STATUS  IN ('Provisioned')
AND UD_SSOA_USR_NOTIFICATION_DATE IS NULL
AND USR.USR_UDF_PREV_EMP_EMAIL IS NOT NULL
AND OIU_CREATE > TO_DATE('12-02-2016','DD-MM-YYYY') 
order by oiu_create desc*/
         
--drop view MNA_NAXS_VIEW;
create  view apsoim.MNA_NAXS_VIEW   as
SELECT
OIU.ORC_KEY ORC_KEY, USR_LOGIN USER_LOGIN, USR_DISPLAY_NAME USER_NAME, USR_UDF_GLOBALUID USER_GUID, (SELECT USR_LOGIN FROM USR U WHERE U.USR_KEY=USR.USR_MANAGER_KEY) USER_MANAGER_LOGIN,  
USR_UDF_PREV_EMP_EMAIL USER_PREV_EMAIL, USR_COUNTRY USER_COUNTRY, APP_INSTANCE_DISPLAY_NAME, OIU_CREATE,  OIU.REQUEST_KEY, 
OST_STATUS,  OIU.OIU_KEY,  OIU.USR_KEY, USR.USR_LAST_NAME, USR.USR_FIRST_NAME, USR.USR_UDF_EMPLOYEE_SUBTYPE EMPLOYEE_SUBTYPE,NAXS.UD_NAXS_USR_NOTF_RELEASE_DATE,NAXS.UD_NAXS_USR_USERID as USERID
FROM prod_oim.OIU,prod_oim.USR USR, prod_oim.OST, prod_oim.APP_INSTANCE APP,prod_oim.UD_naxs_USR naxs
WHERE 
OIU.OST_KEY = OST.OST_KEY 
AND OIU.USR_KEY = USR.USR_KEY
AND OIU.ORC_KEY = naxs.ORC_KEY
AND APP.APP_INSTANCE_KEY = OIU.APP_INSTANCE_KEY
AND APP.APP_INSTANCE_NAME= 'NetworkAccessAccount'
AND OST_STATUS  IN ('Provisioned')
AND UD_NAXS_USR_NOTF_RELEASE_DATE IS NULL
and USR.USR_UDF_PREV_EMP_EMAIL is not null
AND OIU_CREATE > TO_DATE('23-04-2016','DD-MM-YYYY') 
order by oiu_create desc;



select * from MNA_NAXS_VIEW;


SELECT ORC_KEY, USER_LOGIN, USER_NAME, USER_GUID, USER_MANAGER_LOGIN, USER_PREV_EMAIL, USER_COUNTRY, USR_FIRST_NAME, USR_LAST_NAME, REQUEST_KEY, EMPLOYEE_SUBTYPE,USERID
FROM APSOIM.MNA_NAXS_VIEW WHERE USER_LOGIN IN ('FNAME1TEST1.LNAME1TEST1@ORACLE.COM','EMPFNAME.EMPLNAME@ORACLE.COM') ;


select --distinct u.usr_login
req.request_key, u.usr_login, C.Entity_Display_Name, request_model_name, request_status,request_creation_date, Req.Req_Depends_On_Reqid, Req.Request_Failure_Reason
from request_beneficiary_entities rbe,request req, usr u, catalog c
where 
c.entity_type= rbe.RBE_ENTITY_TYPE
and c.ENTITY_KEY= rbe.RBE_ENTITY_KEY
and rbe.RBE_BENEFICIARY_KEY = u.usr_key
and rbe.rbe_request_key= req.REQUEST_KEY 
and Req.Request_Isparent='false'
and request_model_name='Provision Entitlement' 
--and rbe.rbe_entity_type='Provision Entitlement' 
--and app_instance_display_name like 'Beehive%' 
--and request_justification='User Manager Change'
--and REQUEST_STATUS = 'Request Awaiting Approval'
and C.ENTITY_DISPLAY_NAME like '%GIT-HOSTING-EMEA-L1%'
and C.ENTITY_DESCRIPTION  like '%ITAS Provisioning%'
--and u.usr_login in ('KETANKUMAR.THAKER@ORACLE.COM')
and Req.Request_Creation_Date > sysdate -2
order by REQ.REQUEST_CREATION_DATE
 ;
 
 
select * from APSOIM.OIM_ACCOUNT_OWNERS;
select * from APSOIM.OIM_ACCOUNT_OWNERS where JUSTIFICATION like '%180307-000078%';

select * from APSOIM.OIM_ACCOUNT_OWNERS where app_instance_display_name like '%Management Metrics Reporting - SaaS%';

insert into APSOIM.OIM_ACCOUNT_OWNERS values('Management Metrics Reporting - SaaS','UDAY.U.SHANKAR@ORACLE.COM','SR#BUSSINESSOWNER',null);



DECLARE
BEGIN
FOR DATA IN (SELECT DISTINCT entity_display_name, rol.CATEGORY server_category FROM prod_oim.catalog c, apsoim.oim_category_server_roles rol, prod_oim.app_instance app WHERE c.entity_display_name IN ('aupohsascn22.us.oracle.com', 'auohsascn02.oracleoutsourcing.com', 'auohsascn09.oracleoutsourcing.com', 'auohsascn50.oracleoutsourcing.com', 'auohsascn40.oracleoutsourcing.com', 'aupodascn02.oracleoutsourcing.com', 'auohsascn46.oracleoutsourcing.com', 'auohsascn34.oracleoutsourcing.com', 'auohsascn41.oracleoutsourcing.com', 'rmohsascn28.oracleoutsourcing.com', 'auohsascn11.oracleoutsourcing.com', 'auohsascn47.oracleoutsourcing.com', 'auohsascn43.oracleoutsourcing.com', 'auohsascn45.oracleoutsourcing.com', 'auohsascn48.oracleoutsourcing.com', 'auohsascn01.oracleoutsourcing.com', 'rmohsascn24.oracleoutsourcing.com', 'aupohsascn21.us.oracle.com', 'rmohsascn25.oracleoutsourcing.com', 'auohsascn49.oracleoutsourcing.com', 'auohsascn130.oracleoutsourcing.com', 'rmohsascn173.oracleoutsourcing.com', 'vmohsascn028.oracleoutsourcing.com', 'vmohsascn029.oracleoutsourcing.com', 'auppodascn28.us.oracle.com', 'vmohsascn103.oracleoutsourcing.com', 'vmohsascn102.oracleoutsourcing.com', 'vmohsascn101.oracleoutsourcing.com', 'vmohsascn100.oracleoutsourcing.com', 'vmohsascn099.oracleoutsourcing.com', 'vmohsascn098.oracleoutsourcing.com', 'vmohsascn097.oracleoutsourcing.com', 'vmohsascn107.oracleoutsourcing.com', 'vmohsascn114.oracleoutsourcing.com', 'vmohsascn112.oracleoutsourcing.com', 'vmohsascn111.oracleoutsourcing.com', 'vmohsascn115.oracleoutsourcing.com', 'vmohsascn116.oracleoutsourcing.com', 'vmohsascn117.oracleoutsourcing.com', 'vmohsascn118.oracleoutsourcing.com', 'vmohsascn506.oracleoutsourcing.com', 'vmohsascn113.oracleoutsourcing.com', 'vmohsascn109.oracleoutsourcing.com', 'vmohsascn105.oracleoutsourcing.com', 'vmohsascn106.oracleoutsourcing.com', 'vmohsascn108.oracleoutsourcing.com', 'vmohsascn110.oracleoutsourcing.com', 'vmohsascn104.oracleoutsourcing.com', 'auohsascn12.oracleoutsourcing.com', 'aupodascn01.oracleoutsourcing.com', 'auohsascn39.oracleoutsourcing.com') AND c.entity_Description = rol.server_description AND app.app_instance_display_name = 'OMCS Server Account' AND app.app_instance_key = c.parent_entity_key)
loop
insert into oim_server_staging  (id, category, action, server_name, creation_Date, support_notes) values (oim_server_staging_seq.nextval, data.server_category, 'DELETE', data.entity_display_name, sysdate, '160907-000314' );
end loop;
end;
/


select distinct entity_display_name, rol.category, c.udf_supportnotes, is_deleted, entity_key from prod_oim.catalog c, apsoim.oim_category_server_roles rol, prod_oim.app_instance app where c.entity_display_name in ('aupohsascn22.us.oracle.com', 'auohsascn02.oracleoutsourcing.com', 'auohsascn09.oracleoutsourcing.com', 'auohsascn50.oracleoutsourcing.com', 'auohsascn40.oracleoutsourcing.com', 'aupodascn02.oracleoutsourcing.com', 'auohsascn46.oracleoutsourcing.com', 'auohsascn34.oracleoutsourcing.com', 'auohsascn41.oracleoutsourcing.com', 'rmohsascn28.oracleoutsourcing.com', 'auohsascn11.oracleoutsourcing.com', 'auohsascn47.oracleoutsourcing.com', 'auohsascn43.oracleoutsourcing.com', 'auohsascn45.oracleoutsourcing.com', 'auohsascn48.oracleoutsourcing.com', 'auohsascn01.oracleoutsourcing.com', 'rmohsascn24.oracleoutsourcing.com', 'aupohsascn21.us.oracle.com', 'rmohsascn25.oracleoutsourcing.com', 'auohsascn49.oracleoutsourcing.com', 'auohsascn130.oracleoutsourcing.com', 'rmohsascn173.oracleoutsourcing.com', 'vmohsascn028.oracleoutsourcing.com', 'vmohsascn029.oracleoutsourcing.com', 'auppodascn28.us.oracle.com', 'vmohsascn103.oracleoutsourcing.com', 'vmohsascn102.oracleoutsourcing.com', 'vmohsascn101.oracleoutsourcing.com', 'vmohsascn100.oracleoutsourcing.com', 'vmohsascn099.oracleoutsourcing.com', 'vmohsascn098.oracleoutsourcing.com', 'vmohsascn097.oracleoutsourcing.com', 'vmohsascn107.oracleoutsourcing.com', 'vmohsascn114.oracleoutsourcing.com', 'vmohsascn112.oracleoutsourcing.com', 'vmohsascn111.oracleoutsourcing.com', 'vmohsascn115.oracleoutsourcing.com', 'vmohsascn116.oracleoutsourcing.com', 'vmohsascn117.oracleoutsourcing.com', 'vmohsascn118.oracleoutsourcing.com', 'vmohsascn506.oracleoutsourcing.com', 'vmohsascn113.oracleoutsourcing.com', 'vmohsascn109.oracleoutsourcing.com', 'vmohsascn105.oracleoutsourcing.com', 'vmohsascn106.oracleoutsourcing.com', 'vmohsascn108.oracleoutsourcing.com', 'vmohsascn110.oracleoutsourcing.com', 'vmohsascn104.oracleoutsourcing.com', 'auohsascn12.oracleoutsourcing.com', 'aupodascn01.oracleoutsourcing.com', 'auohsascn39.oracleoutsourcing.com') and c.entity_Description = rol.server_description and app.app_instance_display_name = 'OMCS Server Account' and app.app_instance_key = c.parent_entity_key;



UPDATE APSOIM.OIM_APPROVAL_DETAILS SET EXPIRATION_DATE=sysdate, updated_by=250994 where
approval_details_id in (17583190);


UPDATE APSOIM.OIM_APPROVAL_DETAILS SET EXPIRATION_DATE=sysdate, updated_by=250994,SUPPORT_NOTES=SUPPORT_NOTES||'SR#170711-000367' where
approval_details_id in
(select det.approval_details_id from catalog cat, apsoim.oim_approval_master mas, apsoim.oim_approval_details det left outer join usr on (det.user_id=usr.usr_key)
  where 1=1
  and cat.entity_key=mas.entity_key
  and cat.entity_type=mas.entity_type
  and mas.approval_master_id=det.approval_master_id
    and det.expiration_date is null 
  and cat.entity_display_name in ('AddThis Legacy MS Dynamics: Read-Only', 'Amberpoint Legacy Quickbooks: Read-Only', 'BigMachines Legacy Intacct: Read Only', 'Bitzer Mobile Legacy Quickbooks: Read-Only', 'ClearTrial Legacy Quickbooks: Read-Only', 'Clearapp Legacy Quickbooks: Read-Only', 'Collective Intellect Legacy Quickbooks: Read-Only', 'Compendium Legacy Quickbooks: Read-Only', 'Corente Legacy Quickbooks: Read-Only', 'Dataraker Legacy Quickbooks: Read-Only', 'Front Porch Legacy File Share: Read-only', 'GreenBytes Legacy Quickbooks: Read-Only', 'Instantis Legacy Quickbooks: Read-Only', 'Involver Legacy Quickbooks: Read-Only', 'KSplice Legacy Quickbooks: Read-Only', 'LiveLook Legacy Intacct:  Read-Only', 'Micros Legacy Acconomy:  Read-only (E-484 MICROS  RETAIL AUSTRIA (now merged with 475))', 'Micros Legacy Business Intelligence: Accounts Payable', 'Micros Legacy Business Intelligence: Accounts Receivable', 'Micros Legacy Business Intelligence: Order Management', 'Micros Legacy Business Intelligence: Project Management/Costing', 'Micros Legacy Business Intelligence: Revenue Management', 'Micros Legacy CSS:  Read-only (E-502 (TAX) MICROS FIDELIO SUISSE)', 'Micros Legacy Change Point:  Read-only (E-072 COMMWARE (DBA MICROS RETAIL))', 'Micros Legacy ChangePoint:  Read-only (E-073 E1 Group)', 'Micros Legacy Commit:  Read-only (E-030 MICROS FIDELIO MEXICO)', 'Micros Legacy Commit:  Read-only (E-031 HTSA ARGENTINA (LA MGT), E-049 MF DE URUGUAY)', 'Micros Legacy Commit:  Read-only (E-040 MF BRAZIL)', 'Micros Legacy Commit:  Read-only (E-044 MF PANAMA)', 'Micros Legacy Commit:  Read-only (E-045 MF CARRIBEAN PUERTO RICO)', 'Micros Legacy Commit:  Read-only (E-047 MF PERU)', 'Micros Legacy Commit:  Read-only (E-048 HTSA COLOMBIA)', 'Micros Legacy Datisa:  Read-only (E-400 MICROS FIDELIO ESPANIA)', 'Micros Legacy Dynamics AX:  Read-only (E-040 MF BRAZIL)', 'Micros Legacy EBP:  Read-only (E-340 MICROS FIDELIO FRANCE)', 'Micros Legacy Gervais OMC:  Read-only (E-340 MICROS FIDELIO FRANCE)', 'Micros Legacy Great Plains:  Read-only (E-074 FRY (DBA MICROS RETAIL))', 'Micros Legacy Hashavit:  Read-only (E-460  MF ISRAEL)', 'Micros Legacy IGEL:  Read-only (E-475 (TAX) MF AUSTRIA GMBH (HS DATENSYSTEME))', 'Micros Legacy IGEL:  Read-only (E-481 MF DATENSYSTEME AUSTRIA)', 'Micros Legacy Infor Sun Systems:  Read-only (E-012 MFWW SURCURSAL ARG (US BRANCH))', 'Micros Legacy Infor Sun Systems:  Read-only (E-030 MICROS FIDELIO MEXICO)', 'Micros Legacy Infor Sun Systems:  Read-only (E-031 HTSA ARGENTINA (LA MGT))', 'Micros Legacy Infor Sun Systems:  Read-only (E-032 MF SERVICIOS MEXICO)', 'Micros Legacy Infor Sun Systems:  Read-only (E-033 ADV RETAIL SYSTEMS MEXICO)', 'Micros Legacy Infor Sun Systems:  Read-only (E-044 MF PANAMA)', 'Micros Legacy Infor Sun Systems:  Read-only (E-045 MF CARRIBEAN PUERTO RICO)', 'Micros Legacy Infor Sun Systems:  Read-only (E-046 MF CHILE SA (Micros Fidelio Chile ))', 'Micros Legacy Infor Sun Systems:  Read-only (E-047 MF PERU)', 'Micros Legacy Infor Sun Systems:  Read-only (E-048 HTSA COLOMBIA (ARG BRANCH))', 'Micros Legacy Infor Sun Systems:  Read-only (E-049 MF URUGUAY)', 'Micros Legacy Infor Sun Systems:  Read-only (E-320 MICROS FIDELIO, E-321 RETAIL ITALY)', 'Micros Legacy Infor Sun Systems:  Read-only (E-885 MICROS FIDELIO JAPAN)', 'Micros Legacy Infor SunSystems:  Read-only (APAC minus Japan)', 'Micros Legacy MGM:  Read-only (E-475 (TAX) MF AUSTRIA GMBH (HS DATENSYSTEME))', 'Micros Legacy Oracle 11.03: Read-Only', 'Micros Legacy Oracle R12: Read-Only', 'Micros Legacy PHC:  Read-only (E-480 MICROS FIDELIO SOFTWARE PORTUGAL)', 'Micros Legacy Peachtree:  Read-only (E-017 FIDELIO CRUISE (US))', 'Micros Legacy Pyramid:  Read-only (E-521 HOTELBK SWEDEN)', 'Micros Legacy Replicon:  Read-only (Micros Fidelio Hungary)', 'Micros Legacy SAP:  Read-only (E-478 (TAX) MF HUNGARY)', 'Micros Legacy SAS:  Read-only (E-072 COMMWARE (DBA MICROS RETAIL))', 'Micros Legacy SAS:  Read-only (E-073 E1 Group)', 'Micros Legacy Sage KHK:  Read-only (E-204 FIDELIO CRUISE)', 'Micros Legacy Sage SAS:  Read-only (E-017 FIDELIO CRUISE (US))', 'Micros Legacy Sage Symfonia:  Read-only (E-476 MF POLSKA)', 'Micros Legacy Sage:  Read-only (E-074 FRY (DBA MICROS RETAIL))', 'Micros Legacy Sage:  Read-only (E-340 MICROS FIDELIO FRANCE)', 'Micros Legacy Servasure:  Read-only (E-494 TOREX RETAIL BV NETHERLANDS)', 'Micros Legacy Softrax:  Read-only (E-072 COMMWARE (DBA MICROS RETAIL))', 'Micros Legacy Softrax:  Read-only (E-073 E1 Group LLC)', 'Micros Legacy Sonet:  Read-only (E-494 TOREX RETAIL BV NETHERLANDS)', 'Micros Legacy Southware:  Read-only (E-300 (TAX) MICROS FIDELIO CANADA LTD)', 'Micros Legacy TM1/Cognos:  Update Access (APAC)', 'Micros Legacy Tessaract: Read-only (E-442 TRAVEL RTL UK (FKA HALE ))', 'Micros Legacy iScala:  Read-only (E-208 MICROS RETAIL DEUTSCHLAND)', 'Micros Legacy iScala:  Read-only (E-492 TOREX RETAIL NV BELGIUM)', 'Micros Legacy iScala:  Read-only (E-493 TOREX RETAIL SOLUTIONS NETHERLANDS)', 'Micros Legacy iScala:  Read-only (E-494 TOREX RETAIL BV NETHERLANDS)', 'Micros Legacy iScala:  Read-only (E-497 TOREX RETAIL AS DENMARK)', 'Micros Legacy iScala:  Read-only (E-499 TOREX RETAIL OY FINLAND)', 'Micros Legacy iScala:  Read-only (E-500 (TAX) MICROS FIDELIO FINLAND)', 'Micros Legacy iScala:  Read-only (E-522 TOREX RETAIL SWEDEN)', 'Micros Legacy iScala:  Read-only (E-541 TOREX RETAIL AS NORWAY)', 'NetSuite Legacy Systems Finance: Administrator', 'NetSuite Legacy Systems Finance: Read-Only', 'NetSuite Legacy Systems Finance: Update', 'NetSuite Legacy Systems HR: Administrator', 'NetSuite Legacy Systems HR: Read-Only', 'NetSuite Legacy Systems HR: Update', 'NetSuite Legacy Systems IT: Administrator', 'NetSuite Legacy Systems IT: Read-Only', 'NetSuite Legacy Systems IT: Update', 'NetSuite Legacy Systems Legal-IA-Compliance: Administrator', 'NetSuite Legacy Systems Legal-IA-Compliance: Read-Only', 'NetSuite Legacy Systems Legal-IA-Compliance: Update', 'NetSuite Legacy Systems Marketing: Administrator', 'NetSuite Legacy Systems Marketing: Read-Only', 'NetSuite Legacy Systems Marketing: Update', 'NetSuite Legacy Systems Operations: Administrator', 'NetSuite Legacy Systems Operations: Read-Only', 'NetSuite Legacy Systems Operations: Update', 'NetSuite Legacy Systems Other: Administrator', 'NetSuite Legacy Systems Other: Read-Only', 'NetSuite Legacy Systems Other: Update', 'NetSuite Legacy Systems Product: Administrator', 'NetSuite Legacy Systems Product: Read-Only', 'NetSuite Legacy Systems Product: Update', 'NetSuite Legacy Systems Professional Services: Administrator', 'NetSuite Legacy Systems Professional Services: Read-Only', 'NetSuite Legacy Systems Professional Services: Update', 'NetSuite Legacy Systems Sales: Administrator', 'NetSuite Legacy Systems Sales: Read-Only', 'NetSuite Legacy Systems Sales: Update', 'NetSuite Legacy Systems Support: Administrator', 'NetSuite Legacy Systems Support: Read-Only', 'NetSuite Legacy Systems Support: Update', 'Nimbula Legacy Intacct: Read-Only', 'Nimbula Legacy Quickbooks: Read-Only', 'Passlogix Legacy Intacct: Read-Only', 'Passlogix Legacy Quickbooks: Read-Only', 'Responsys Legacy BCC-All Read Only', 'Responsys Legacy BCC-Finance Read Only', 'Responsys Legacy Intacct-All Read-only', 'Responsys Legacy Intacct-Finance Read-Only', 'SelectMinds Legacy Quickbooks: Read-Only', 'TOA Legacy Intacct-ReadOnly', 'TOA Legacy Quickbooks: Read-only', 'Taleo Legacy Quickbooks: Read-Only', 'Tekelec Legacy Oracle R12: Read-only AP', 'Tekelec Legacy Oracle R12: Read-only AR', 'Tekelec Legacy Oracle R12: Read-only All', 'Tekelec Legacy Oracle R12: Read-only GL', 'Tekelec Legacy Oracle R12: Read-only LOGICSTICS', 'Tekelec Legacy Oracle R12: Read-only RENEWALS', 'Vitrue Legacy Quickbooks: Read-Only', 'mValent Legacy Quickbooks: Read-Only') 
and entity_description like 'Legacy Applications'
and  cat.PARENT_ENTITY_KEY =6689
);


UPDATE CATALOG SET IS_REQUESTABLE=1 where PARENT_ENTITY_KEY =6689 and  IS_REQUESTABLE=0 and IS_DELETED=0 
and udf_supportnotes like '%SR#170711-000367%';

---OIM JOB HISTORY

select * from PROD_OIM.job_history where job_start_time > sysdate - 1/48 
 and status = 6 
 order by job_start_time desc;
 
 select ent_new_load_seq.nextval from dual;
 select APSOIM.ENT_APPROVERS_SEQ.NEXTVAL from dual;
 
 select * from OIM_BLKLD_EX_CMNUS1;
 select * from OIM_BLKLD_TMP_CMNUS1;

select * from ud_csmn_usr;

select * from UD_HIAM_USR;

select * from UD_HIAM_USR where UD_HIAM_USR_email in ('prashanth.vuduthala@oracle.com','mahendra.varman@oracle.com', 'manoj.kottam@oracle.com', 'samip.shah@oracle.com');



select cert_certs.cert_name, cert_task_info.task_start_date,cert_task_info.task_start_date+14 , certs_user.username REVIEWER, usr.usr_title
from cert_certs,  cert_task_info, certs_user, usr
where cert_certs.id = cert_task_info.cert_id
and cert_task_info.reviewer_id = certs_user.iam_user_id
and certs_user.username = usr.usr_login
and cert_task_info.task_end_date is null
and cert_task_info.task_start_date+14 < SYSDATE;

select usr_login,USR_EMP_NO,usr_country,USR_UDF_BUSINESS_GRP from usr where usr_key in (
select  usr_key  from PDIT_USER_NAME_CHANGE_HISTORY where
upper(usr_country) <> upper(old_usr_country)
and upper(usr_emp_no) =upper(old_usr_emp_no)
and support_notes not like 'APS Audit UID%'-- and creation_date > sysdate-30
) and usr_status='Active';

select  distinct certs_user.username REVIEWER,cert_task_info.task_start_date, to_char(cert_task_info.task_start_date+14, 'DD-Mon-YY') as start_notifictaion_date , 
to_char(cert_task_info.task_start_date+14+20, 'DD-Mon-YY') as end_notifictaion_date , certs_user.firstname as first_name,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager, 
to_char(sysdate, 'DD-Mon-YY') as current_date from stage_oim.cert_certs,  stage_oim.cert_task_info, stage_oim.certs_user, stage_oim.usr usr, stage_oim.usr u2 where cert_certs.id = cert_task_info.cert_id 
and cert_task_info.reviewer_id = certs_user.iam_user_id and certs_user.username = usr.usr_login and usr.usr_manager_key = u2.usr_key and cert_task_info.task_end_date is null 
and cert_task_info.task_start_date+14 < SYSDATE and certs_user.username
not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers')  ;

select  distinct certs_user.username REVIEWER,cert_task_info.task_start_date,/* to_char(cert_task_info.task_start_date+14, 'DD-Mon-YY')*/ to_date( '26-Oct-17','DD-Mon-YY') as start_notifictaion_date ,
(to_date( '26-Oct-17','DD-Mon-YY')+21) as end_notifictaion_date , certs_user.firstname as first_name,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager,  
to_char(sysdate, 'DD-Mon-YY') as current_date from cert_certs,  cert_task_info, certs_user, usr usr, usr u2
where cert_certs.id = cert_task_info.cert_id and cert_task_info.reviewer_id = certs_user.iam_user_id and certs_user.username = usr.usr_login and usr.usr_manager_key = u2.usr_key 
and cert_task_info.task_end_date is null and cert_task_info.task_start_date+14 < SYSDATE and certs_user.username not in 
(select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers');


select  distinct certs_user.username REVIEWER,cert_task_info.task_start_date, /*to_char(cert_task_info.task_start_date+14, 'DD-Mon-YY')*/ to_char(to_date( '26-Oct-17','DD-Mon-YY')) as start_notifictaion_date  
, /*to_char(cert_task_info.task_start_date+14+21, 'DD-Mon-YY')*/ to_char((to_date( '26-Oct-17','DD-Mon-YY')+21)) as end_notifictaion_date , certs_user.firstname as first_name,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager,  to_char(sysdate, 'DD-Mon-YY') as current_date 
from stage_oim.cert_certs,  stage_oim.cert_task_info, stage_oim.certs_user, stage_oim.usr usr, stage_oim.usr u2 where cert_certs.id = cert_task_info.cert_id and cert_task_info.reviewer_id = certs_user.iam_user_id and certs_user.username = usr.usr_login and usr.usr_manager_key = u2.usr_key and cert_task_info.task_end_date is null and cert_task_info.task_start_date+14 < SYSDATE
and certs_user.username not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers'); 

select  distinct certs_user.username REVIEWER,cert_task_info.task_start_date,  to_char(to_date( '26-Oct-17','DD-Mon-YY')) as start_notifictaion_date  
,  to_char((to_date( '26-Oct-17','DD-Mon-YY')+21)) as end_notifictaion_date , certs_user.firstname as first_name,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager,
to_char(sysdate, 'DD-Mon-YY') as current_date from cert_certs,  cert_task_info, certs_user, usr usr, usr u2 where cert_certs.id = cert_task_info.cert_id and cert_task_info.reviewer_id = certs_user.iam_user_id 
and certs_user.username = usr.usr_login and usr.usr_manager_key = u2.usr_key and cert_task_info.task_end_date is null and cert_task_info.task_start_date+14 < SYSDATE and certs_user.username 
not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers')
and u2.usr_login not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers')
; 


select * from OIM_USR_DEFAULT_ENTITY where support_notes='SR#180125-000291';
update  OIM_USR_DEFAULT_ENTITY set expiration_date=sysdate  where support_notes='SR#180125-000291';
desc OIM_USR_DEFAULT_ENTITY;


seleCT * from OIM_BLKLD_TMP_SAMLS1;
seleCT * from OIM_BLKLD_EX_SAMLS1;


select * from OIM_BLKLD_TMP_IDSLU1;
-----------ITAS  GIT

 select lower(hostname||'.'||domain) as server_name, resource_name,  t.mapping_internal_name
FROM   Itas_Data.APS_APPROVER_GROUP_V@Itasuser_Aps.Us.Oracle.Com T, USR U, Itas_Data.APS_SERVERS_V@Itasuser_Aps.Us.Oracle.Com dat
    WHERE  T.OBJECT_UID= dat.object_uid
    and lower(hostname) like 'aaruvmtp13%'
    AND    U.USR_LOGIN=T.RESOURCE_NAME
    AND    T.EXPIRATION_DATE IS NULL
    AND    U.USR_STATUS='Active'
    and    t.mapping_internal_name='BUSINESS_APPROVER_GROUP_L1'
    and (status = 'Configure' OR status = 'Configured' OR status = 'Deployed')
    AND  UPPER(PUSH_TO_APS)='YES'
    AND DOMAIN IS NOT NULL
    AND HOSTNAME IS NOT NULL
    AND MANAGED_TYPE='Server'
    AND SUPPORT_GROUP NOT IN ('INTERNAL-OPS','CLOUD-INFRA-OPS')
    AND (UPPER(BUSINESS_AREA) NOT IN ('OPC - U.S. GOV','FEDERAL','OPC . PAAS','OPC - SAAS','SAAS') or BUSINESS_AREA IS NULL)
    AND ESCALATION_GROUP NOT IN ('C9 DEVOPS CHANGEEX','PDIT DEMO SERVICES','DSS-NON-PROD-INFRA-APP-ESC','DSS-PROD-INFRA-APP-ESC','C9 UBS CHANGEEX','OMS DELIVERY SERVICES');
    
    
    
    
select usr_login from usg, ugp, usr where usg.ugp_key = ugp.ugp_key 
    and ugp.ugp_name='Default-HRIT-JP-401K-Employee' and usg.usr_key = usr.usr_key 
    --and usr.usr_login =upper('prashanth.vuduthala@oracle.com') 
    ;
    
    select * from OIM_BLKLD_EX_UDCPP2;
    
    desc ud_idsl_usr;
    


select * from OIM_OAT_MENU;
select * from apsoim.OIM_OAT_MENU_ROLE_MAPINGS;

select * from ugp where ugp_key=2979;

update OIM_OAT_MENU_ROLE_MAPINGS set menu_id=1005 where maping_id=1005;

insert into OIM_OAT_MENU_ROLE_MAPINGS (maping_id,menu_id,ugp_key,creation_date,created_by) values (OIM_OAT_MENU_ROLE_MAPINGS_seq.nextval,1005,2979,sysdate,250994);
insert into OIM_OAT_MENU_ROLE_MAPINGS (maping_id,menu_id,ugp_key,creation_date,created_by) values (OIM_OAT_MENU_ROLE_MAPINGS_seq.nextval,1006,2979,sysdate,250994);
insert into OIM_OAT_MENU_ROLE_MAPINGS (maping_id,menu_id,ugp_key,creation_date,created_by) values (OIM_OAT_MENU_ROLE_MAPINGS_seq.nextval,1007,2979,sysdate,250994);
desc OIM_OAT_MENU;
insert into OIM_OAT_MENU (MENU_ID,MENU_LABEL,MENU_MODEL_PATH,MENU_VIEW_PATH,MENU_STYLE_PATH,PARENT_MENU,MENU_TYPE,
SUPPORT_NOTES,MENU_ORDER,MENU_ICON) 
values (1000,'HOME',null,'common/homepage.html',null,null,'LEAF','Initial Application Setup',null,'demo-icon-font-24 demo-home-icon-24');

insert into OIM_OAT_MENU (MENU_ID,MENU_LABEL,MENU_MODEL_PATH,MENU_VIEW_PATH,MENU_STYLE_PATH,PARENT_MENU,MENU_TYPE,
SUPPORT_NOTES,MENU_ORDER,MENU_ICON) 
values (1005,'IDCS Groups',null,null,null,null,'PARENT','Initial Application Setup',5,'demo-icon-font-24 demo-gear-icon-16');

insert into OIM_OAT_MENU (MENU_ID,MENU_LABEL,MENU_MODEL_PATH,MENU_VIEW_PATH,MENU_STYLE_PATH,PARENT_MENU,MENU_TYPE,
SUPPORT_NOTES,MENU_ORDER,MENU_ICON) 
values (1006,'Applications','idcsgroups/js/appsmodel.js','idcsgroups/apps.html','idcsgroups/css/app.css',1005,'LEAF',
'Initial Application Setup',6,'demo-icon-font-24 demo-list-icon-16');

insert into OIM_OAT_MENU (MENU_ID,MENU_LABEL,MENU_MODEL_PATH,MENU_VIEW_PATH,MENU_STYLE_PATH,PARENT_MENU,MENU_TYPE,
SUPPORT_NOTES,MENU_ORDER,MENU_ICON) 
values (1007,'Groups','idcsgroups/js/groupsmodel.js','idcsgroups/groups.html','idcsgroups/css/app.css',1005,'LEAF',
'Initial Application Setup',7,'demo-icon-font-24 demo-grid-icon-16');

insert into OIM_OAT_MENU (MENU_ID,MENU_LABEL,MENU_MODEL_PATH,MENU_VIEW_PATH,MENU_STYLE_PATH,PARENT_MENU,MENU_TYPE,
SUPPORT_NOTES,MENU_ORDER,MENU_ICON) 
values (1008,'OCI Groups','ocigroupsetup/js/demo.js','ocigroupsetup/demo.html','ocigroupsetup/css/demo.css',null,'LEAF',
'Initial Application Setup',8,'demo-icon-font-24 demo-grid-icon-16');



select * from OIM_APPROVAL_MASTER where SUPPORT_NOTES in ('SR#180810-000114');
select * from OIM_APPROVAL_CONDITIONS where APPROVAL_MASTER_ID in (362254,147366,357350,357218);

select * from OIM_APPROVAL_DETAILS where SUPPORT_NOTES in ('SR#180810-000114');

select * from OIM_APPROVAL_CONDITIONS where SUPPORT_NOTES in ('SR#180810-000114');
select * from OIM_APPROVAL_CONDITIONS where APPROVAL_MASTER_ID=437743 and  CONDITION1='Organization.Management Chain=90396';

insert into OIM_APPROVAL_DETAILS(APPROVAL_DETAILS_ID, APPROVAL_MASTER_ID, CONDITION_ID, APPROVER_TYPE, APPROVAL_LEVEL, USER_ID, EFFECTIVE_DATE, EXPIRATION_DATE, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
values (OIM_APPROVAL_DETAILS_SEQ.nextval,364045, '112861','MGR',1,NULL, SYSDATE, '','SR#180810-000114',250994,sysdate,250994,sysdate);

INSERT INTO OIM_APPROVAL_DETAILS(APPROVAL_DETAILS_ID, APPROVAL_MASTER_ID, CONDITION_ID, APPROVER_TYPE, APPROVAL_LEVEL, USER_ID, EFFECTIVE_DATE, EXPIRATION_DATE, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
values (OIM_APPROVAL_DETAILS_SEQ.NEXTVAL,364045, '112861','EMPLOYEE',2,350285, sysdate, '','SR#190107-000880',250994,sysdate,250994,sysdate);
Organization.Management Chain=708338

select * from tab where tname like '%ICUS%';
select * from UD_ICUS_USR;
select * from UD_ICUS_UGP;

--delete from UD_ICUS_UGP;

select * from ent_assign where ent_list_key in (select entity_key from catalog where PARENT_ENTITY_KEY=14452 and PARENT_ENTITY_type='ApplicationInstance');




select * from OIM_BLKLD_TMP_UDICU1;
select * from OIM_BLKLD_TMP_UDICU2;

select * from OIM_BLKLD_EX_UDICU1;
select * from OIM_BLKLD_EX_UDICU2;


select * from  OIM_APPROVAL_CONDITIONS where APPROVAL_MASTER_ID in (437744);

INSERT INTO OIM_APPROVAL_CONDITIONS(CONDITION_ID, APPROVAL_MASTER_ID, PRIORITY, CONDITION1, CONDITION2, CONDITION3, CONDITION4, CONDITION5, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES (OIM_APPROVAL_CONDITIONS_SEQ.NEXTVAL, 437743, 12,'Organization.Management Chain=594258','','','','','SR#180911-000925',250994,SYSDATE,250994,SYSDATE);

INSERT INTO OIM_APPROVAL_CONDITIONS(CONDITION_ID, APPROVAL_MASTER_ID, PRIORITY, CONDITION1, CONDITION2, CONDITION3, CONDITION4, CONDITION5, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES (OIM_APPROVAL_CONDITIONS_SEQ.NEXTVAL, 437744, 11,'Organization.Management Chain=594258','','','','','SR#180911-000925',250994,SYSDATE,250994,SYSDATE);


insert into APSOIM.OIM_APPROVAL_DETAILS values
(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,440112,114707,'MGR',1,null,sysdate,null,'SR#180119-000493',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values
(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,440112,114707,'EMPLOYEE',2,687894,sysdate,null,'SR#180119-000493',sysdate,250994,sysdate,250994,null);



select catalog_id,parent_entity_key,entity_key,entity_type from CATALOG where 
ENTITY_DISPLAY_NAME='oci_aoic' and ENTITY_DESCRIPTION='OCI Server Account - LAD' and IS_REQUESTABLE=1 and IS_DELETED=0;


---------
select * from apsoim.APPR_MODIFY_UI_INPUT;
select * from apsoim.ENT_APPROVERS    ;


UD_ICUS_USR,UD_ICSU_USR_EMAIL,24_HOUR_REST:PASSWORD_VARIES_BY_50_PERC;
desc UD_ICSU_USR;

select * from UD_ICUS_USR;

update UD_ICUS_USR set UD_ICUS_USR_PWD_UPDATE= sysdate where UD_ICUS_USR_EMAIL='darl.kuhn@oracle.com'; 

UD_ICSU_USR_PWD_UPDATE;

select * from OIM_BLKLD_TMP_SAMLPR1;



DECLARE
P_ERROR_MESSAGE VARCHAR2(25000);
BEGIN
APPS.mis_per_cosmos.fnd_Initialize@GSIAP_LINK.US.ORACLE.COM (1598624, 20474,800);
APPS.mis_per_cosmos.update_hr@GSIAP_LINK.US.ORACLE.COM ('ZA','960242','adupreez','anita.du.preez@oracle.com','YES');
COMMIT;
DBMS_OUTPUT.PUT_LINE(P_ERROR_MESSAGE);
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('EXCEPTION : '||SQLERRM);
end;
/

;
select * from ud_hpta_usr order by orc_key;
desc ud_hpta_usr;
update ud_hpta_usr set ud_hpta_usr_email='newhtest.ahetestls@oracle.com' where orc_key =6242097;

select * from OIM_BLKLD_TMP_UDHPT1;

select * from ud_otap_u;


insert into apsoim.ENT_APPROVERS (ent_approver_id,app_instance_name,lookup_name,ent_code,approver_type,approval_level,approver_mail,creation_date,support_notes)
values (apsoim.ent_approvers_seq.nextval, 'PEOJobControlApplicationSAAS', 'Lookup.IDMIT.RESTWS.Privileges.PEOJ','cloudops_perf_user_group:USER', 'ENTITLEMENT', 2,
'SAAS - cloudops_perf_user_group Admin->PEO Job Control Application SAAS',sysdate, 'SR#181024-000491');


insert into apsoim.ENT_APPROVERS (ent_approver_id,app_instance_name,lookup_name,ent_code,approver_type,approval_level,approver_mail,creation_date,support_notes)
values (apsoim.ent_approvers_seq.nextval, 'PEOJobControlApplicationSAAS', 'Lookup.IDMIT.RESTWS.Privileges.PEOJ','SaaS_patching_upgrade_grp:USER', 'ENTITLEMENT', 2,
'SAAS - SaaS_patching_upgrade_grp Admin->PEO Job Control Application SAAS',sysdate, 'SR#181010-000567');

insert into apsoim.ENT_APPROVERS (ent_approver_id,app_instance_name,lookup_name,ent_code,approver_type,approval_level,approver_mail,creation_date,support_notes)
values (apsoim.ent_approvers_seq.nextval, 'PEOJobControlApplicationSAAS', 'Lookup.IDMIT.RESTWS.Privileges.PEOJ','cloudops_uptake_user_group:USER', 'ENTITLEMENT', 2,
'SAAS - cloudops_uptake_user_group Admin->PEO Job Control Application SAAS',sysdate, 'SR#181010-000567');



INSERT INTO OIM_APPROVAL_CONDITIONS(CONDITION_ID, APPROVAL_MASTER_ID, PRIORITY, CONDITION1, CONDITION2, CONDITION3, CONDITION4, CONDITION5, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES (OIM_APPROVAL_CONDITIONS_SEQ.NEXTVAL,200959, 1,'ParentForm.Region#UD_RENU_U_GROUP="profile":{"id":43},"staffGroup":{"id":100617}','','','','','',250994,SYSDATE,250994,SYSDATE);


INSERT INTO OIM_APPROVAL_CONDITIONS(CONDITION_ID, APPROVAL_MASTER_ID, PRIORITY, CONDITION1, CONDITION2, CONDITION3, CONDITION4, CONDITION5, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES (OIM_APPROVAL_CONDITIONS_SEQ.NEXTVAL,200959, 2,'ParentForm.Region#UD_RENU_U_GROUP="profile":{"id":2},"staffGroup":{"id":100025}','','','','','',250994,SYSDATE,250994,SYSDATE);



insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,200959,371,'EMPLOYEE',2,44324,sysdate,null,'Oracle Renewal Center',sysdate,250994,sysdate,250994,null);
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,200959,372,'EMPLOYEE',2,44324,sysdate,null,'Oracle Renewal Center',sysdate,250994,sysdate,250994,null);



select distinct app_instance_display_name, app_instance_name, app_instance_key, itresource_key, svr_name from catalog c, 
app_instance app, svr where entity_name like '%EMERGENCY_ACCESS%' and is_requestable = 1 and is_deleted = 0 
and app.app_instance_key = c.parent_entity_key and nvl(app_instance_is_soft_delete, 0) = 0 and svr.svr_key = itresource_key;

select * from OIM_UBS_USER_ENTITY_ALLOWED;


select ENTITY_DISPLAY_NAME from CATALOG where PARENT_ENTITY_KEY = 5351 and udf_opcbg_identity_domain ='bks1903' and is_deleted=0;


update APSOIM.BEEHIVEGRP_BULKMEM_ADDREMOVE set SCH_TASK_STATUS='Entitlement no longer valid' where batch_key in (565835   );

select * from APSOIM.BEEHIVEGRP_BULKMEM_ADDREMOVE where batch_key in (565835  ) ;


select * from oim_bg_setup_mapping;

INSERT_INTO_ENT_NEW_LOAD_TABLE query ;
INSERT INTO APSOIM.ENT_NEW_LOAD (ID, APP_INSTANCE_NAME, LOOKUP_NAME, ENT_CODE, ENT_DISPLAY_NAME, ENT_DESCRIPTION, TYPE,
PREFIX_IT_RESOURCE, CREATION_DATE, SUPPORT_NOTES, IS_REQUESTABLE, CATALOG_UDF_ATTRIBUTE) 
(SELECT APSOIM.ENT_NEW_LOAD_SEQ.NEXTVAL, APP_INSTANCE_NAME, LOOKUP_NAME, GROUP_DN, GROUP_DISPLAY_NAME, DESCRIPTION, TYPE,
PREFIX_IT_RESOURCE, CREATION_DATE, SUPPORT_NOTES, IS_REQUESTABLE, CATALOG_UDF_ATTRIBUTE FROM  
(select distinct a.APP_INSTANCE_NAME, 'Lookup.IDCS.Groups' LOOKUP_NAME , g.GROUP_DN, g.GROUP_DISPLAY_NAME, g.DESCRIPTION, 
'ENTITLEMENT' type, 1 PREFIX_IT_RESOURCE, SYSDATE CREATION_DATE, 'IDMITIDCSGroupsLoad Schedule Job' SUPPORT_NOTES,
1 IS_REQUESTABLE, 'UDF_SUPPRORTNOTES->'|| g.SUPPORT_NOTES  ||';UDF_APP_PARENT_APPLICATION->'||app.entity_key CATALOG_UDF_ATTRIBUTE 
from apsoim.IDCS_APP_GROUPS g, apsoim.IDCS_APPLICATIONS app, apsoim.IDCS_ENVIRONMENTS e, app_instance a 
where g.application_key=app.application_key and app.environment_key=e.environment_key 
and e.app_instance_key=a.app_instance_key and g.processed_STATUS = 'COMPLETE' and g.GROUP_DN is not null and g.entity_key is null))  
;

select * from catalog where entity_display_name like 'OPC_SAAS_FADEVOPS_EFIP%' ;

desc ent_new_load;



select * from APSOIM.idcs_app_groups where group_dn  in ('262c49f942484bddb66daf74d137b544',
'f3f9bd7bb8f54079a2e33aaa8f93e7a9',
'd75f37ff450d45a3b1c39ee5314b7acd',
'df911ac3876748409c0fa659029f9d37',
'e0f76772aba9452584c419ff67847ad9',
'7b01433b3ec24047a3984919bd6fd6c8',
'c1039fbef89d475a8a4f25c9a5b241a7');


insert into APPR_MODIFY_UI_INPUT (APPR_MODIFY_UI_INPUT_KEY,REQUESTER_USR_KEY,APPROVERS_AWARE,JUSTIFICATION,CREATION_DATE,CREATED_BY,STATUS,SUPPORT_NOTES)
VALUES (APPR_MODIFY_UI_INPUT_SEQ.NEXTVAL, 1 , 1 , 'SR#' , SYSDATE, 0 , 'SUCCESS' , 'SR#' )
               ;
               
               select * from apsoim.APPR_MODIFY_UI_INPUT order by  APPR_MODIFY_UI_INPUT_KEY desc;
               select * from ENT_APPROVERS where APPROVAL_MODIFY_UI_INPUT_KEY=110460; ;
               select * from apsoim.ent_approvers_processed where APPROVAL_MODIFY_UI_INPUT_KEY=110460;
               select * from catalog where entity_key=12036;
               desc ENT_APPROVERS;
               
INSERT INTO APSOIM.ENT_APPROVERS(ENT_APPROVER_ID,APPROVER_TYPE,APPROVAL_LEVEL,APPROVER_MAIL,CREATION_DATE,SUPPORT_NOTES,ENTITY_TYPE,ENTITY_KEY,ACTION,APPROVAL_MODIFY_UI_INPUT_KEY)
VALUES (APSOIM.ENT_APPROVERS_SEQ.NEXTVAL,'AUTO_APPROVE','1','AUTO_APPROVE',SYSDATE,'OJETUI#','ACCOUNT',12036,'ADD',101481)
;

select * from users_to_evaluate ;

desc OIM_APPROVAL_DETAILS;


SELECT G.PROCESSED_STATUS, E.ENVIRONMENT_NAME,E.APP_INSTANCE_KEY,A.APP_NAME,A.APPLICATION_KEY,G.GROUP_KEY,G.GROUP_DISPLAY_NAME,G.GROUP_NAME,G.DESCRIPTION FROM APSOIM.IDCS_ENVIRONMENTS E, APSOIM.IDCS_APPLICATIONS A, APSOIM.IDCS_APP_GROUPS G WHERE G.APPLICATION_KEY=A.APPLICATION_KEY AND A.ENVIRONMENT_KEY=E.ENVIRONMENT_KEY AND (G.PROCESSED_STATUS NOT IN ('COMPLETE','ALREADY_EXIST') OR G.PROCESSED_STATUS IS NULL) AND A.EXPIRATION_DATE IS NULL AND ROWNUM <= 100  ORDER BY APP_NAME;


INSERT INTO OIM_APPROVAL_CONDITIONS(CONDITION_ID, APPROVAL_MASTER_ID, PRIORITY, CONDITION1, CONDITION2, CONDITION3, CONDITION4, CONDITION5, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES (OIM_APPROVAL_CONDITIONS_SEQ.NEXTVAL,457150, 1,'ParentForm.Role#UD_OCIS_U_ROLE=17887~ocistack-oci-members','','','','','SR#190129-000663',250994,SYSDATE,250994,SYSDATE);

INSERT INTO OIM_APPROVAL_CONDITIONS(CONDITION_ID, APPROVAL_MASTER_ID, PRIORITY, CONDITION1, CONDITION2, CONDITION3, CONDITION4, CONDITION5, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES (OIM_APPROVAL_CONDITIONS_SEQ.NEXTVAL,457150, 2,'ParentForm.Role#UD_OCIS_U_ROLE=17887~ocistack-guest-access','','','','','SR#190129-000663',250994,SYSDATE,250994,SYSDATE);

INSERT INTO OIM_APPROVAL_CONDITIONS(CONDITION_ID, APPROVAL_MASTER_ID, PRIORITY, CONDITION1, CONDITION2, CONDITION3, CONDITION4, CONDITION5, SUPPORT_NOTES, CREATED_BY,CREATION_DATE, UPDATED_BY , UPDATED_DATE)
VALUES (OIM_APPROVAL_CONDITIONS_SEQ.NEXTVAL,457150, 3,'ParentForm.Role#UD_OCIS_U_ROLE=17887~ocistack-exception-members','','','','','SR#190129-000663',250994,SYSDATE,250994,SYSDATE);


select * from  OIM_APPROVAL_CONDITIONS where APPROVAL_MASTER_ID=254223;
select * from OIM_APPROVAL_DETAILS where APPROVAL_MASTER_ID=254252;
select * from apsoim.OIM_APPROVAL_CONDITIONS where support_notes='SR#190129-000663';
select * from OIM_APPROVAL_MASTER where APPROVAL_MASTER_ID=254224;

update OIM_APPROVAL_DETAILS  set approver_type='MGR' where APPROVAL_MASTER_ID=254224;
update OIM_APPROVAL_DETAILS  set expiration_date=sysdate where APPROVAL_details_ID=22565400;

select * from OIM_APPROVAL_DETAILS where entitlement_key is not null;
insert into APSOIM.OIM_APPROVAL_DETAILS values(OIM_APPROVAL_DETAILS_SEQ.NEXTVAL ,254223,375,'ENTITLEMENT',2,null,sysdate,null,'SR#190129-000663',sysdate,250994,sysdate,250994,491670);


select * from OIM_APPROVAL_MASTER where approval_master_id =254224;



SELECT CRG.ROLE_CATALOG_ID , EA.USR_KEY, U.USR_LOGIN, EA.ENT_ASSIGN_KEY INTERNAL_KEY, 'Entitlement' ENTITY_TYPE,
EL.ENT_VALUE ENTITY_INTERNAL_NAME,'0' ENT_COUNT,'0' ROLE_ENT_COUNT FROM ENT_ASSIGN EA,
ENT_LIST EL, USR U, CATALOG C, OIM_CUSTOM_ROLE_GRANT CRG where 1=1 AND C.ENTITY_KEY =EA.ENT_LIST_KEY
AND C.ENTITY_TYPE='Entitlement' AND EA.ENT_LIST_KEY = EL.ENT_LIST_KEY AND EA.USR_KEY= U.USR_KEY
AND EA.ENT_STATUS='Provisioned' AND EA.USR_KEY in(11810   ) AND C.CATALOG_ID = CRG.GRANT_CATALOG_ID AND 
CRG.EXPIRATION_DATE IS NULL  and CRG.ROLE_CATALOG_ID IN ('704039') UNION 
ALL SELECT  ROLE_CATALOG_ID, USR_KEY, USR_LOGIN, INTERNAL_KEY, ENTITY_TYPE, ENTITY_INTERNAL_NAME, 
ENT_COUNT, ROLE_ENT_COUNT FROM ( 
SELECT CRG.ROLE_CATALOG_ID , OIU.USR_KEY, U.USR_LOGIN, 
OIU.OIU_KEY INTERNAL_KEY,'ApplicationInstance' ENTITY_TYPE, APP.APP_INSTANCE_NAME ENTITY_INTERNAL_NAME 
,(SELECT ''||COUNT(*) FROM ENT_ASSIGN EA WHERE EA.OIU_KEY = OIU.OIU_KEY AND EA.ENT_STATUS='Provisioned') ENT_COUNT, 
'0' ROLE_ENT_COUNT FROM OIU, OST, USR U,  APP_INSTANCE APP, CATALOG C, OIM_CUSTOM_ROLE_GRANT CRG where 1=1 
AND OIU.OST_KEY = OST.OST_KEY AND APP.APP_INSTANCE_KEY = OIU.APP_INSTANCE_KEY AND C.ENTITY_KEY=APP.APP_INSTANCE_KEY 
AND C.ENTITY_TYPE='ApplicationInstance' AND OIU.USR_KEY= U.USR_KEY AND USR_STATUS='Active' 
AND OST_STATUS IN ('Provisioned','Enabled') --AND OIU.USR_KEY in(11810   ) 
AND C.CATALOG_ID = CRG.GRANT_CATALOG_ID 
AND  CRG.EXPIRATION_DATE IS NULL  and CRG.ROLE_CATALOG_ID IN ('704039')
)
;


SELECT U.USR_KEY, listagg(CATALOG_ID ||'--'||NVL(P.REQUEST_KEY,-1)||'--'||P.ENTITY_NAME, ',')  
within group (order by U.USR_KEY) CAT_REQUEST_LIST, listagg(CATALOG_ID, ',') within group (order by U.USR_KEY) 
USR_CAT_ID_LIST FROM  USR U, CATALOG C, OIM_CROL_STAGING P WHERE 
p.USR_KEY=U.USR_KEY  
AND C.ENTITY_NAME=P.ENTITY_NAME 
AND C.ENTITY_TYPE='Entitlement'  
and p.action ='Revoke Entitlement' 
AND U.USR_STATUS='Active'  
AND (P.EVAL_STATUS IS NULL OR UPPER(P.EVAL_STATUS) IN ('INVALID','RE_EVAL')) 
AND ROWNUM < 100 GROUP BY  U.USR_KEY
;


SELECT CRG.ROLE_CATALOG_ID , EA.USR_KEY, U.USR_LOGIN, EA.ENT_ASSIGN_KEY INTERNAL_KEY, 'Entitlement' ENTITY_TYPE,
EL.ENT_VALUE ENTITY_INTERNAL_NAME,'0' ENT_COUNT,'0' ROLE_ENT_COUNT FROM
ENT_ASSIGN EA, ENT_LIST EL, USR U, CATALOG C, OIM_CUSTOM_ROLE_GRANT CRG
where 1=1
AND C.ENTITY_KEY =EA.ENT_LIST_KEY
AND C.ENTITY_TYPE='Entitlement'
AND EA.ENT_LIST_KEY = EL.ENT_LIST_KEY
AND EA.USR_KEY= U.USR_KEY
AND EA.ENT_STATUS='Provisioned'
AND EA.USR_KEY in(11810,17078,2000   )
AND C.CATALOG_ID = CRG.GRANT_CATALOG_ID
AND  CRG.EXPIRATION_DATE IS NULL 
and CRG.ROLE_CATALOG_ID IN ('704039')
UNION ALL
SELECT  ROLE_CATALOG_ID, USR_KEY, USR_LOGIN, INTERNAL_KEY, ENTITY_TYPE, ENTITY_INTERNAL_NAME, ENT_COUNT, ROLE_ENT_COUNT FROM (
SELECT CRG.ROLE_CATALOG_ID , OIU.USR_KEY, U.USR_LOGIN, OIU.OIU_KEY INTERNAL_KEY,'ApplicationInstance' ENTITY_TYPE, 
APP.APP_INSTANCE_NAME ENTITY_INTERNAL_NAME
,(SELECT ''||COUNT(*) FROM ENT_ASSIGN EA WHERE EA.OIU_KEY = OIU.OIU_KEY AND EA.ENT_STATUS='Provisioned') ENT_COUNT, 
'0' ROLE_ENT_COUNT
FROM OIU, OST, USR U,  APP_INSTANCE APP, CATALOG C, OIM_CUSTOM_ROLE_GRANT CRG
where 1=1
AND OIU.OST_KEY = OST.OST_KEY
AND APP.APP_INSTANCE_KEY = OIU.APP_INSTANCE_KEY
AND C.ENTITY_KEY=APP.APP_INSTANCE_KEY
AND C.ENTITY_TYPE='ApplicationInstance'
AND OIU.USR_KEY= U.USR_KEY
AND USR_STATUS='Active'
AND OST_STATUS IN ('Provisioned','Enabled')
AND OIU.USR_KEY in(11810,17078  ,2000 )
AND C.CATALOG_ID = CRG.GRANT_CATALOG_ID
AND  CRG.EXPIRATION_DATE IS NULL 
and CRG.ROLE_CATALOG_ID IN ('704039')
);


SELECT CRG.ROLE_CATALOG_ID , OIU.USR_KEY, U.USR_LOGIN, OIU.OIU_KEY INTERNAL_KEY,'ApplicationInstance' ENTITY_TYPE, 
APP.APP_INSTANCE_NAME ENTITY_INTERNAL_NAME
,0 as ENT_COUNT, 
'0' ROLE_ENT_COUNT
FROM OIU, OST, USR U,  APP_INSTANCE APP, CATALOG C, OIM_CUSTOM_ROLE_GRANT CRG
where 1=1
AND OIU.OST_KEY = OST.OST_KEY
AND APP.APP_INSTANCE_KEY = OIU.APP_INSTANCE_KEY
AND C.ENTITY_KEY=APP.APP_INSTANCE_KEY
AND C.ENTITY_TYPE='ApplicationInstance'
AND OIU.USR_KEY= U.USR_KEY
AND USR_STATUS='Active'
aND OST_STATUS IN ('Provisioned','Enabled')
AND U.USR_KEY in(11810,17078   )
AND C.CATALOG_ID = CRG.GRANT_CATALOG_ID
AND  CRG.EXPIRATION_DATE IS NULL 
and CRG.ROLE_CATALOG_ID IN ('704039')
;

select * from oiu oiu, OST ost, USR U,  APP_INSTANCE APP, CATALOG C, OIM_CUSTOM_ROLE_GRANT CRG where
oiu.APP_INSTANCE_KEY=16772 and u.usr_key in (11810,17078   )
AND OIU.OST_KEY = OST.OST_KEY
AND APP.APP_INSTANCE_KEY = OIU.APP_INSTANCE_KEY
AND C.ENTITY_KEY=APP.APP_INSTANCE_KEY
AND C.ENTITY_TYPE='ApplicationInstance'
AND OIU.USR_KEY= U.USR_KEY
AND u.USR_STATUS='Active'
--aND ost.OST_STATUS IN ('Provisioned','Enabled')
AND C.CATALOG_ID = CRG.GRANT_CATALOG_ID
AND  CRG.EXPIRATION_DATE IS NULL 
and CRG.ROLE_CATALOG_ID IN ('704039')
;





update catalog set udf_supportnotes=udf_supportnotes||'SR#190228-000531' where PARENT_ENTITY_KEY is null and PARENT_ENTITY_type is null  and 
entity_key in (11315);


 EXEC OIM_BLKLD_ENABLE;


select * from ud_crol_u where orc_key=7107762;
select * from ud_crol_p where orc_key=7107762;;



Insert into ent_new_load (ID,APP_INSTANCE_NAME,LOOKUP_NAME,ENT_CODE,ENT_DISPLAY_NAME,ENT_DESCRIPTION,TYPE,PREFIX_IT_RESOURCE,CREATION_DATE,SUPPORT_NOTES,
STATUS,COMMENTS,PROCESSED_DATE,ENTITY_KEY,CATALOG_UDF_ATTRIBUTE) values 
(ent_new_load_seq.nextval,'OTUBERAPTIVE','Lookup.EMAIL.Oracle.Privileges.EMNA',
'OTUBE RAPT Interactive Video Editor -- POC',
'OTUBE RAPT Interactive Video Editor -- POC',
'OTUBE RAPT Interactive Video Editor',
'ENTITLEMENT',1,sysdate,
'SR#190513-000398',
null,null,null,null,'UDF_SUPPORTNOTES->SR#190513-000398');


Insert into ent_approvers
(ENT_APPROVER_ID,APP_INSTANCE_NAME,LOOKUP_NAME,ENT_CODE,APPROVER_TYPE,APPROVAL_LEVEL,APPROVER_MAIL,CREATION_DATE,SUPPORT_NOTES) values
(APSOIM.ENT_APPROVERS_SEQ.NEXTVAL,'OTUBERAPTIVE','Lookup.EMAIL.Oracle.Privileges.EMNA','OTUBE RAPT Interactive Video Editor -- POC','AUTO_APPROVE','1',null,sysdate,'SR#190513-000398');



Insert into ent_new_load (ID,APP_INSTANCE_NAME,LOOKUP_NAME,ENT_CODE,ENT_DISPLAY_NAME,ENT_DESCRIPTION,TYPE,PREFIX_IT_RESOURCE,CREATION_DATE,SUPPORT_NOTES,
STATUS,COMMENTS,PROCESSED_DATE,ENTITY_KEY,CATALOG_UDF_ATTRIBUTE) values 
(ent_new_load_seq.nextval,'CustomRoleAccess','Lookup.Oracle.Privileges.CROL',
'Custom Role Test Two',
'Custom Role Test Two',
'Custom Role Access',
'ENTITLEMENT',0,sysdate,
'SR#TEST',
null,null,null,null,'UDF_SUPPORTNOTES->SR#TEST');


Insert into ent_approvers
(ENT_APPROVER_ID,APP_INSTANCE_NAME,LOOKUP_NAME,ENT_CODE,APPROVER_TYPE,APPROVAL_LEVEL,APPROVER_MAIL,CREATION_DATE,SUPPORT_NOTES) values
(APSOIM.ENT_APPROVERS_SEQ.NEXTVAL,'CustomRoleAccess','Lookup.Oracle.Privileges.CROL','Custom Role Test Two','AUTO_APPROVE','1',null,sysdate,'SR#TEST');

select * from UD_AEHR_U;
select * from UD_AEHR_R;

desc UD_AEHR_P;




select usr_login from user_accounts where usr_login in (
select upper(email_address) from nag_190516_000551 where 1=1
and upper(usr_country) != 'CN'
and usr_status = 'Active'
) and app_instance_display_name = 'Kerberos' and ost_status in ('Provisioned','Enabled')
--AND ROWNUM < 1000
--  order by usr_login
 
minus

select usr_login from user_ent where ent_display_name ='DB_TEST_ACCESS' and ent_description='Kerberos'
and ent_status in ('Provisioned')
;

select orc_key from oim_support.user_accounts where app_instance_display_name in ('EMDS BI Account') and ost_status='Provisioned' and
usr_login in ('DOUG.RICKERT@ORACLE.COM', 'JAGDEV.DHILLON@ORACLE.COM', 'AJAY.MANAKKAT@ORACLE.COM', 'AMIT.KARKARE@ORACLE.COM', 'TOBY.YIP@ORACLE.COM', 'BRUCE.CHANG@ORACLE.COM', 'DEEPAK.LOUIS@ORACLE.COM', 'ANDREW.GIFFORD@ORACLE.COM', 'AJAY.JAGANNATHA.RAO@ORACLE.COM', 'SIMRANJEET.SS.SINGH@ORACLE.COM', 'ABHISHEK.JAIN@ORACLE.COM', 'HOMER.VARGAS@ORACLE.COM', 'SCOTT.STUBBS@ORACLE.COM', 'ASHOK.MADHURA@ORACLE.COM', 'ALEXANDRE.KOHLER@ORACLE.COM', 'ALVARO.LOUSTAU@ORACLE.COM', 'ANGEL.HERNANDEZ@ORACLE.COM', 'ABHISHEK.AZ.KUMAR@ORACLE.COM', 'BHASKARARAO.NEDUNURI@ORACLE.COM', 'AMITKUMAR.KOTHARI@ORACLE.COM', 'ANUSHA.KALLAM@ORACLE.COM', 'ALEX.MCATAMNEY@ORACLE.COM', 'PAMELA.HAYNIE@ORACLE.COM', 'KONDAREDDY.GUDAPAREDDI@ORACLE.COM', 'ALIAKSEI.MALALETNI@ORACLE.COM', 'MOHAMED.IRSHADULLAH@ORACLE.COM', 'ANDY.HARDY@ORACLE.COM', 'BILAL.SHAH@ORACLE.COM', 'ABRAHAM.HUERTA@ORACLE.COM', 'DOUG.RICKERT@ORACLE.COM', 'PAMELA.HAYNIE@ORACLE.COM', 'ALIAKSEI.MALALETNI@ORACLE.COM', 'ALVARO.LOUSTAU@ORACLE.COM', 'ANGEL.HERNANDEZ@ORACLE.COM', 'ABHISHEK.AZ.KUMAR@ORACLE.COM', 'BHASKARARAO.NEDUNURI@ORACLE.COM', 'AMITKUMAR.KOTHARI@ORACLE.COM', 'ANUSHA.KALLAM@ORACLE.COM', 'ALEX.MCATAMNEY@ORACLE.COM', 'PAMELA.HAYNIE@ORACLE.COM', 'KONDAREDDY.GUDAPAREDDI@ORACLE.COM', 'ALIAKSEI.MALALETNI@ORACLE.COM', 'MOHAMED.IRSHADULLAH@ORACLE.COM', 'ANDY.HARDY@ORACLE.COM', 'BILAL.SHAH@ORACLE.COM', 'ABRAHAM.HUERTA@ORACLE.COM', 'DOUG.RICKERT@ORACLE.COM', 'PAMELA.HAYNIE@ORACLE.COM', 'ALIAKSEI.MALALETNI@ORACLE.COM');


-------------------------EOF

select * from user_objects where object_name like '%OIM_OAT_MENU%';
select * from APSOIM.PWD_DICTIONARY_CONTAINS_CHK;
select * from APSOIM.PWD_DICTIONARY_CONTAINS_CHK where dictionary_word like '%2!';
grant all on stage_oim.UD_CROL_P to apsoim;
grant select on apsoim.OIM_ENTITY_NOTIFICATIONS to prod_oim;
desc usr;

update user_provisioning_attrs set policy_eval_needed = 1 ,policy_eval_in_progress =0 ,update_date=sysdate where usr_key in (682779);
--update ent_list set ent_description= 'Cloud Ops CX Account' where ent_description = 'Cloud Operations Incident Management Access';

SELECT * FROM ORCHPROCESS WHERE ID in (SELECT ORCHESTRATION_PROCESS_ID FROM REQUEST WHERE REQUEST_ID =2640116 );
SELECT * FROM ORCHEVENTS WHERE PROCESSID = 13668874 order by orchorder asc;

SELECT * FROM ORCHPROCESS 
where ENTITYID=592422
order by 1 desc;

SELECT * FROM ENT_ASSIGN WHERE OIU_KEY IN (SELECT OIU_KEY FROM OIU WHERE ORC_KEY IN (9826802));
desc usr;
select usr_login,usr_key,USR_UDF_RESPONSIBILITY_CODE,usr_status,usr_manager_key,usr_end_date,USR_UDF_ORCLSTATUS from usr where usr_login like ('%OIMTEST%') and usr_manager_key is not null;
select * from user_provisioning_attrs where usr_key in (700004);
update UD_SSA_U set  ud_ssa_u_emp_no=null where ORC_KEY =14652103;
update ud_ssa_u set  ud_ssa_u_old_username='MLADEN.COSMIN@ORACLE.COM' where orc_key =12184981;
update ud_ssa_u set  ud_ssa_u_username='SUN.JESSICA@ORACLE.COM' where orc_key =17975520;
update ud_ssa_u set  ud_ssa_u_supportnotes=ud_ssa_u_supportnotes||'SR#190425-000112' where orc_key =14370554;
select * from ud_ssa_u where ud_ssa_u_username in  ('CHINNI.KRISHNA.PALAGIRI@ORACLE.COM');
SELECT * FROM UD_SSA_U WHERE orc_key in (9671097);
SELECT * FROM UD_SSA_P WHERE ORC_KEY IN (9677952);


delete FROM UD_SSA_P WHERE ORC_KEY IN (12883995);

SELECT USR_UDF_PERSON_ID,  USR_KEY,USR_EMP_TYPE,USR_UDF_EMPLOYEE_SUBTYPE,USR_UDF_CHANGE_REASON,USR_LOGIN,USR_EMAIL,USR_STATUS,USR_UDF_RESPONSIBILITY_CODE,
USR_END_DATE,USR_EMP_NO,USR_UDF_BUSINESS_GRP,USR_COUNTRY,USR_UDF_GLOBALUID,USR_MANAGER_KEY,USR_END_DATE,USR_UDF_ORCLSTATUS ,ACT_KEY,USR_UDF_MANAGER_FLAG,USR_LDAP_DN,
usr_ldap_guid,usr_first_name,usr_last_name,usr_middle_name,usr_display_name,USR_UDF_KNOWNAS,usr_udf_supportnotes  ,usr_timezone,usr_update,usr_create,usr_udf_disabled_date,
USR_UDF_PREV_EMP_EMAIL,USR_UDF_SUPPLIER_ID,USR_UDF_ACCOUNTS_REVOKED,USR_UDF_JOB_FUNCTION,USR_MOBILE,USR_UDF_REQUEST_KEY,USR_COMMON_NAME ,
USR_UDF_MANAGEMENT_CHAIN,USR_UDF_VP_MANAGEMENT_CHAIN
FROM USR WHERE (USR_LOGIN) like upper('%prashanth.vuduthala@oracle.com%')
--FROM USR WHERE (USR_EMAIL) in ('pooja.baraskar@oracle.com')
--FROM USR WHERE lower(USR_UDF_GLOBALUID) in ('svelusam')--from usr where USR_UDF_PERSON_ID in (894250855)
--from usr where USR_EMP_NO in ('1111790')
--from usr where USR_UDF_PERSON_ID in (893612912)
--from usr where USR_UDF_SUPPLIER_ID in ('N70413')
--from usr where usr_key in (861903  )
--from usr where usr_first_name like ('Willem-Jan')
--from usr where USR_UDF_CHANGE_REASON='RH';
--FROM USR WHERE (USR_UDF_SUPPORTNOTES) like ('%visu{updated USR_UDF_MANAGEMENT_CHAIN : 30th Oct 2017}%')
 

 from usr where USR_UDF_MANAGEMENT_CHAIN like '%PRASAD.GADIRAJU%'
 AND USR_STATUS='Active'
  and USR_UDF_EMPLOYEE_SUBTYPE='EMPLOYEE'
  ORDER BY usr_key desc
 ;
 
 update USR set USR_UDF_MANAGEMENT_CHAIN='test',USR_UDF_VP_MANAGEMENT_CHAIN='test' where usr_key=848156;
 
 select * from PDIT_USER_NAME_CHANGE_HISTORY where usr_key in (899433,901210) order by creation_date desc;
 
  ---VALID_TO_DATE
 select usr_key, usr_login from usr where usr_login in ('AYUSH.SINGHAL@ORACLE.COM');
 select usr_key,usr_login from usr where usr_key in (94934);
 desc usr;
 
 select * from ENT_ASSIGN  where ent_list_key in (764843) and usr_key in (select usr_key from usr where usr_login in ('ERNAWATI.PANTONI@ORACLE.COM')) ;
select * from oiu where orc_key=14423072;--11551461

 update ENT_ASSIGN  set valid_to_date=ent_assign_create+30  where ent_list_key in (764843) and usr_key in 
 (select usr_key from usr where usr_login in ('ERNAWATI.PANTONI@ORACLE.COM'));
 
 select * from catalog where entity_display_name in ('DBA Password Access')
 and entity_description in ('GETPWD Access - BAS SOX Production Environments');
 
 SELECT to_char(usr_update,'YY-MON') as month_year,count(distinct USR_UDF_BUSINESS_GRP) as metrics_count FROM prod_oim.usr
where  trunc(usr_update) >= trunc(sysdate-90)  group by to_char(usr_update,'YY-MON');
 
 select * from catalog where entity_display_name like '%I%D%C%S%' and entity_type='ApplicationInstance';
 
 select to_char(usr_create,'YY-MON') as month_year,count(*) as metrics_count from usr where usr_create >= sysdate-360 group by to_char(usr_create,'YY-MON');
 
 SELECT USR_UDF_PERSON_ID,  USR_KEY,USR_EMP_TYPE,USR_UDF_EMPLOYEE_SUBTYPE,USR_LOGIN,USR_EMAIL,USR_STATUS,USR_UDF_RESPONSIBILITY_CODE,
USR_END_DATE,USR_EMP_NO,USR_UDF_BUSINESS_GRP,USR_COUNTRY,USR_UDF_GLOBALUID,USR_MANAGER_KEY,USR_END_DATE,USR_UDF_ORCLSTATUS ,ACT_KEY,USR_UDF_MANAGER_FLAG,USR_LDAP_DN,
usr_ldap_guid,usr_first_name,usr_last_name,usr_middle_name,usr_display_name,usr_udf_supportnotes  ,usr_timezone,usr_update,usr_create,usr_udf_disabled_date,
USR_UDF_PREV_EMP_EMAIL,USR_UDF_CHANGE_REASON,USR_UDF_SUPPLIER_ID,USR_UDF_ACCOUNTS_REVOKED,USR_UDF_JOB_FUNCTION from usr where usr_udf_disabled_date>=sysdate-3/24;
 
 desc usr;919880405758
 select * from usr where USR_UDF_EMPLOYEE_SUBTYPE='EMPLOYEE' and USR_UDF_MANAGEMENT_CHAIN like '%DON.JOHNSON@ORACLE.COM%'
 and usr_status='Active';
 
 update usr set  usr_manager_key=504690 WHERE (USR_LOGIN) IN ('TESTRC.TESTAHEBBZ@ORACLE.COM') ;
 update usr set  USR_UDF_MANAGEMENT_CHAIN='=>BOARD.OF.DIRECTORS@ORACLE.COM=>LARRY.ELLISON@ORACLE.COM=>THOMAS.KURIAN@ORACLE.COM=>CAMPBELL.WEBB@ORACLE.COM=>CHIRAG.ANDANI@ORACLE.COM=>PRASAD.GADIRAJU@ORACLE.COM=>MURTHY.DASARI@ORACLE.COM=>PRASHANTH.VUDUTHALA@ORACLE.COM=>TESTRC.TESTAHEBBN@ORACLE.COM' WHERE (USR_LOGIN) IN ('TESTRC.TESTAHEBBN@ORACLE.COM') ;
 
 
 update usr set USR_UDF_DISABLED_DATE=null,USR_UDF_ACCOUNTS_REVOKED=0 ,ACT_KEY=21 , USR_UDF_SUPPORTNOTES = USR_UDF_SUPPORTNOTES||'SR#190520-000186'
 WHERE (USR_LOGIN) IN ('ROHIT.KU.JAIN@ORACLE.COM') ;
 
 update usr set USR_UDF_SUPPORTNOTES = USR_UDF_SUPPORTNOTES||'SR#180911-000356',USR_UDF_ACCOUNTS_REVOKED=0, ACT_KEY=21 
 where usr_key =382766;
 select usr_login, usr_status from usr where usr_key=4765513;
 
update usr set USR_UDF_SUPPORTNOTES = USR_UDF_SUPPORTNOTES||'SR#171129-000408',usr_first_name='Arup',usr_last_name='Upopadhyay' where usr_key =217511;
update USR set USR_MANAGER_KEY=504690 WHERE UPPER(USR_LOGIN) in ('TESTUSRFN2.TE.TESTUSRLN2@ORACLE.COM','TESTUSRFN2.TT.TESTUSRLN2@ORACLE.COM');

update USR set usr_email='newhtest.ahetestls@oracle.com' WHERE  usr_key in (833491);

update USR set usr_status='Disabled' ,USR_UDF_SUPPLIER_ID=null WHERE UPPER(USR_LOGIN) in ('ANNA.S.SUSLOVA@ORACLE.COM');

SELECT USR_EMP_NO,USR_UDF_BUSINESS_GRP FROM USR WHERE USR_EMP_TYPE='Contractor';
DESC USR;


SELECT USR_UDF_PERSON_ID,  USR_KEY,USR_EMP_TYPE,USR_UDF_EMPLOYEE_SUBTYPE,USR_UDF_CHANGE_REASON,USR_LOGIN,USR_EMAIL,USR_STATUS,USR_UDF_RESPONSIBILITY_CODE,
USR_END_DATE,USR_EMP_NO,USR_UDF_BUSINESS_GRP,USR_COUNTRY,USR_UDF_GLOBALUID,USR_MANAGER_KEY,USR_END_DATE,USR_UDF_ORCLSTATUS ,ACT_KEY,USR_UDF_MANAGER_FLAG,USR_LDAP_DN,
usr_ldap_guid,usr_first_name,usr_last_name,usr_middle_name,usr_display_name,USR_UDF_KNOWNAS,usr_udf_supportnotes  ,usr_timezone,usr_update,usr_create,usr_udf_disabled_date,
USR_UDF_PREV_EMP_EMAIL,USR_UDF_SUPPLIER_ID,USR_UDF_ACCOUNTS_REVOKED,USR_UDF_JOB_FUNCTION,USR_MOBILE,USR_UDF_REQUEST_KEY,USR_COMMON_NAME ,USR_UDF_MANAGEMENT_CHAIN
FROM USR WHERE (USR_LOGIN) like upper('%ALEXANDRU.B.BOTEZATU@ORACLE.COM%')
--FROM USR WHERE upper(USR_LOGIN) in ('KUNAL.M.SHAH@ORACLE.COM','KUNAL.SHAH@ORACLE.COM')
--FROM USR WHERE UPPER(USR_UDF_GLOBALUID) in ('OMCSCEML')--from usr where USR_UDF_PERSON_ID in (894250855)
--from usr where USR_EMP_NO in ('1099045','21534')
--from usr where usr_key in (2000)
--from usr where usr_first_name like ('Willem-Jan')
--FROM USR WHERE (USR_UDF_MANAGEMENT_CHAIN) like ('%DHEERAJ.KHANNA@ORACLE.COM%')
 --AND USR_STATUS='Active'
 --and USR_UDF_EMPLOYEE_SUBTYPE='EMPLOYEE'
  ORDER BY usr_key desc
 ;

--PGUERIN
select * from USR where USR_UDF_GLOBALUID like 'DUMMY_GUID';
select USR_UDF_PERSON_ID, USR_TIMEZONE, USR_KEY,USR_MIDDLE_NAME,USR_DISPLAY_NAME,USR_EMP_TYPE,USR_LOGIN,USR_EMAIL,USR_STATUS,USR_UDF_RESPONSIBILITY_CODE,
USR_END_DATE,USR_EMP_NO,USR_UDF_BUSINESS_GRP,USR_COUNTRY,USR_UDF_GLOBALUID,USR_MANAGER_KEY,USR_END_DATE,USR_UDF_ORCLSTATUS ,ACT_KEY,USR_UDF_MANAGER_FLAG,USR_LDAP_DN,
USR_LDAP_GUID,USR_FIRST_NAME,USR_LAST_NAME,USR_UPDATE,USR_CREATE,USR_UDF_DISABLED_DATE from usr where USR_UDF_GLOBALUID like '%DUMMY%_%' and usr_status='Active';

select USR_udf_region,USR_UDF_DISABLED_DATE,USR_UDF_EMPLOYEE_SUBTYPE,USR_UDF_BUSINESS_GRP, USR_TIMEZONE, USR_KEY,USR_MIDDLE_NAME,USR_DISPLAY_NAME,USR_EMP_TYPE,USR_LOGIN,USR_EMAIL,USR_STATUS,USR_UDF_RESPONSIBILITY_CODE,
USR_END_DATE,USR_EMP_NO,USR_UDF_GLOBALUID,USR_MANAGER_KEY,USR_END_DATE,USR_UDF_ORCLSTATUS ,ACT_KEY,USR_UDF_MANAGER_FLAG,USR_LDAP_DN,USR_LDAP_GUID,USR_COUNTRY,USR_FIRST_NAME,USR_LAST_NAME
FROM USR WHERE USR_LOGIN like ('%FNAME%')  and usr_Status='Active';

select * from USR where USR_STATUS!='Active' and USR_ROLE_SUMMARY_RISK is null;
select  USR_UDF_REGION,USR_UDF_DISABLED_DATE,USR_UDF_EMPLOYEE_SUBTYPE,USR_UDF_BUSINESS_GRP,USR_COUNTRY, USR_TIMEZONE, USR_KEY,USR_MIDDLE_NAME,USR_DISPLAY_NAME,USR_EMP_TYPE,USR_LOGIN,USR_EMAIL,USR_STATUS,USR_UDF_RESPONSIBILITY_CODE,
USR_END_DATE,USR_EMP_NO,USR_UDF_GLOBALUID,USR_MANAGER_KEY,USR_END_DATE,USR_UDF_ORCLSTATUS ,ACT_KEY,USR_UDF_MANAGER_FLAG,USR_LDAP_DN,USR_LDAP_GUID,USR_FIRST_NAME,USR_LAST_NAME from USR where  USR_UPDATE >= sysdate-14 and USR_UDF_CHANGE_REASON in ('I','C','RH')
and USR_UDF_BUSINESS_GRP != USR_COUNTRY and usr_status='Active';

--update usr set USR_UDF_PREV_EMP_EMAIL='FNAME2.LNAME2@IFLEXSOLUTIONS.COM' , USR_MANAGER_KEY = 504690 where USR_LOGIN in ('FNAME2.LNAME2@ORACLE.COM');
desc usr;


--UPDATE USR SET   USR_UDF_SUPPORTNOTES = USR_UDF_SUPPORTNOTES||'SR#160913-000089_Deleted_',USR_UDF_GLOBALUID = USR_UDF_GLOBALUID||'_Deleted',
USR_EMAIL =USR_EMAIL||'_Deleted',USR_LOGIN =USR_LOGIN||'_Deleted',USR_EMP_NO =USR_EMP_NO||'_Deleted'
,USR_UDF_BUSINESS_GRP=USR_UDF_BUSINESS_GRP||'_Deleted',USR_UPDATE=SYSDATE
where USR_LOGIN in ('I-HUA.X.CHEN@ORACLE.COM');
-- from usr  where usr_key in ('595506');

UPDATE USR SET   USR_MOBILE = null where usr_key =6041;

update USR set USR_MANAGER_KEY = 504690,USR_UDF_PREV_EMP_EMAIL='LNAME18TEST5@INFY.COM',USR_UDF_EMPLOYEE_SUBTYPE=null where USR_KEY = 589025;
--update USR set USR_UDF_DISABLED_DATE= sysdate, USR_MANAGER_KEY = 504690,ACT_KEY=2,usr_status = 'Disabled' where USR_KEY = 7485;
27009;

--update USR set USR_UDF_GLOBALUID = 'DUMMY_GUID',USR_UDF_BUSINESS_GRP='US'  where USR_KEY = 112635;    
  
update USR set ACT_KEY=121, usr_udf_accounts_revoked=1 where USR_KEY = 299515;
--update usr set usr_udf_employee_subtype='CONTRACTOR-NONBILLABLE',usr_udf_responsibility_code='ISS' ,usr_emp_no='C2864',USR_UDF_BUSINESS_GRP='ISS' where usr_key = 81436;
--update usr set usr_emp_type = lower(usr_emp_type) where usr_key = 299515;

select usr_emp_no,usr_login,usr_key,USR_UDF_BUSINESS_GRP,usr_status,usr_emp_type from usr where usr_emp_no in ('877282') and USR_UDF_BUSINESS_GRP in ('US');
SELECT USR_LOGIN,USR_KEY,USR_UDF_RESPONSIBILITY_CODE,USR_STATUS,usr_emp_type FROM USR WHERE USR_MANAGER_KEY IN 
(select USR_MANAGER_KEY from USR where USR_LOGIN like UPPER('ricky.woo@oracle.com')) and usr_status='Active'
;
select * from ud_ssa_p where orc_key in (9805603);

select * from USR where USR_STATUS !='Active';
--update  USR set usr_password='1:ORRTENzZxt+95Fjqr5jlHQ==' where USR_KEY in (504690);


---MANAGER EMAIL
SELECT U1.USR_LOGIN,U1.USR_EMP_NO ,U1.USR_KEY,U1.USR_STATUS,U1.USR_EMP_TYPE,U1.USR_UPDATE,U2.USR_LOGIN AS MANAGER ,U2.USR_STATUS AS MANAGER_STATUS,U2.USR_KEY AS MANAGER_KEY,U2.USR_UPDATE FROM  USR U1, USR U2 
where 
U1.USR_LOGIN in ('PRASHANTH.VUDUTHALA@ORACLE.COM')--emp email--april.huang@oracle.com
--U2.USR_LOGIN in ('HUGO.RODRIGUEZ@ORACLE.COM')--STEPHANIE.SALUTA@ORACLE.COM
--u1.USR_MANAGER_KEY = 378645
 AND u1.USR_MANAGER_KEY =u2.usr_key;
 
 
 update usr set usr_manager_key=26430  where usr_key in (504533);

SELECT U1.USR_LOGIN ,U1.USR_KEY,U1.USR_STATUS,U1.USR_EMP_TYPE,U1.USR_UPDATE,U2.USR_LOGIN AS MANAGER ,U2.USR_STATUS AS MANAGER_STATUS,U2.USR_KEY AS MANAGER_KEY FROM  USR U1, USR U2 
where U1.USR_MANAGER_KEY in (select USR_KEY from USR where USR_LOGIN like UPPER('GLOBAL-LEARNINGSERVICES_WW@ORACLE.COM') )--emp email
 AND u1.USR_MANAGER_KEY =u2.usr_key;

select usr_key,USR_LOGIN from usr where USR_LOGIN like '%KIP.PARENT@ORACLE.COM%';



desc USR;
UPDATE ud_ssa_u SET  ud_ssa_u_BUSINESS_GRP='US' WHERE ORC_KEY =9765924;
SELECT USR_KEY,USR_DISPLAY_NAME,USR_EMP_TYPE,USR_LOGIN,USR_EMAIL,USR_STATUS,USR_UDF_RESPONSIBILITY_CODE,USR_EMP_NO,USR_UDF_GLOBALUID,USR_MANAGER_KEY,USR_END_DATE,USR_UDF_ORCLSTATUS ,USR_UDF_MANAGER_FLAG,USR_LDAP_DN,USR_LDAP_GUID,USR_END_DATE
FROM USR WHERE usr_key='9015';
select distinct USR_EMP_TYPE from USR;
F528F1127CFD6755E040E60A8F7F257C
F592A20B88BE5B48E0404598044B29DD


SELECT usr_global_uid,usr_display_name,usr_emp_type,usr_login,usr_email,usr_status,usr_udf_responsibility_code,usr_emp_no,usr_udf_globaluid,usr_key,usr_manager_key,usr_end_date,usr_udf_orclstatus ,usr_udf_manager_flag,usr_ldap_dn  FROM USR WHERE USR_LOGIN in ( '00011934769634634774599216870092');
103850
update usr set usr_manager_key=null where usr_login ='TOMMY.REECE@ORACLE.COM';
--SELECT * FROM RECON_EVENTS WHERE RE_ENTITY_TYPE='User' AND RE_KEYFIELD = 'ADAF76D111071003E040548C2C7075F4' ORDER BY RE_CREATE ;
update usr set usr_ldap_dn = 'cn=ANIRBAN_BAGCHI,l=apac,dc=oracle,dc=com' where usr_login = 'ANIRBAN.B.BAGCHI@ORACLE.COM';
update usr set usr_end_date=null where usr_key ='78403';

update usr set usr_login = 'ANIRBAN.B.BAGCHI@ORACLE.COM_DELETED', usr_email = 'anirban.b.bagchi@oracle.com_DELETED', usr_status= 'Deleted' where usr_login = 'ANIRBAN.B.BAGCHI@ORACLE.COM';
---------------------ROLE ACCESS POLICY
select ugp.ugp_name ROLE_NAME, pol.pol_name ACCESS_POLICY, ent_display_name ENTITLEMENT,ent_description from pol, poc, ent_list ent, pog, ugp where poc_field_value = ent.ent_code
and pol.pol_key = poc.pol_key and pog.pol_key = pol.pol_key and ugp.ugp_key = pog.ugp_key and 
ugp.ugp_name in  ('Default-OPCSSOProduction-Employee')
;


select ugp.ugp_name ROLE_NAME, pol.pol_name ACCESS_POLICY, ent_display_name ENTITLEMENT
from pol, poc, ent_list ent, pog, ugp where poc_field_value = ent.ent_code and pol.pol_key = poc.pol_key and pog.pol_key = pol.pol_key and ugp.ugp_key = pog.ugp_key 
and ent_display_name like '%CloudEM for PDIT Account%';
--and ent_description like '%PH iProcurement%';

select ugp_name,ugp_key  from ugp where ugp_name like '%Default-OPCSSOProduction-Employee%';
select * from ugp;

select * from pol where pol_key in (2590,2589);

select * from pol where pol_name like '%PDIT%Conf%';

 select ugp.ugp_name from usg, ugp, usr where usg.ugp_key = ugp.ugp_key 
 
 --and ugp.ugp_name='Corp OIM Support Team'
 and usg.usr_key = usr.usr_key and usr.usr_login in ('SARATH.KUMAR.TADEPALLI@ORACLE.COM');
              
              select * from usg ;

--NSIT
select * from ud_nsit_usr order by orc_key desc;


---UD_FUDB_U PGXPAP Database

select * from UD_FUDB_U where request_key in (19664097);
              
-------ORAD-----------------------
ac49733e22ad854086fde0a83f98d3df
ac49733e22ad854086fde0a83f98d3df
           select * from ud_oraduser; 
           update ud_oraduser set ud_oraduser_country='IN' where orc_key=18843472;
           update ud_oraduser set ud_oraduser_UNLOCK=0,ud_oraduser_LOCKOUTTIME=0 where orc_key=18839863;;
              select usr_email, usr_country from usr where usr_email='prashanth.vuduthala@oracle.com';
              update ud_oraduser set ud_oraduser_update_date=sysdate-69,ud_oraduser_notification_cnt=0 where orc_key=18839863;
              update ud_oraduser set ud_oraduser_update_date=sysdate-90, ud_oraduser_notification_cnt=3 where orc_key=18839863;
              
----------------------------------------------------

select * from ud_mmcs_u;
select * from ud_mmcs_p;

----------------

update usr set usr_manager_key=(select usr_key from usr where usr_login='BRYAN.ISAACS@ORACLE.COM') where usr_login='DAN.SWEENEY@ORACLE.COM';

SELECT USR_LOGIN, USR_UDF_OS_UID FROM USR WHERE USR_LOGIN IN ('CHRISANTHA.PERERA@ORACLE.COM', 'TULASIRAM.YELESETTY@ORACLE.COM');
update usr set USR_UDF_OS_UID=724993 WHERE USR_LOGIN IN ('CHRISANTHA.PERERA@ORACLE.COM');

724993

UPDATE USR SET usr_emp_type= 'employee' where usr_key =17420;

UPDATE USR SET USR_END_DATE = USR_START_DATE + 365 WHERE USR_LOGIN IN ('CHRISANTHA.PERERA@ORACLE.COM');
update ud_ssa_u set ud_ssa_u_business_grp = 'US' where orc_key = 10552486;
update usr set usr_emp_type=lower(usr_emp_type) where       usr_login='MAJID.HUSSAIN@ORACLE.COM'; COMMIT;
--update usr set usr_manager_key=(select usr_key from usr where usr_login='SPENCER.LAM@ORACLE.COM') where usr_login='TIANFU.GUAN@ORACLE.COM';
select * from usr where usr_key =63991;
desc usr;
update usr set usr_udf_manager_flag=1 where usr_key=66157;

--update usr set usr_end_date =sysdate+365 where usr_login in ('MARTIN.ZYSNARSKI@ORACLE.COM');

select * from UD_DBAC_U where UD_DBAC_U_ITRES=2878 and lower(UD_DBAC_U_USERNAME) in ('shuupadh','mheggere','visrikan','vvyas');

select * from UD_DBAC_U where request_key in (13699415);
select * from UD_DBAC_R where orc_key in (12729541,12729560,12729489,12729527);

update UD_DBAC_U set UD_DBAC_U_SR_NUMBER=UD_DBAC_U_SR_NUMBER||'SR#ACCOUNT ALREADY EXIST' where orc_key in (16548554);

select * from SVR where SVR_name ='GIT DevOps – Chef Automate';
select * from SVR where SVR_key =13408;
select * from SVR where SVd_key =1194;
select * from obj where OBJ_KEY =990;

select * from SVd where SVd_key =926;

select usr_login,usr_key,USR_UDF_RESPONSIBILITY_CODE,usr_status,usr_emp_type from usr where usr_login in ('PETER.HELD@ORACLE.COM');
select * from osi where orc_key in (13519948) and sch_key in (103375486,103363179);

select * from sch where sch_key in (111757179, 111757465, 111757514, 111757393, 111757732, 111761640);

select * from OTI where sch_key in (103375486,103363179);

select * from sch where sch_key in (112560752, 112561218, 112562332, 112562333, 112562335, 112562336, 112562337, 112575802, 112577717, 112582208, 112584076, 112585528, 112589199, 112598761, 112647626, 112649962, 112649975, 112649976, 112650273, 112650276, 112650253, 112650285, 112650519, 112650521, 112650527, 112650532, 112650542, 112652207, 112652691, 112654593);
select * from osi where  sch_key in (112606671, 112606672, 112608864, 112626305, 112635527, 112635615, 112647527, 112647655, 112649995, 112650545, 112650425, 112650426, 112650484);

select * from sch where sch_status='R' and sch_key in (40149454);

update sch set sch_status='X' where sch_key in (115757603,
115734502,
115733193,
115703516,
115681196,
115656848,
51251719);

update oiu set ost_key = 3734 where oiu_key = 9731730;

------------ESA
select * from ud_esa_usr  where ud_esa_usr_gecos='QI.TANG@ORACLE.COM';
update ud_esa_usr set ud_esa_usr_nsuniqueid='eab11a81-1a2811e9-806dec38-f506eb6c'  where orc_key=17819291;


select * from ud_esa_SVR where orc_key=13265169;

------CSCG

select * from ud_cscg_usr;
select * from ud_ucsa_usr;
desc ud_ucsa_usr;

---------OST STATUS
select * from OIU where ORC_KEY in (8547) ;
SELECT OBJ_KEY  FROM OST WHERE OST_KEY IN(SELECT OST_KEY FROM OIU WHERE ORC_KEY IN (8547)  );
select * from ost where obj_key in (2608);
select * from OST where OST_KEY in (1321);

SELECT OST_KEY,ORC_KEY FROM OIU WHERE ORC_KEY IN () ;
---- STATUS CHANGE ORC
UPDATE OIU SET OST_KEY = (SELECT OST_KEY FROM OST WHERE OST_STATUS ='Revoked' AND OBJ_KEY IN 
(SELECT OBJ_KEY  FROM OST WHERE OST_KEY IN(SELECT OST_KEY FROM OIU WHERE ORC_KEY IN (12914019)  )) ) -- USR account name
WHERE ORC_KEY IN(12914019);
--16411161 saml ANA.GRIGORE@ORACLE.COM
SELECT OST_KEY FROM OST WHERE OST_STATUS ='Provisioning' AND OBJ_KEY IN 
(SELECT OBJ_KEY  FROM OST WHERE OST_KEY IN(SELECT OST_KEY FROM OIU WHERE ORC_KEY IN (14060025)  ));


--update prod_oim.ud_orcc_u set UD_ORCC_U_SUPPORTNOTES=UD_ORCC_U_SUPPORTNOTES||'SR#170706-000134' where orc_key in (11183034, 11183019, 11183040, 11183024, 11183045, 11183015, 11182970, 11183038, 11183033, 11183047, 11183025, 11183046, 11183000, 11182350, 8093326, 11183039, 11183031, 1053635, 11182966, 11183007, 11182979, 11407701, 11183026, 11183041, 11182980, 7024821, 11183027, 11183044, 11182978, 11182993, 11183018, 11182983, 9860820, 10800574, 11183032, 11183030, 7879482, 11182738, 11183020, 7024990, 11183042, 11182971, 11183028, 11182961, 11183017);

SELECT *
FROM OIU,  OST,  USR,  APP_INSTANCE APP
WHERE OIU.APP_INSTANCE_KEY        = APP.APP_INSTANCE_KEY
AND oiu.ost_key                   = ost.ost_key
AND ost.obj_key                   = app.object_key
and OIU.USR_KEY                   = USR.USR_KEY
AND APP.APP_INSTANCE_DISPLAY_NAME IN ('Corporate SSO Account')
and usr.usr_login in ('MUNIRAJU.M@ORACLE.COM');

update ud_orcc_u set UD_ORCC_U_supportnotes = UD_ORCC_U_supportnotes||'SR#160707-000262' where ORC_KEY in (7024540);
Update oiu set ost_key = (select OST_KEY from ost, obj where ost.obj_key = obj.obj_key and  ost_status ='Revoked' and obj_name='JP-IP Phone Management System';) 
where  oiu_key in ( select oiu_key from OIU oiu, USR usr, OST, APP_INSTANCE APP
WHERE oiu.ost_key = ost.ost_key and OIU.USR_KEY = USR.USR_KEY 
and APP.APP_INSTANCE_KEY = OIU.APP_INSTANCE_KEY AND OST_STATUS IN ('Provisioned','Enabled')
and APP_INSTANCE_DISPLAY_NAME  = 'Japan-IP Phone Management System'
and USR_LOGIN in ('CHIFUMI.KASAI@ORACLE.COM')
);

select usr_udf_os_uid from usr where usr_status!='Active' and usr_udf_os_uid is null;

select OST_STATUS  from OST where OST_KEY in(select OST_KEY from OIU where ORC_KEY in (12061008));

Select O.Ost_Status, U.Orc_Key From Ost O, Oiu U Where O.Ost_Key =U.Ost_Key And U.Orc_Key In (10345136);

select * from sch  where sch_key in (103586170);

update sch set sch_status = 'MC' where sch_key in (108157002);
--delete from oti where sch_key in (select sch.sch_key from osi, sch where osi.sch_key = sch.sch_key and sch.sch_status = 'R' and orc_key = 9832720);

 update sch set sch_status = 'C' where sch_status = 'X'  and sch_key in (25235407,
25235521,
25235445,
25235406,
25235405);
 
 select * from sch where orc_key =10345136;
 
 delete from sch where sch_key in (103375486,103363179);;

select SCH.SCH_KEY ,SCH.SCH_STATUS, SCH.* from OSI, SCH where OSI.SCH_KEY = SCH.SCH_KEY and SCH.SCH_STATUS = 'R' and ORC_KEY in (17706844);
select SCH.* ,SCH.SCH_STATUS from OSI, SCH where OSI.SCH_KEY = SCH.SCH_KEY and SCH.SCH_STATUS = 'MC' and ORC_KEY in (11826222, 11826245, 11826312, 11826313, 11826225, 11826224, 11826223, 11820088, 11820141, 11820089, 11817923, 11817942, 11817941, 11817926, 11817925, 11813589, 11807443, 11807031, 11807013, 11806805, 11806786, 11806712, 11806709, 11806713, 11806708, 11806707, 11806716, 11806710, 11806219, 11805024, 11805039, 11805018, 11802908, 11802910, 11802909, 11802982, 11803003, 11802907, 11803019, 11802876, 11802800, 11802706, 11802711, 11802718, 11802719, 11802809, 11802806, 11802803, 11800627, 11800536, 11800659, 11797436, 11797447, 11797546, 11797435, 11790750, 11790646, 11790649, 11790645, 11790746, 11790747, 11790752, 11790522, 11786016, 11786075, 11786117, 11786073, 11786074, 11786072, 11786084, 11786081, 11785869, 11783955, 11784043, 11784023, 11784024, 11783952, 11783949, 11783950, 11783951, 11783948, 11783947, 11782761, 11765717, 11765574, 11765575, 11765573, 11763906, 11764000, 11763997, 11763989, 11763988, 11763990, 11763905, 11762472) order by SCH_PROJ_START, SCH_PROJ_END  ;
select * from OTI where SCH_KEY in (select SCH.SCH_KEY from OSI, SCH where OSI.SCH_KEY = SCH.SCH_KEY and SCH.SCH_STATUS = 'R' and ORC_KEY in (7024488,7024355,7024364,8509682,9868093,11182453,11182458,11182390,11182695,11182575,11182606,11182595,11182662,7024648,11182601,11182385,11182450,11182771,11182819,11182913,11182938,11182537,7024424));

select SCH.SCH_KEY, orc_key,sch_status from OSI, SCH where OSI.SCH_KEY = SCH.SCH_KEY  and  SCH.SCH_KEY  in (104361291,  104431056, 104431300, 104437044, 104447436, 104447492, 104451720, 104451843, 104459951, 104463259, 104464163, 104468035, 104472159, 104472406, 104472558, 104473220, 104473221, 104473354, 104473356,  104474710, 104474506, 104475064, 104475331, 104475571, 104475796, 104475963, 104477398, 104479463, 104479548, 104481816, 104481836, 104492939, 104494633, 104495852, 104495853, 104495854, 104495855, 104495856, 104495884, 104501121, 104502034, 104503659, 104507575, 104510132);

SELECT U1.USR_LOGIN, u2.USR_LOGIN Proxy_user, p.pxd_start_date, p.pxd_end_date, pxd_create, pxd_update FROM PXD p, USR U1, USR U2
WHERE PXD_ORIG_USR_KEY= U1.USR_KEY
AND PXD_PROXY_KEY = U2.USR_KEY
AND U1.USR_LOGIN IN ('SUNIL.HINGORANI@ORACLE.COM');

select usr1.usr_login usr , usr2.usr_login proxy, pxd.* 
FROM pxd pxd , usr usr1 , usr usr2 
WHERE usr1.usr_key = pxd_orig_usr_key 
AND pxd_proxy_key=usr2.usr_key 
and USR1.USR_LOGIN in ('MICHELLE.SEXTON@ORACLE.COM')
--and pxd.pxd_end_date > sysdate
;
----------------------------------policy

SELECT UGP.UGP_NAME ROLE_NAME, POL.POL_NAME ACCESS_POLICY, ENT_DISPLAY_NAME ENTITLEMENT FROM POL, POC, ENT_LIST ENT, POG, UGP WHERE POC_FIELD_VALUE = ENT.ENT_CODE AND 
pol.pol_key = poc.pol_key and pog.pol_key = pol.pol_key and ugp.ugp_key = pog.ugp_key and ugp.ugp_name = 'Default-SSA-App%';

---------------OIM ADMIN ROLE

SELECT * FROM Admin_Role_Membership WHERE user_id =288223;
select * from arm_aud  where user_id =288223;

Insert Into Admin_Role_Membership
select ADMIN_ROLE_MEMBER_ID_SEQ.nextval, 17,USR_KEY,21,1,0
FROM USR WHERE USR_KEY IN (396848); -- usrkey

insert into arm_aud
select ARM_AUD_SEQ.NEXTVAL,MEMBERSHIP_ID,ROLE_ID, USER_ID,SCOPE_ID, include_hierarchy, SYSDATE-1,NULL,'CREATE','xelsysadm' --FROM  admin_role_membership WHERE USER_ID=43794
from admin_role_membership, usr where-- membership_id>=1122-- and membership_id <=1098
USER_ID in (401539)  -- usrkey
and user_id=usr_key
and MEMBERSHIP_ID not in (select MEMBERSHIP_ID from ARM_AUD)
and role_id=17;



select  * from arm_aud where user_id in (201542) and role_id =17;
DELETE admin_role_membership WHERE membership_ID IN (1408);
Insert into arm_aud (ARM_AUD_ID,MEMBERSHIP_ID,ROLE_ID,USER_ID,SCOPE_ID,INCLUDE_HIERARCHY,ARM_AUD_EFF_FROM_DATE,ARM_AUD_EFF_TO_DATE,USR_ACTION,USR_LOGIN) values (ARM_AUD_SEQ.NEXTVAL,1408,17,'201542',21,1,SYSDATE-1,null,'DELETE','xelsysadm');

select * from usr where usr_login = 'ANDREI.SIRBU@ORACLE.COM';

--------SERVER ROLE

select "ROW_WID","NAME","ROLE_NAME","CATEGORY" from emds_bi.w_aps_role_d@emdsap where lower(name) in ('umomv2782.us.oracle.com');

 select * from apsoim.OIM_SERVER_ROLES where 
--server_role_entity_key=432658 and
server_entity_key in ( 533822,533766,533824,533767);

select * from apsoim.OIM_CATEGORY_SERVER_ROLES where
server_role_display_name in ('orion-mt-prod')
--server_description='PDIT EIS Unix/Linux servers'
;

select * from CATALOG where UPPER(ENTITY_DISPLAY_NAME) like UPPER('%umomv278%.us.oracle.com%');

 insert into oim_server_staging  (id, category, action, server_name, role_names, creation_Date, support_notes)
values (oim_server_staging_seq.nextval, 'ESA_GIT_JAPAN', 'UPDATE_ADD','jpdbs062stg.jp.oracle.com','GIT JP System Admin', sysdate, 'SR# 170613-000999' );

  insert into oim_server_staging  (id, category, action, server_name, role_names, creation_Date, support_notes)
values (oim_server_staging_seq.nextval, 'ESA_PDIT', 'UPDATE_ADD','umomv2783.us.oracle.com','orion-mt-test', sysdate, 'SR#170918-000334' );

select * from apsoim.oim_server_staging where role_names like '%omcscbbmoqdcsi%';
select * from apsoim.oim_server_staging_processed where role_names like '%pdit-idm%' order by creation_date desc;

select * from apsoim.oim_server_staging where server_name like '%omcscbbmoqdcsi-pub.opc.oracleoutsourcing.com%';
select * from apsoim.oim_server_staging_processed where server_name like '%uidmv4881%';

select * from oim_server_approvers;

-----DOEN
select * from ud_DOEN_u where upper(ud_DOEN_u_username)='TIM.HOWIE@ORACLE.COM';

--------CSGV
select * from ud_CSGV_usr where request_key in (13432995,12765056);
select * from ud_CSGV_usr order by request_key desc;


-----------GBUA UGBU Dataraker CN Production
select * from UD_GBUA_USR order by orc_key ;
select * from UD_GBUA_USR where request_key=18085392;
-------------------ESA

select * from ud_esa_svr;

-----------PGDT

SELECT * FROM UD_PGDT_U WHERE lower(UD_PGDT_U_name) in (select usr.usr_email
from oiu, ost, usr, app_instance app
where oiu.app_instance_key = app.app_instance_key
and oiu.ost_key = ost.ost_key
and ost.obj_key = app.object_key
and oiu.usr_key = usr.usr_key
and OST.OST_STATUS in ('Provisioned','Enabled','Disabled')
and usr.usr_login in ('THARUN.IMMAREDDY@ORACLE.COM', 'MANOJ.PECHETTI@ORACLE.COM', 'HARIKRISHNA.DANDU@ORACLE.COM', 'NEHA.DHAWAN@ORACLE.COM', 'HIMANSHU.Y.GUPTA@ORACLE.COM', 'PRATIK.G.GUPTA@ORACLE.COM', 'MANISH.J.JHA@ORACLE.COM', 'MANI.K.KANNAN@ORACLE.COM', 'VENUGOPAL.KUNAM@ORACLE.COM', 'DEEPTHI.NADIPALLY@ORACLE.COM', 'SUBRAMANYAM.NARAM.REDDY@ORACLE.COM', 'AMAR.NELLORI@ORACLE.COM', 'VENKATA.UDAYKUMAR.NISTALA@ORACLE.COM', 'BISWARANJAN.PATRA@ORACLE.COM', 'RAGHAVENDAR.PINNINTY@ORACLE.COM', 'PRAKASH.REDDY.POLIREDDY@ORACLE.COM', 'JAVVAJI.RAVI@ORACLE.COM', 'SANDEEP.X.VIDIYALA@ORACLE.COM', 'ANCY.ANTONY@ORACLE.COM', 'PHANI.KRISHNA.A@ORACLE.COM', 'K.BHASKAR.REDDY@ORACLE.COM', 'SUBIN.BALAN@ORACLE.COM', 'NAGABABU.BATTULA@ORACLE.COM', 'SRINIVASA.BHOGAVALLI@ORACLE.COM', 'SRINIVASULU.BUSSA@ORACLE.COM', 'NAVEEN.CHALLA@ORACLE.COM', 'SANDEEP.CHANDRAMOHAN@ORACLE.COM', 'VU.H.DANG@ORACLE.COM', 'PONNAGANTI.DURGADHAR@ORACLE.COM', 'KIRAN.GALI@ORACLE.COM', 'RAGHU.GUDLA@ORACLE.COM', 'NAVEED.IFTIKHAR@ORACLE.COM', 'ARAVINDH.RAJKUMAR.JOTHI.SUBRA@ORACLE.COM', 'PRADEEP.KAPUR@ORACLE.COM', 'SRIKANTH.KASAL@ORACLE.COM', 'BETTY.LEE@ORACLE.COM', 'CHRIS.LEUNG@ORACLE.COM', 'RAMESH.MACHARLA@ORACLE.COM', 'VAMSHI.MADISHETTY@ORACLE.COM', 'UMAMAHESWARA.RAO.MOPURU@ORACLE.COM', 'NAGARAJU.NANDAGIRI@ORACLE.COM', 'INIGO.PRINCE.NAVRAJ@ORACLE.COM', 'DHIREN.X.PATEL@ORACLE.COM', 'MUNDLA.PENCHAL.REDDY@ORACLE.COM', 'DEVIPRIYA.PONNURANGAM@ORACLE.COM', 'TEJASWINI.POTHURAJU@ORACLE.COM', 'KAVITHA.PRAKASH@ORACLE.COM', 'RAY.SUVENDU@ORACLE.COM', 'SUMAN.K.REDDY@ORACLE.COM', 'DHARMENDRA.ROSHAN@ORACLE.COM', 'MADHU.THOTLAGIRI@ORACLE.COM', 'LAKSHMANA.UNDAVALLI@ORACLE.COM', 'SATISH.VIPPALA@ORACLE.COM', 'SAIROHIT.PULI@ORACLE.COM', 'NAGAPHANINDRA.SHAKAMURI@ORACLE.COM', 'NEELAPRASAD.A.S@ORACLE.COM', 'HARI.ANANDH@ORACLE.COM', 'VIPIN.AZAD@ORACLE.COM', 'MADHUSRI.BHATTACHARYA@ORACLE.COM', 'NAVEEN.CHAURASIA@ORACLE.COM', 'KRISH.CHOPPARUPU@ORACLE.COM', 'AKHILESH.C.GUPTA@ORACLE.COM', 'GHANSHYAM.GUPTA@ORACLE.COM', 'ANAND.HANUMANTHARAYAPPA@ORACLE.COM', 'SRINIVAS.NALLUR@ORACLE.COM', 'SREENIVASULU.PALLAPU@ORACLE.COM', 'MARK.SHADLEY@ORACLE.COM', 'CHARAN.ALLURI@ORACLE.COM', 'FARHA.ARSHI.SYEDA@ORACLE.COM', 'NANCY.X.TRUONG@ORACLE.COM', 'PREETHA.VADAKKEKALAM@ORACLE.COM', 'AMARNATH.G.ACHYUTHA@ORACLE.COM', 'WILLIAM.BAKER@ORACLE.COM', 'JATINKUMAR.BHATT@ORACLE.COM', 'KETAN.CHIKHALIKAR@ORACLE.COM', 'SANGRAM.K.DASH@ORACLE.COM', 'MITHUN.GADIYAR@ORACLE.COM', 'ANISH.GHOSH@ORACLE.COM', 'PUNEET.K.KHANNA@ORACLE.COM', 'ARAVIND.K.KONDA@ORACLE.COM', 'SUDHAKAR.KOTHA@ORACLE.COM', 'SAURAV.SK.KUMAR@ORACLE.COM', 'VIKRAM.M@ORACLE.COM', 'ELAN.MANIVANNAN@ORACLE.COM', 'MARK.F.MURPHY@ORACLE.COM', 'ALAN.NAKAYU@ORACLE.COM', 'SREEDHAR.PUPPALI@ORACLE.COM', 'PAUL.PYRYEMYBIDA@ORACLE.COM', 'LAYNE.SCHNEIDER@ORACLE.COM', 'ABHISHEK.W.SINGH@ORACLE.COM', 'BHARAT.SINGH@ORACLE.COM', 'HARENDRA.S.SINGH@ORACLE.COM', 'SACHIN.SIRSI@ORACLE.COM', 'VENKATESH.T@ORACLE.COM', 'SHONY.THOMAS@ORACLE.COM', 'ANANTHA.VARATHARAJAN@ORACLE.COM', 'RICHA.VARMA@ORACLE.COM', 'ROHIT.WADHERA@ORACLE.COM', 'HITESH.MISHRA@ORACLE.COM', 'JOHN.SAWA@ORACLE.COM', 'SUDHEER.ALAPATI@ORACLE.COM', 'ALTAFF.HUSSAIN@ORACLE.COM', 'PHANI.YANAMANDRA@ORACLE.COM', 'ROHAN.ATHANIKAR@ORACLE.COM', 'SREENATH.BELLARY@ORACLE.COM', 'SANATH.KUMAR.DATTATREYA@ORACLE.COM', 'PANKAJ.D.DWIVEDI@ORACLE.COM', 'KAPILDEV.GANGRADE@ORACLE.COM', 'DEEPAK.GOPALA@ORACLE.COM', 'MOHAN.HOSALAIAH@ORACLE.COM', 'LOHITHESHA.JAYANAIK@ORACLE.COM', 'INDERJIT.MAKKAR@ORACLE.COM', 'RAJU.P.PUJAR@ORACLE.COM', 'POLSANI.RAO@ORACLE.COM', 'GANESH.KUMAR.SEETHARAMAN@ORACLE.COM', 'RAVI.S.SHARMA@ORACLE.COM', 'NADEEM.TAJ@ORACLE.COM', 'PRASHANT.VAJARKAR@ORACLE.COM', 'AMARNATH.VANGAVALLU@ORACLE.COM', 'SRUTHI.ANKIREDDYPALLI@ORACLE.COM', 'MADHU.DODDATHAMMA.SHETTY@ORACLE.COM', 'NAVEEN.DUVVURI@ORACLE.COM', 'ARIEF.MOHAMMED@ORACLE.COM', 'MURALI.NAGIREDDY@ORACLE.COM', 'KARTHIK.DEVARAJU@ORACLE.COM', 'DEEPALAKSHMI.SURESHKUMAR@ORACLE.COM', 'RAJESH.VANGOORI@ORACLE.COM', 'PRASAD.VUDATHU@ORACLE.COM', 'SANJAY.ADHIKARY@ORACLE.COM', 'SUBBA.ARETI@ORACLE.COM', 'RAMESH.BOKKA@ORACLE.COM', 'TOM.CHOTA@ORACLE.COM', 'DINESH.SINGH.CHUNDAWAT@ORACLE.COM', 'ROBERT.CORDINGLEY@ORACLE.COM', 'VISHAL.DHIR@ORACLE.COM', 'PRAKASARAO.ERANKI@ORACLE.COM', 'KARTHICK.PILLAI@ORACLE.COM', 'RICH.HEADRICK.II@ORACLE.COM', 'MUHIL.JAYARAMAN@ORACLE.COM', 'DILLIGANESH.KALAICHELVAN@ORACLE.COM', 'JITENDRA.K.KUMAR@ORACLE.COM', 'DHANANJAYA.MACHINA@ORACLE.COM', 'VASU.MADIREDDI@ORACLE.COM', 'RAMU.MANCHALA@ORACLE.COM', 'PRITINANDA.MOHAPATRA@ORACLE.COM', 'RAJENDRA.NANDI@ORACLE.COM', 'JOSEPH.NIDHIRY@ORACLE.COM', 'NAVEEN.KUMAR.OJHA@ORACLE.COM', 'PRADEEP.ROUTRA@ORACLE.COM', 'RAJA.PALANICHAMY@ORACLE.COM', 'PANKAJKUMAR.N.PANCHOLI@ORACLE.COM', 'DEEPTHI.PULLA@ORACLE.COM', 'BHARADWAJ.P.PUTTASWAMY@ORACLE.COM', 'HITHIN.RAMACHANDRAN@ORACLE.COM', 'MOHAN.X.RAO@ORACLE.COM', 'VEERESH.SHIVAMADAPPA@ORACLE.COM', 'RAKESH.SINDHU@ORACLE.COM', 'TEJASWI.THIMMAIAH@ORACLE.COM', 'BALAJI.VALLAMKONDU@ORACLE.COM', 'NEELAVATHI.VELUSAMY@ORACLE.COM', 'SRINIVASULU.YERRAMREDDY@ORACLE.COM', 'KIRAN.KUMAR.NUTHALAPATI@ORACLE.COM', 'ARJITA.ADHIKARY@ORACLE.COM', 'SMITA.ADHIKARY@ORACLE.COM', 'DENNIS.BALARAJU@ORACLE.COM', 'NAGA.RAJ@ORACLE.COM', 'M.MOHIT.G.GUPTA@ORACLE.COM', 'BANDHAVYA.KOSARAJU@ORACLE.COM', 'SHAMBHU.KUMAR@ORACLE.COM', 'NAWAL.KUNDAN@ORACLE.COM', 'RAMAKRISHNAREDDY.LAKKADI@ORACLE.COM', 'HARIKA.MALKAPURAM@ORACLE.COM', 'ARUN.A.MANOHARAN@ORACLE.COM', 'NIDHI.P.PANDEY@ORACLE.COM', 'SHASHI.R.RANJAN@ORACLE.COM', 'PRIYA.S.SAXENA@ORACLE.COM', 'ANIL.K.SINGH@ORACLE.COM', 'JAYABHARATHREDDY.VELUGOTI@ORACLE.COM', 'HARI.ATHREYA@ORACLE.COM', 'TIM.HAY@ORACLE.COM', 'PETER.IDEH@ORACLE.COM', 'NAVEEN.KANUMURI@ORACLE.COM', 'SRAVANTHI.KANTEPALLI@ORACLE.COM', 'PREM.KUMAR.KUJALA@ORACLE.COM', 'RANJAN.K.KUMAR@ORACLE.COM', 'ANUPAMA.MADHAVAPEDDI@ORACLE.COM', 'CHANDRIKA.MANCHELLA@ORACLE.COM', 'MARK.C.MCDONALD@ORACLE.COM', 'SAINADH.NIMMAGADDA@ORACLE.COM', 'NATARAJAN.SURESH@ORACLE.COM', 'SUMAN.PANDEY@ORACLE.COM', 'SHIV.RAMASWAMY@ORACLE.COM', 'SRIRAM.SRIGIRIRASU@ORACLE.COM', 'MICHAEL.TITUS@ORACLE.COM', 'JAIKUMAR.VERMA@ORACLE.COM', 'HUGH.ZHENG@ORACLE.COM', 'SARAH.CHEN@ORACLE.COM', 'ALETTE.GARCIA@ORACLE.COM', 'MICHAEL.MA@ORACLE.COM', 'ROBERTO.RO.MARTINEZ@ORACLE.COM', 'ERNESTO.OLIVEROS@ORACLE.COM', 'STEVE.RENWICK@ORACLE.COM', 'JOSE.VILLASENOR@ORACLE.COM', 'AARON.YANEZ@ORACLE.COM', 'SAMPATH.KADAMBADI@ORACLE.COM', 'THOMAS.BABU.KOSHY@ORACLE.COM', 'NIKHIL.PONNAMANENI@ORACLE.COM', 'ASHWIN.REDDY@ORACLE.COM', 'HARI.SURA@ORACLE.COM', 'NIKHIL.CHAMALA@ORACLE.COM', 'PRASAD.DASARI@ORACLE.COM', 'SATHYANARAYANA.VENKATACHALA@ORACLE.COM', 'SAURABH.DHAR@ORACLE.COM', 'ANJANEYULU.YERRAMSETTY@ORACLE.COM', 'TAUSEEF.A.AHMED@ORACLE.COM', 'NAVEEN.BASRA@ORACLE.COM', 'KUMAR.CHEMALAMARRI@ORACLE.COM', 'RAJESH.LAVUDI@ORACLE.COM', 'THIMMAPPA.NARALA@ORACLE.COM', 'BAPI.RAJU.VINNAKOTA@ORACLE.COM', 'ANJANI.DATTI@ORACLE.COM', 'VIKAS.KALLALATHIL.KONNATH@ORACLE.COM', 'VAMSHIKRISHNA.KATLA@ORACLE.COM', 'MUTHU.KUMAR@ORACLE.COM', 'AVADHUT.MULE@ORACLE.COM', 'RAJYALAXMI.P.PABBA@ORACLE.COM', 'CHAYANIKA.PANDEY@ORACLE.COM', 'NILESH.PATEL@ORACLE.COM', 'PRASANTA.ROY@ORACLE.COM', 'MAYANK.Z.SHARMA@ORACLE.COM', 'SRIRAM.VENKATARAMAN@ORACLE.COM', 'JAY.AKBARNEJAD@ORACLE.COM', 'RAJAMAHENDER.PARTHAM@ORACLE.COM', 'DEEPAK.SURANA@ORACLE.COM', 'HARSHITHA.VELAGALETI@ORACLE.COM', 'NARENDRA.AMRUTHALURI@ORACLE.COM', 'SIDDHARTH.M.DAVE@ORACLE.COM', 'LINGESH.KURMONI@ORACLE.COM', 'HARISH.RAJULAPATI@ORACLE.COM', 'MAHESH.BADAMPUDI@ORACLE.COM', 'SHRAVANKUMAR.KOTA@ORACLE.COM', 'PRATAP.KUKKADAPU@ORACLE.COM', 'DEVI.PALIVELA@ORACLE.COM', 'KRANTHI.KUMAR.REDDY.PANJUGALA@ORACLE.COM', 'ALVB.SATISH@ORACLE.COM', 'BHARGAVA.RAMA.SENAPATHI@ORACLE.COM', 'ABHIJEET.SINGH@ORACLE.COM', 'SUBRAT.TRIPATHY@ORACLE.COM', 'VANAMALA.VENUGOPAL@ORACLE.COM', 'WOLE.OLADIPO@ORACLE.COM', 'SUDHIR.K.SRIVASTAVA@ORACLE.COM', 'SARATH.KUMAR.TADEPALLI@ORACLE.COM', 'SARITHA.YEDDULA@ORACLE.COM', 'NARSINGSHAH.ARSID@ORACLE.COM', 'NARAYANA.SWAMY.BARMA@ORACLE.COM', 'CHRISTOPHER.MASIKATI@ORACLE.COM', 'SATYAVAGEESWARAN.RANGASWAMI@ORACLE.COM', 'PRIYANKA.SONI@ORACLE.COM', 'RAMAKRISHNA.YALAMANCHILI@ORACLE.COM', 'SRICHANDRA.ADIANDHRA@ORACLE.COM', 'SEKHAR.BIJJALA@ORACLE.COM', 'HONGWEI.DAI@ORACLE.COM', 'DEBA.DAS@ORACLE.COM', 'KEVIN.GIROUX@ORACLE.COM', 'HARMAN.JUDGE@ORACLE.COM', 'EUGENE.KO@ORACLE.COM', 'DEVANATHA.REDDY.KONA@ORACLE.COM', 'JAKE.MULLINS@ORACLE.COM', 'VIKRAM.BANU.UPADHYAYA@ORACLE.COM', 'XUE-YANG.YAN@ORACLE.COM', 'SURESH.B.GODI@ORACLE.COM', 'SUNEEL.K.KOLLURU@ORACLE.COM', 'BALUPRASAD.BADAVATH@ORACLE.COM', 'VAISHNAVI.BAKKEMMAGARI@ORACLE.COM', 'CHIRANJEEVI.CHUNDURU@ORACLE.COM', 'PARTHASARATHI.DS@ORACLE.COM', 'SATAVAHANA.VARMA.IMMALRAJU@ORACLE.COM', 'CHANDRA.SEKHAR.KOLLA@ORACLE.COM', 'MOHANSUNDAR.MAVILLAPALLI@ORACLE.COM', 'SUSHMA.PATHURI@ORACLE.COM', 'PAVAN.BOINPALLI@ORACLE.COM', 'DAVID.KAYAL@ORACLE.COM', 'SANDEEP.T.THOTA@ORACLE.COM', 'AARTI.MITTAL@ORACLE.COM', 'UDAYA.SAMUDRALA@ORACLE.COM', 'RISHI.K.SRIVASTAVA@ORACLE.COM', 'ABHIJIT.APPALABHATLA@ORACLE.COM', 'BINAYA.BASUKALA@ORACLE.COM', 'SHAILENDRA.BORO@ORACLE.COM', 'SUNIL.FERNANDES@ORACLE.COM', 'SRINIVAS.JONNADULA@ORACLE.COM', 'SREEJISH.KUMAR@ORACLE.COM', 'RAMESH.NUVVULA@ORACLE.COM', 'IRANNA.SULIKAL@ORACLE.COM', 'THIRUNARAYANA.CHAKRAVARTHI@ORACLE.COM', 'VINAY.X.GUPTA@ORACLE.COM', 'ANIL.A.KUMAR@ORACLE.COM', 'AMIT.D.DAS@ORACLE.COM ', 'RAJAT.SOMANI@ORACLE.COM', 'RANJITH.BALAN@ORACLE.COM', 'MATHEW.ABRAHAM@ORACLE.COM', 'DANNY.EDWIN@ORACLE.COM', 'JOY.CHAKRABORTY@ORACLE.COM', 'ADI.KONATHALA@ORACLE.COM', 'GOPALAKRISHNA.GATTUPALLI@ORACLE.COM', 'VENKATASIVAKRISHNA.AKELLA@ORACLE.COM', 'RAJESWARARAO.AYYALASOMAYAJULA@ORACLE.COM', 'KHASIM.S.SHAIK@ORACLE.COM', 'BISWABRATA.BHAKTA@ORACLE.COM', 'CHETHAN.MARIYAPPA@ORACLE.COM', 'JIJA.FRANCIS@ORACLE.COM', 'KAUSTAV.KARMAKAR@ORACLE.COM', 'SUDHARSAN.CHENNAKESAVAN@ORACLE.COM', 'DAVID.LAU@ORACLE.COM', 'LOKESH.X.SHRIVASTAVA@ORACLE.COM', 'DEBAJYOTI.BANERJEE@ORACLE.COM', 'SWETHA.KUNAPULI@ORACLE.COM', 'RAJ.P.SINGH@ORACLE.COM', 'ZHONGYUN.SUN@ORACLE.COM', 'QING.LI@ORACLE.COM', 'VIGNESH.KS@ORACLE.COM', 'ADLIT.DSOUZA@ORACLE.COM', 'SUMAN.ROUT@ORACLE.COM', 'PAVITHRA.KARANTH@ORACLE.COM', 'AMIT.AM.GHOSH@ORACLE.COM', 'ADYASHA.BISWAL@ORACLE.COM', 'RONALD.MENDOZA@ORACLE.COM', 'MOHITH.NARRA@ORACLE.COM', 'SANTHOSH.B@ORACLE.COM', 'KARTHICK.SUBASH@ORACLE.COM', 'SRINIVASARAO.DAMA@ORACLE.COM', 'SREENIVASA.GADDAM@ORACLE.COM', 'PADMANABAN.GANESAN@ORACLE.COM', 'BIKASH.GIRI@ORACLE.COM', 'ASHUTOSH.AS.GUPTA@ORACLE.COM', 'KRISHNA.MANGAL@ORACLE.COM', 'RISHI.NAYAK@ORACLE.COM', 'BIMAL.MADAPPATTIL@ORACLE.COM', 'GANGIREDDY.YARNAGU@ORACLE.COM', 'GANESH.KOPPINEEDI@ORACLE.COM', 'SATYA.YADAGANI@ORACLE.COM', 'DAVE.DARRALL@ORACLE.COM', 'SREEHARI.DUBAKKA@ORACLE.COM', 'NAGANJANEYA.KOPPINEEDI@ORACLE.COM', 'MANOHAR.KUMAR@ORACLE.COM', 'BOLLOJU.MANOHAR@ORACLE.COM', 'SHIVANARENDRA.NUKALA@ORACLE.COM', 'PRAMILA.RAJ@ORACLE.COM', 'NUWAN.RAJAPAKSE@ORACLE.COM', 'UDAY.KUMAR.RAYABARAPU@ORACLE.COM', 'DEREK.SYMINGTON@ORACLE.COM', 'NOEL.DUPLOOY@ORACLE.COM', 'PETER.JESURAJ@ORACLE.COM', 'CHALAPATHI.MALLADI@ORACLE.COM', 'YOGESH.NUNE@ORACLE.COM', 'HEMESH.PATEL@ORACLE.COM', 'PRAVEEN.S.SHARMA@ORACLE.COM', 'BOB.STOCKWELL@ORACLE.COM', 'AKSHAY.A.KUMAR@ORACLE.COM', 'SUBHASH.MY@ORACLE.COM', 'KARTHIK.RAJENDRA@ORACLE.COM', 'RAMESH.GUNNAM@ORACLE.COM', 'AKSHITH.PK@ORACLE.COM', 'PREM.RAJKUMAR@ORACLE.COM', 'VINAYAK.UPADHYA@ORACLE.COM', 'DURGASIMHAREDDY.BUCHIREDDY@ORACLE.COM', 'ABHISHEK.R.ROSHAN@ORACLE.COM', 'ASHISH.SAHOO@ORACLE.COM', 'DEEPAK.SHIVANANDAM@ORACLE.COM', 'MOHAMMAD.ASIF.ANSARI@ORACLE.COM', 'VENKATA.SATHYA.HITESH.BADAM@ORACLE.COM', 'S.S.CH.PRADEEP.KUMAR.BANDARU@ORACLE.COM', 'BHAWNA.BHARTI.BHALLA@ORACLE.COM', 'VISMITHA.GANESH@ORACLE.COM', 'VIJAY.KUMAR.GOPI.REDDY@ORACLE.COM', 'AKANKSHA.MAILAK@ORACLE.COM', 'ARJUN.GOUD.NELLIKONDA@ORACLE.COM', 'PRAKASH.SARAVANAN@ORACLE.COM', 'SARITHA.TARAPATLA@ORACLE.COM', 'AMR.H.IBRAHIM@ORACLE.COM', 'ARPIT.VARMA@ORACLE.COM', 'IMRAN.MAHMOOD@ORACLE.COM', 'INDER.BEDI@ORACLE.COM', 'JIRI.HROMADKA@ORACLE.COM', 'JITENDAR.AIRNENI@ORACLE.COM', 'MAHENDER.REDDY.METTU@ORACLE.COM', 'NIVESH.NAVALE@ORACLE.COM', 'PAVAN.KOTHAPALLI@ORACLE.COM', 'PAVAN.KUMARC@ORACLE.COM', 'ARUNKUMAR.PINDIPROLI@ORACLE.COM', 'PRAGYA.DUBEY@ORACLE.COM', 'RANJIT.RS.SINGH@ORACLE.COM', 'SANDEEP.VENKATACHALAIAH@ORACLE.COM', 'SARAVANA.RAMASAMY@ORACLE.COM', 'SEETARAM.CHILUKURI@ORACLE.COM', 'SRAWAN.PABBA@ORACLE.COM', 'SREELAKSHMI.NAIR@ORACLE.COM', 'SUDHARSANA.YANNAM@ORACLE.COM', 'VENKAT.SAMBASIVAM@ORACLE.COM', 'VENKATESH.VADDEMPUDI@ORACLE.COM', 'VIKAS.TRIPURANENI@ORACLE.COM', 'ZORAN.PROLE@ORACLE.COM', 'ABDUL.HAFEEZ@ORACLE.COM', 'ALEJANDRA.VELAZQUEZ@ORACLE.COM', 'AMITH.MANJUNATH@ORACLE.COM', 'ANAND.KAMMAR@ORACLE.COM', 'ANANTHA.J@ORACLE.COM', 'ARJUN.J@ORACLE.COM', 'BHARATH.Y.R@ORACLE.COM', 'BHASKAR.YETIGADDA@ORACLE.COM', 'CARMEN.ZAVALA@ORACLE.COM', 'DAN.TAN@ORACLE.COM', 'DEEPAK.AB.KUMAR@ORACLE.COM', 'EMMANUEL.MURILLO@ORACLE.COM', 'GIREESHA.K.C@ORACLE.COM', 'GOWTHAM.RAMESH@ORACLE.COM', 'IRVIN.GARCIA@ORACLE.COM', 'IVAN.CHAIDEZ@ORACLE.COM', 'JESUS.G.GONZALEZ@ORACLE.COM', 'KARTHIK.KK.KRISHNAMURTHY@ORACLE.COM', 'KIRAN.BG@ORACLE.COM', 'NISCHINTH.RAMAMURTHY@ORACLE.COM', 'NISHITH.BANTWAL@ORACLE.COM', 'POOJITHA.M.M@ORACLE.COM', 'PRAJOTH.PAI@ORACLE.COM', 'SACHIN.SHIDDANAGOUDAR@ORACLE.COM', 'SUJITH.KV@ORACLE.COM', 'VIKAS.KAMAT@ORACLE.COM', 'VINITA.KASHYAP@ORACLE.COM', 'YASHWANTH.Y.KUMAR@ORACLE.COM')
and app.app_instance_display_name = 'oracle.pagerduty.com');

select usr.usr_email
from oiu, ost, usr, app_instance app
where oiu.app_instance_key = app.app_instance_key
and oiu.ost_key = ost.ost_key
and ost.obj_key = app.object_key
and oiu.usr_key = usr.usr_key
and OST.OST_STATUS in ('Provisioned','Enabled','Disabled')
and usr.usr_login in ('THARUN.IMMAREDDY@ORACLE.COM', 'MANOJ.PECHETTI@ORACLE.COM', 'HARIKRISHNA.DANDU@ORACLE.COM', 'NEHA.DHAWAN@ORACLE.COM', 'HIMANSHU.Y.GUPTA@ORACLE.COM', 'PRATIK.G.GUPTA@ORACLE.COM', 'MANISH.J.JHA@ORACLE.COM', 'MANI.K.KANNAN@ORACLE.COM', 'VENUGOPAL.KUNAM@ORACLE.COM', 'DEEPTHI.NADIPALLY@ORACLE.COM', 'SUBRAMANYAM.NARAM.REDDY@ORACLE.COM', 'AMAR.NELLORI@ORACLE.COM', 'VENKATA.UDAYKUMAR.NISTALA@ORACLE.COM', 'BISWARANJAN.PATRA@ORACLE.COM', 'RAGHAVENDAR.PINNINTY@ORACLE.COM', 'PRAKASH.REDDY.POLIREDDY@ORACLE.COM', 'JAVVAJI.RAVI@ORACLE.COM', 'SANDEEP.X.VIDIYALA@ORACLE.COM', 'ANCY.ANTONY@ORACLE.COM', 'PHANI.KRISHNA.A@ORACLE.COM', 'K.BHASKAR.REDDY@ORACLE.COM', 'SUBIN.BALAN@ORACLE.COM', 'NAGABABU.BATTULA@ORACLE.COM', 'SRINIVASA.BHOGAVALLI@ORACLE.COM', 'SRINIVASULU.BUSSA@ORACLE.COM', 'NAVEEN.CHALLA@ORACLE.COM', 'SANDEEP.CHANDRAMOHAN@ORACLE.COM', 'VU.H.DANG@ORACLE.COM', 'PONNAGANTI.DURGADHAR@ORACLE.COM', 'KIRAN.GALI@ORACLE.COM', 'RAGHU.GUDLA@ORACLE.COM', 'NAVEED.IFTIKHAR@ORACLE.COM', 'ARAVINDH.RAJKUMAR.JOTHI.SUBRA@ORACLE.COM', 'PRADEEP.KAPUR@ORACLE.COM', 'SRIKANTH.KASAL@ORACLE.COM', 'BETTY.LEE@ORACLE.COM', 'CHRIS.LEUNG@ORACLE.COM', 'RAMESH.MACHARLA@ORACLE.COM', 'VAMSHI.MADISHETTY@ORACLE.COM', 'UMAMAHESWARA.RAO.MOPURU@ORACLE.COM', 'NAGARAJU.NANDAGIRI@ORACLE.COM', 'INIGO.PRINCE.NAVRAJ@ORACLE.COM', 'DHIREN.X.PATEL@ORACLE.COM', 'MUNDLA.PENCHAL.REDDY@ORACLE.COM', 'DEVIPRIYA.PONNURANGAM@ORACLE.COM', 'TEJASWINI.POTHURAJU@ORACLE.COM', 'KAVITHA.PRAKASH@ORACLE.COM', 'RAY.SUVENDU@ORACLE.COM', 'SUMAN.K.REDDY@ORACLE.COM', 'DHARMENDRA.ROSHAN@ORACLE.COM', 'MADHU.THOTLAGIRI@ORACLE.COM', 'LAKSHMANA.UNDAVALLI@ORACLE.COM', 'SATISH.VIPPALA@ORACLE.COM', 'SAIROHIT.PULI@ORACLE.COM', 'NAGAPHANINDRA.SHAKAMURI@ORACLE.COM', 'NEELAPRASAD.A.S@ORACLE.COM', 'HARI.ANANDH@ORACLE.COM', 'VIPIN.AZAD@ORACLE.COM', 'MADHUSRI.BHATTACHARYA@ORACLE.COM', 'NAVEEN.CHAURASIA@ORACLE.COM', 'KRISH.CHOPPARUPU@ORACLE.COM', 'AKHILESH.C.GUPTA@ORACLE.COM', 'GHANSHYAM.GUPTA@ORACLE.COM', 'ANAND.HANUMANTHARAYAPPA@ORACLE.COM', 'SRINIVAS.NALLUR@ORACLE.COM', 'SREENIVASULU.PALLAPU@ORACLE.COM', 'MARK.SHADLEY@ORACLE.COM', 'CHARAN.ALLURI@ORACLE.COM', 'FARHA.ARSHI.SYEDA@ORACLE.COM', 'NANCY.X.TRUONG@ORACLE.COM', 'PREETHA.VADAKKEKALAM@ORACLE.COM', 'AMARNATH.G.ACHYUTHA@ORACLE.COM', 'WILLIAM.BAKER@ORACLE.COM', 'JATINKUMAR.BHATT@ORACLE.COM', 'KETAN.CHIKHALIKAR@ORACLE.COM', 'SANGRAM.K.DASH@ORACLE.COM', 'MITHUN.GADIYAR@ORACLE.COM', 'ANISH.GHOSH@ORACLE.COM', 'PUNEET.K.KHANNA@ORACLE.COM', 'ARAVIND.K.KONDA@ORACLE.COM', 'SUDHAKAR.KOTHA@ORACLE.COM', 'SAURAV.SK.KUMAR@ORACLE.COM', 'VIKRAM.M@ORACLE.COM', 'ELAN.MANIVANNAN@ORACLE.COM', 'MARK.F.MURPHY@ORACLE.COM', 'ALAN.NAKAYU@ORACLE.COM', 'SREEDHAR.PUPPALI@ORACLE.COM', 'PAUL.PYRYEMYBIDA@ORACLE.COM', 'LAYNE.SCHNEIDER@ORACLE.COM', 'ABHISHEK.W.SINGH@ORACLE.COM', 'BHARAT.SINGH@ORACLE.COM', 'HARENDRA.S.SINGH@ORACLE.COM', 'SACHIN.SIRSI@ORACLE.COM', 'VENKATESH.T@ORACLE.COM', 'SHONY.THOMAS@ORACLE.COM', 'ANANTHA.VARATHARAJAN@ORACLE.COM', 'RICHA.VARMA@ORACLE.COM', 'ROHIT.WADHERA@ORACLE.COM', 'HITESH.MISHRA@ORACLE.COM', 'JOHN.SAWA@ORACLE.COM', 'SUDHEER.ALAPATI@ORACLE.COM', 'ALTAFF.HUSSAIN@ORACLE.COM', 'PHANI.YANAMANDRA@ORACLE.COM', 'ROHAN.ATHANIKAR@ORACLE.COM', 'SREENATH.BELLARY@ORACLE.COM', 'SANATH.KUMAR.DATTATREYA@ORACLE.COM', 'PANKAJ.D.DWIVEDI@ORACLE.COM', 'KAPILDEV.GANGRADE@ORACLE.COM', 'DEEPAK.GOPALA@ORACLE.COM', 'MOHAN.HOSALAIAH@ORACLE.COM', 'LOHITHESHA.JAYANAIK@ORACLE.COM', 'INDERJIT.MAKKAR@ORACLE.COM', 'RAJU.P.PUJAR@ORACLE.COM', 'POLSANI.RAO@ORACLE.COM', 'GANESH.KUMAR.SEETHARAMAN@ORACLE.COM', 'RAVI.S.SHARMA@ORACLE.COM', 'NADEEM.TAJ@ORACLE.COM', 'PRASHANT.VAJARKAR@ORACLE.COM', 'AMARNATH.VANGAVALLU@ORACLE.COM', 'SRUTHI.ANKIREDDYPALLI@ORACLE.COM', 'MADHU.DODDATHAMMA.SHETTY@ORACLE.COM', 'NAVEEN.DUVVURI@ORACLE.COM', 'ARIEF.MOHAMMED@ORACLE.COM', 'MURALI.NAGIREDDY@ORACLE.COM', 'KARTHIK.DEVARAJU@ORACLE.COM', 'DEEPALAKSHMI.SURESHKUMAR@ORACLE.COM', 'RAJESH.VANGOORI@ORACLE.COM', 'PRASAD.VUDATHU@ORACLE.COM', 'SANJAY.ADHIKARY@ORACLE.COM', 'SUBBA.ARETI@ORACLE.COM', 'RAMESH.BOKKA@ORACLE.COM', 'TOM.CHOTA@ORACLE.COM', 'DINESH.SINGH.CHUNDAWAT@ORACLE.COM', 'ROBERT.CORDINGLEY@ORACLE.COM', 'VISHAL.DHIR@ORACLE.COM', 'PRAKASARAO.ERANKI@ORACLE.COM', 'KARTHICK.PILLAI@ORACLE.COM', 'RICH.HEADRICK.II@ORACLE.COM', 'MUHIL.JAYARAMAN@ORACLE.COM', 'DILLIGANESH.KALAICHELVAN@ORACLE.COM', 'JITENDRA.K.KUMAR@ORACLE.COM', 'DHANANJAYA.MACHINA@ORACLE.COM', 'VASU.MADIREDDI@ORACLE.COM', 'RAMU.MANCHALA@ORACLE.COM', 'PRITINANDA.MOHAPATRA@ORACLE.COM', 'RAJENDRA.NANDI@ORACLE.COM', 'JOSEPH.NIDHIRY@ORACLE.COM', 'NAVEEN.KUMAR.OJHA@ORACLE.COM', 'PRADEEP.ROUTRA@ORACLE.COM', 'RAJA.PALANICHAMY@ORACLE.COM', 'PANKAJKUMAR.N.PANCHOLI@ORACLE.COM', 'DEEPTHI.PULLA@ORACLE.COM', 'BHARADWAJ.P.PUTTASWAMY@ORACLE.COM', 'HITHIN.RAMACHANDRAN@ORACLE.COM', 'MOHAN.X.RAO@ORACLE.COM', 'VEERESH.SHIVAMADAPPA@ORACLE.COM', 'RAKESH.SINDHU@ORACLE.COM', 'TEJASWI.THIMMAIAH@ORACLE.COM', 'BALAJI.VALLAMKONDU@ORACLE.COM', 'NEELAVATHI.VELUSAMY@ORACLE.COM', 'SRINIVASULU.YERRAMREDDY@ORACLE.COM', 'KIRAN.KUMAR.NUTHALAPATI@ORACLE.COM', 'ARJITA.ADHIKARY@ORACLE.COM', 'SMITA.ADHIKARY@ORACLE.COM', 'DENNIS.BALARAJU@ORACLE.COM', 'NAGA.RAJ@ORACLE.COM', 'M.MOHIT.G.GUPTA@ORACLE.COM', 'BANDHAVYA.KOSARAJU@ORACLE.COM', 'SHAMBHU.KUMAR@ORACLE.COM', 'NAWAL.KUNDAN@ORACLE.COM', 'RAMAKRISHNAREDDY.LAKKADI@ORACLE.COM', 'HARIKA.MALKAPURAM@ORACLE.COM', 'ARUN.A.MANOHARAN@ORACLE.COM', 'NIDHI.P.PANDEY@ORACLE.COM', 'SHASHI.R.RANJAN@ORACLE.COM', 'PRIYA.S.SAXENA@ORACLE.COM', 'ANIL.K.SINGH@ORACLE.COM', 'JAYABHARATHREDDY.VELUGOTI@ORACLE.COM', 'HARI.ATHREYA@ORACLE.COM', 'TIM.HAY@ORACLE.COM', 'PETER.IDEH@ORACLE.COM', 'NAVEEN.KANUMURI@ORACLE.COM', 'SRAVANTHI.KANTEPALLI@ORACLE.COM', 'PREM.KUMAR.KUJALA@ORACLE.COM', 'RANJAN.K.KUMAR@ORACLE.COM', 'ANUPAMA.MADHAVAPEDDI@ORACLE.COM', 'CHANDRIKA.MANCHELLA@ORACLE.COM', 'MARK.C.MCDONALD@ORACLE.COM', 'SAINADH.NIMMAGADDA@ORACLE.COM', 'NATARAJAN.SURESH@ORACLE.COM', 'SUMAN.PANDEY@ORACLE.COM', 'SHIV.RAMASWAMY@ORACLE.COM', 'SRIRAM.SRIGIRIRASU@ORACLE.COM', 'MICHAEL.TITUS@ORACLE.COM', 'JAIKUMAR.VERMA@ORACLE.COM', 'HUGH.ZHENG@ORACLE.COM', 'SARAH.CHEN@ORACLE.COM', 'ALETTE.GARCIA@ORACLE.COM', 'MICHAEL.MA@ORACLE.COM', 'ROBERTO.RO.MARTINEZ@ORACLE.COM', 'ERNESTO.OLIVEROS@ORACLE.COM', 'STEVE.RENWICK@ORACLE.COM', 'JOSE.VILLASENOR@ORACLE.COM', 'AARON.YANEZ@ORACLE.COM', 'SAMPATH.KADAMBADI@ORACLE.COM', 'THOMAS.BABU.KOSHY@ORACLE.COM', 'NIKHIL.PONNAMANENI@ORACLE.COM', 'ASHWIN.REDDY@ORACLE.COM', 'HARI.SURA@ORACLE.COM', 'NIKHIL.CHAMALA@ORACLE.COM', 'PRASAD.DASARI@ORACLE.COM', 'SATHYANARAYANA.VENKATACHALA@ORACLE.COM', 'SAURABH.DHAR@ORACLE.COM', 'ANJANEYULU.YERRAMSETTY@ORACLE.COM', 'TAUSEEF.A.AHMED@ORACLE.COM', 'NAVEEN.BASRA@ORACLE.COM', 'KUMAR.CHEMALAMARRI@ORACLE.COM', 'RAJESH.LAVUDI@ORACLE.COM', 'THIMMAPPA.NARALA@ORACLE.COM', 'BAPI.RAJU.VINNAKOTA@ORACLE.COM', 'ANJANI.DATTI@ORACLE.COM', 'VIKAS.KALLALATHIL.KONNATH@ORACLE.COM', 'VAMSHIKRISHNA.KATLA@ORACLE.COM', 'MUTHU.KUMAR@ORACLE.COM', 'AVADHUT.MULE@ORACLE.COM', 'RAJYALAXMI.P.PABBA@ORACLE.COM', 'CHAYANIKA.PANDEY@ORACLE.COM', 'NILESH.PATEL@ORACLE.COM', 'PRASANTA.ROY@ORACLE.COM', 'MAYANK.Z.SHARMA@ORACLE.COM', 'SRIRAM.VENKATARAMAN@ORACLE.COM', 'JAY.AKBARNEJAD@ORACLE.COM', 'RAJAMAHENDER.PARTHAM@ORACLE.COM', 'DEEPAK.SURANA@ORACLE.COM', 'HARSHITHA.VELAGALETI@ORACLE.COM', 'NARENDRA.AMRUTHALURI@ORACLE.COM', 'SIDDHARTH.M.DAVE@ORACLE.COM', 'LINGESH.KURMONI@ORACLE.COM', 'HARISH.RAJULAPATI@ORACLE.COM', 'MAHESH.BADAMPUDI@ORACLE.COM', 'SHRAVANKUMAR.KOTA@ORACLE.COM', 'PRATAP.KUKKADAPU@ORACLE.COM', 'DEVI.PALIVELA@ORACLE.COM', 'KRANTHI.KUMAR.REDDY.PANJUGALA@ORACLE.COM', 'ALVB.SATISH@ORACLE.COM', 'BHARGAVA.RAMA.SENAPATHI@ORACLE.COM', 'ABHIJEET.SINGH@ORACLE.COM', 'SUBRAT.TRIPATHY@ORACLE.COM', 'VANAMALA.VENUGOPAL@ORACLE.COM', 'WOLE.OLADIPO@ORACLE.COM', 'SUDHIR.K.SRIVASTAVA@ORACLE.COM', 'SARATH.KUMAR.TADEPALLI@ORACLE.COM', 'SARITHA.YEDDULA@ORACLE.COM', 'NARSINGSHAH.ARSID@ORACLE.COM', 'NARAYANA.SWAMY.BARMA@ORACLE.COM', 'CHRISTOPHER.MASIKATI@ORACLE.COM', 'SATYAVAGEESWARAN.RANGASWAMI@ORACLE.COM', 'PRIYANKA.SONI@ORACLE.COM', 'RAMAKRISHNA.YALAMANCHILI@ORACLE.COM', 'SRICHANDRA.ADIANDHRA@ORACLE.COM', 'SEKHAR.BIJJALA@ORACLE.COM', 'HONGWEI.DAI@ORACLE.COM', 'DEBA.DAS@ORACLE.COM', 'KEVIN.GIROUX@ORACLE.COM', 'HARMAN.JUDGE@ORACLE.COM', 'EUGENE.KO@ORACLE.COM', 'DEVANATHA.REDDY.KONA@ORACLE.COM', 'JAKE.MULLINS@ORACLE.COM', 'VIKRAM.BANU.UPADHYAYA@ORACLE.COM', 'XUE-YANG.YAN@ORACLE.COM', 'SURESH.B.GODI@ORACLE.COM', 'SUNEEL.K.KOLLURU@ORACLE.COM', 'BALUPRASAD.BADAVATH@ORACLE.COM', 'VAISHNAVI.BAKKEMMAGARI@ORACLE.COM', 'CHIRANJEEVI.CHUNDURU@ORACLE.COM', 'PARTHASARATHI.DS@ORACLE.COM', 'SATAVAHANA.VARMA.IMMALRAJU@ORACLE.COM', 'CHANDRA.SEKHAR.KOLLA@ORACLE.COM', 'MOHANSUNDAR.MAVILLAPALLI@ORACLE.COM', 'SUSHMA.PATHURI@ORACLE.COM', 'PAVAN.BOINPALLI@ORACLE.COM', 'DAVID.KAYAL@ORACLE.COM', 'SANDEEP.T.THOTA@ORACLE.COM', 'AARTI.MITTAL@ORACLE.COM', 'UDAYA.SAMUDRALA@ORACLE.COM', 'RISHI.K.SRIVASTAVA@ORACLE.COM', 'ABHIJIT.APPALABHATLA@ORACLE.COM', 'BINAYA.BASUKALA@ORACLE.COM', 'SHAILENDRA.BORO@ORACLE.COM', 'SUNIL.FERNANDES@ORACLE.COM', 'SRINIVAS.JONNADULA@ORACLE.COM', 'SREEJISH.KUMAR@ORACLE.COM', 'RAMESH.NUVVULA@ORACLE.COM', 'IRANNA.SULIKAL@ORACLE.COM', 'THIRUNARAYANA.CHAKRAVARTHI@ORACLE.COM', 'VINAY.X.GUPTA@ORACLE.COM', 'ANIL.A.KUMAR@ORACLE.COM', 'AMIT.D.DAS@ORACLE.COM ', 'RAJAT.SOMANI@ORACLE.COM', 'RANJITH.BALAN@ORACLE.COM', 'MATHEW.ABRAHAM@ORACLE.COM', 'DANNY.EDWIN@ORACLE.COM', 'JOY.CHAKRABORTY@ORACLE.COM', 'ADI.KONATHALA@ORACLE.COM', 'GOPALAKRISHNA.GATTUPALLI@ORACLE.COM', 'VENKATASIVAKRISHNA.AKELLA@ORACLE.COM', 'RAJESWARARAO.AYYALASOMAYAJULA@ORACLE.COM', 'KHASIM.S.SHAIK@ORACLE.COM', 'BISWABRATA.BHAKTA@ORACLE.COM', 'CHETHAN.MARIYAPPA@ORACLE.COM', 'JIJA.FRANCIS@ORACLE.COM', 'KAUSTAV.KARMAKAR@ORACLE.COM', 'SUDHARSAN.CHENNAKESAVAN@ORACLE.COM', 'DAVID.LAU@ORACLE.COM', 'LOKESH.X.SHRIVASTAVA@ORACLE.COM', 'DEBAJYOTI.BANERJEE@ORACLE.COM', 'SWETHA.KUNAPULI@ORACLE.COM', 'RAJ.P.SINGH@ORACLE.COM', 'ZHONGYUN.SUN@ORACLE.COM', 'QING.LI@ORACLE.COM', 'VIGNESH.KS@ORACLE.COM', 'ADLIT.DSOUZA@ORACLE.COM', 'SUMAN.ROUT@ORACLE.COM', 'PAVITHRA.KARANTH@ORACLE.COM', 'AMIT.AM.GHOSH@ORACLE.COM', 'ADYASHA.BISWAL@ORACLE.COM', 'RONALD.MENDOZA@ORACLE.COM', 'MOHITH.NARRA@ORACLE.COM', 'SANTHOSH.B@ORACLE.COM', 'KARTHICK.SUBASH@ORACLE.COM', 'SRINIVASARAO.DAMA@ORACLE.COM', 'SREENIVASA.GADDAM@ORACLE.COM', 'PADMANABAN.GANESAN@ORACLE.COM', 'BIKASH.GIRI@ORACLE.COM', 'ASHUTOSH.AS.GUPTA@ORACLE.COM', 'KRISHNA.MANGAL@ORACLE.COM', 'RISHI.NAYAK@ORACLE.COM', 'BIMAL.MADAPPATTIL@ORACLE.COM', 'GANGIREDDY.YARNAGU@ORACLE.COM', 'GANESH.KOPPINEEDI@ORACLE.COM', 'SATYA.YADAGANI@ORACLE.COM', 'DAVE.DARRALL@ORACLE.COM', 'SREEHARI.DUBAKKA@ORACLE.COM', 'NAGANJANEYA.KOPPINEEDI@ORACLE.COM', 'MANOHAR.KUMAR@ORACLE.COM', 'BOLLOJU.MANOHAR@ORACLE.COM', 'SHIVANARENDRA.NUKALA@ORACLE.COM', 'PRAMILA.RAJ@ORACLE.COM', 'NUWAN.RAJAPAKSE@ORACLE.COM', 'UDAY.KUMAR.RAYABARAPU@ORACLE.COM', 'DEREK.SYMINGTON@ORACLE.COM', 'NOEL.DUPLOOY@ORACLE.COM', 'PETER.JESURAJ@ORACLE.COM', 'CHALAPATHI.MALLADI@ORACLE.COM', 'YOGESH.NUNE@ORACLE.COM', 'HEMESH.PATEL@ORACLE.COM', 'PRAVEEN.S.SHARMA@ORACLE.COM', 'BOB.STOCKWELL@ORACLE.COM', 'AKSHAY.A.KUMAR@ORACLE.COM', 'SUBHASH.MY@ORACLE.COM', 'KARTHIK.RAJENDRA@ORACLE.COM', 'RAMESH.GUNNAM@ORACLE.COM', 'AKSHITH.PK@ORACLE.COM', 'PREM.RAJKUMAR@ORACLE.COM', 'VINAYAK.UPADHYA@ORACLE.COM', 'DURGASIMHAREDDY.BUCHIREDDY@ORACLE.COM', 'ABHISHEK.R.ROSHAN@ORACLE.COM', 'ASHISH.SAHOO@ORACLE.COM', 'DEEPAK.SHIVANANDAM@ORACLE.COM', 'MOHAMMAD.ASIF.ANSARI@ORACLE.COM', 'VENKATA.SATHYA.HITESH.BADAM@ORACLE.COM', 'S.S.CH.PRADEEP.KUMAR.BANDARU@ORACLE.COM', 'BHAWNA.BHARTI.BHALLA@ORACLE.COM', 'VISMITHA.GANESH@ORACLE.COM', 'VIJAY.KUMAR.GOPI.REDDY@ORACLE.COM', 'AKANKSHA.MAILAK@ORACLE.COM', 'ARJUN.GOUD.NELLIKONDA@ORACLE.COM', 'PRAKASH.SARAVANAN@ORACLE.COM', 'SARITHA.TARAPATLA@ORACLE.COM', 'AMR.H.IBRAHIM@ORACLE.COM', 'ARPIT.VARMA@ORACLE.COM', 'IMRAN.MAHMOOD@ORACLE.COM', 'INDER.BEDI@ORACLE.COM', 'JIRI.HROMADKA@ORACLE.COM', 'JITENDAR.AIRNENI@ORACLE.COM', 'MAHENDER.REDDY.METTU@ORACLE.COM', 'NIVESH.NAVALE@ORACLE.COM', 'PAVAN.KOTHAPALLI@ORACLE.COM', 'PAVAN.KUMARC@ORACLE.COM', 'ARUNKUMAR.PINDIPROLI@ORACLE.COM', 'PRAGYA.DUBEY@ORACLE.COM', 'RANJIT.RS.SINGH@ORACLE.COM', 'SANDEEP.VENKATACHALAIAH@ORACLE.COM', 'SARAVANA.RAMASAMY@ORACLE.COM', 'SEETARAM.CHILUKURI@ORACLE.COM', 'SRAWAN.PABBA@ORACLE.COM', 'SREELAKSHMI.NAIR@ORACLE.COM', 'SUDHARSANA.YANNAM@ORACLE.COM', 'VENKAT.SAMBASIVAM@ORACLE.COM', 'VENKATESH.VADDEMPUDI@ORACLE.COM', 'VIKAS.TRIPURANENI@ORACLE.COM', 'ZORAN.PROLE@ORACLE.COM', 'ABDUL.HAFEEZ@ORACLE.COM', 'ALEJANDRA.VELAZQUEZ@ORACLE.COM', 'AMITH.MANJUNATH@ORACLE.COM', 'ANAND.KAMMAR@ORACLE.COM', 'ANANTHA.J@ORACLE.COM', 'ARJUN.J@ORACLE.COM', 'BHARATH.Y.R@ORACLE.COM', 'BHASKAR.YETIGADDA@ORACLE.COM', 'CARMEN.ZAVALA@ORACLE.COM', 'DAN.TAN@ORACLE.COM', 'DEEPAK.AB.KUMAR@ORACLE.COM', 'EMMANUEL.MURILLO@ORACLE.COM', 'GIREESHA.K.C@ORACLE.COM', 'GOWTHAM.RAMESH@ORACLE.COM', 'IRVIN.GARCIA@ORACLE.COM', 'IVAN.CHAIDEZ@ORACLE.COM', 'JESUS.G.GONZALEZ@ORACLE.COM', 'KARTHIK.KK.KRISHNAMURTHY@ORACLE.COM', 'KIRAN.BG@ORACLE.COM', 'NISCHINTH.RAMAMURTHY@ORACLE.COM', 'NISHITH.BANTWAL@ORACLE.COM', 'POOJITHA.M.M@ORACLE.COM', 'PRAJOTH.PAI@ORACLE.COM', 'SACHIN.SHIDDANAGOUDAR@ORACLE.COM', 'SUJITH.KV@ORACLE.COM', 'VIKAS.KAMAT@ORACLE.COM', 'VINITA.KASHYAP@ORACLE.COM', 'YASHWANTH.Y.KUMAR@ORACLE.COM')
and app.app_instance_display_name = 'oracle.pagerduty.com'; 
-------------------------ORNA---------
select * from ud_ssa_p where ud_ssa_p_privilege like '3602~%';

update ud_orcc_u set UD_ORCC_U_supportnotes = UD_ORCC_U_supportnotes||'SR#180124-000353' where REQUEST_KEY in (	11835999,11562114);
select * from UD_ORCC_U where REQUEST_KEY in (	11835999,11562114);

SELECT * FROM UD_ORCC_U WHERE ORC_KEY=8030212;

select * from UD_ORCC_U where UPPER(UD_ORCC_U_EMAIL) in UPPER('CONOR.PHELAN@ORACLE.COM');
select * from UD_ORCC_P where ORC_KEY in (7024540);
Select * From ud_orna_u Where Upper(ud_orna_u_Email) In ('SHARAT.KOVURU@ORACLE.COM') And ud_orna_u_Route_Id ='occn_pdit_confluence' ;
Select * From ud_orna_u Where ud_orna_u_Server=3602 And Orc_Key In (11544125, 11544127, 11544126, 11544172, 11544124, 11543312, 11543394, 11543330, 11543332, 11543354, 11543164, 11537004, 11536223, 11536172, 11536186, 11536199, 11536184, 11536185, 11536219, 11536200, 11471326, 11471327, 11471291, 11471288, 11471330, 11466971, 11467074, 11466974, 11466972, 11467075, 11466068, 11466148, 11466042, 11466151, 11466076, 11466146, 11465821, 11465772, 11465818, 11465820, 11465447, 11465524, 11454633, 11454535, 11452331) ;
--update ud_orna_u set ud_orna_u_ROUTE_ID ='occn_pdit_confluence' WHERE ud_orna_u_server=3602 AND  ud_orna_u_ROUTE_ID is NULL and Orc_Key In (11424117, 11424078, 11424077, 11424080, 11424098, 11423807, 11406568, 11423493, 11423495, 11423505, 11423494, 11423554, 10758780, 11401625, 11397917, 11423497, 11423465, 11423455, 11423433, 11423453, 11423463, 11423481, 11423480, 11423478, 11423450, 11423396, 11423447, 11423445, 11423392, 11423416, 11423412, 11423405, 11423406, 11423386, 11423409, 11423407, 11423391, 11423388, 11423372, 11423355, 11423367, 11423346, 11423347, 11423379, 11423313, 11423289, 11423286, 11423318, 11423283, 11423208, 11423210, 11423261, 11423263, 11423258, 11423211, 11423209, 11423053, 11423055, 11423056, 11423300, 11423054, 11423297, 11423265, 11423260, 11423278, 11423094, 11423205, 11423207, 11423206, 11423096, 11423259, 11423277, 11423279, 11423095, 11401898, 10664754, 11423101, 11423067, 11423065, 11423098, 11423031, 11423013, 11423057, 11423027, 11422990, 11422987, 11423019, 11422856, 11423002, 11423005, 11423006, 11422997, 11423008, 11423001, 11422981, 11422998, 11423003, 11422963, 11422967, 11422961, 11422964, 11422960, 11422983, 11422985, 11422977, 11422984, 11422979, 11422982, 11422786, 11422790, 11422783, 11422837, 11422776, 11422857, 11422832, 11422801, 11422784, 11422579, 10779180, 11380686, 11422277, 11422083, 11422014, 11422099, 11415214, 11401937, 10664149, 11128542, 11421549, 11421546, 11421550, 11421534, 11421568, 11421533, 11421571, 11386555, 11395413, 11397637, 11421285, 11421291, 11421326, 11421327, 11421272, 11421348, 11421352, 11421347, 11421286, 11421325, 11421298, 11421264, 11421263, 11421256, 11421253, 11421252, 11421234, 11421248, 11421247, 11421246, 11421233, 11421241, 11421242, 11421259, 11421257, 11421230, 11421229, 11421207, 11421193, 11421195, 11421206, 11421202, 11421199, 11421186, 11421149, 11421143, 11421139, 11421126, 11421113, 11421164, 11421165, 11421163, 11421162, 11421166, 11421140, 11421112, 11421161, 11421123, 11420995, 11420990, 11421100, 11421094, 11421119, 11421093, 11421102, 11421097, 11421099, 11420980, 11420962, 11420977, 11420960, 11420928, 11420959, 11420939, 11420940, 11420916, 11420937, 11420890, 11420870, 11420889, 11420909, 11420910, 11420919, 11420908, 11420905, 11420903, 11420869, 11420851, 11420868, 11420899, 11420867, 11420849, 11420882, 11420863, 11420816, 11420897, 11420878, 11420834, 11420832, 11420796, 11420795, 11420808, 11420824, 11420840, 11420821, 11420802, 11420784, 11420785, 11420801, 11420818, 11420817, 11420776, 11420782, 11420775, 11420725, 11420774, 11420609, 11420611, 11420726, 11420769, 11420765, 11420764, 11420536, 11420534, 11420533, 11420602, 11420575, 11420530, 11420579, 11420514, 11420511, 11420512, 11420513, 11420566, 11420508, 11420559, 11420520, 11420558, 11420392, 11420393, 11420503, 11420416, 11420334, 11420333, 11420335, 11420332, 11420517, 11420336, 11420498, 11420499, 11420411, 11420410, 11420413, 11420409, 11420408, 11420497, 11420500, 11401658, 11420376, 11420398, 11420399, 11420375, 11420351, 11420325, 11420292, 11420293, 11420349, 11397994, 10748109, 11132032, 10748109, 11416978, 11415964, 11416172, 11416142, 11416124, 11416123, 11415215, 11415202, 11415336, 11415333, 11415205, 11415332, 11415141, 11415052, 11414963, 11414958, 11415003, 11415011, 11415012, 11415000, 11414771, 11414766, 11414790, 11414791, 11414762, 11414700, 11414703, 11414629, 11414654, 11413193, 11413177, 11413176, 11413063, 11413061, 11413155, 11413059, 11412904, 11412732, 11412731, 11412727, 11412790, 11412711, 11412710, 11412470, 11412309, 11412413, 11412434, 11412432, 11412431, 11173988, 11409972, 11401662, 11409908, 10748109, 10748109, 11390046, 11408948, 11408965, 11408942, 11408964, 11408963, 11409021, 11409019, 11409018, 11408919, 11408915, 11408916, 11408917, 11408934, 11408941, 11408936, 11408939, 11408935, 11409016, 11409015, 11409017, 11408938, 11408962, 11408937, 11408933, 11408940, 11408918, 11176361, 11176386, 11176314, 10689126, 10747083, 11176361, 11176386, 11408755, 11408754, 11408777, 11408811, 11408812, 11408813, 11408752, 11408800, 11408796, 11408753, 11408780, 11408778, 11408795, 11408798, 11408797, 11408799, 10685190, 11176314, 11408751, 11408770, 11408667, 11408729, 11408668, 11408748, 11408750, 11408810, 11408772, 11408790, 11408749, 11408773, 11408669, 11408587, 11408588, 11408589, 11408661, 11408660, 11408663, 11408665, 11408664, 11408662, 11408658, 11408666, 11408659, 11408542, 11408554, 11408522, 11408541, 11408540, 11408543, 11408427, 11408551, 11408536, 11408514, 11408550, 11408520, 11408507, 11408518, 11408515, 11408517, 11408429, 11408519, 11408552, 11408428, 11408521, 11408516, 11408426, 11408425, 11408534, 11408530, 11408531, 11408532, 11408533, 11408535, 11408404, 11408405, 11408419, 11128203, 11408274, 11402697, 11328558, 10743598, 10716114, 11407504, 11407503, 11407068, 11407071, 11406969, 11407092, 11407009, 11406967, 11406965, 11407112, 11407073, 11407008, 11407090, 11406844, 11406850, 11406833, 11406709, 11406496, 11304710, 11402298, 11402697, 11360657, 11357671, 11380705, 11348019, 11328559, 11193855, 11272284, 11299461, 11374134, 11348020, 11158418, 11169069, 11156807, 11193768, 11193753, 11177497, 11174561, 11173702, 11173988, 11172691, 11328558, 11376658, 11405205, 11324002, 11376658, 11404949, 11404947, 11404948, 11404820, 11404837, 11403807, 11403799, 11403798, 11403800, 11403797, 11403773, 11403665, 11403720, 11403719, 11403689, 11402697, 11402298, 11401420, 11402246, 11402245, 11402066, 11401430, 11401421, 11401876, 11401687, 11401667, 11401609, 11401668, 11401654, 11401597, 11401651, 11401639, 11401644, 11401640, 11401378, 11400869, 11401420, 11401421, 11400904, 11401415, 11401430, 11401437, 11401436, 11401414, 11389978, 11389978, 11387311, 11387311, 11386560, 11386560, 11381216, 11381216, 11389978, 11387311, 11386560, 11381216) ;
SELECT * FROM UD_ORCC_U WHERE UPPER(UD_ORCC_U_OLDNAME) IS NOT NULL;
 
SELECT * FROM UD_ORNA_U where upper(UD_ORNA_U_NAME) like 'KOMMI.DHARMENDRANATH@ORACLE.COM%';
SELECT * FROM UD_ORNA_U WHERE UD_ORNA_U_ROUTE_ID = 'pdit_admin' AND  UD_ORNA_U_SUPPORTNOTES='SR#497386-1089345348';;
SELECT * FROM UD_OSCQ_U WHERE  REQUEST_KEY= 12113579;
--update  UD_OSCQ_U   set UD_OSCQ_U_SUPPORTNOTES=UD_OSCQ_U_SUPPORTNOTES||'SR#160331-000120'   WHERE  REQUEST_KEY=3767068;
SELECT * FROM UD_ORNA_P WHERE   REQUEST_KEY=4016546;
select * from UD_ORJP_U where   ORC_KEY=11119368;
select * from UD_ORNA_U where   REQUEST_KEY=	4589823 ;
select * from UD_ORNA_U where   UD_ORNA_U_server=	11764 ;
SELECT * FROM UD_ORNA_U WHERE   ORC_KEY=8030212;
update ud_orna_u set UD_ORNA_U_SUPPORTNOTES=UD_ORNA_U_SUPPORTNOTES||'SR#170906-000191' where   orc_key=15154150 ;
SELECT * FROM UD_ORJP_P WHERE  UD_ORJP_P_PRIVILEGE LIKE '1465~294';
--update UD_ORJP_P set ud_orjp_p_privilege='294', ud_orjp_p_supportnotes='497386-1174649221' WHERE  ud_orjp_p_privilege like '1465~294' and orc_key=11119368;
--update  ud_orna_p   set ud_orna_p_SUPPORTNOTES='SR#497386-1089345348' WHERE   UD_ORNA_P_SUPPORTNOTES='SR#497386-108934534';
--update ud_ssa_p set ud_ssa_p_priv_wo_tilde='99' WHERE request_key =848279;
SELECT * FROM ud_ssa_p WHERE ud_ssa_p_SUPPORTNOTES='SR#497386-824689989';
SELECT * FROM ud_orna_u WHERE UPPER(ud_orna_u_EMAIL) = 'SATHISHKUMAR.PACHAMUTHU@ORACLE.COM' AND ud_orna_u_ROUTE_ID='occn_pdit_confluence';  
update ud_orna_u set ud_orna_u_SUPPORTNOTES=ud_orna_u_SUPPORTNOTES||'Ref#160321-000492' where ORC_KEY in (10700365);
select distinct ud_orna_u_route_id from ud_orna_u where ud_orna_u_route_id like 'ora%';

select * from UD_ORJP_U where orc_key in (39501271);

select * from ud_ssa_p where  ud_ssa_p_PRIVILEGE in ('3082~34','3082~33');

--update ud_ssa_p set ud_ssa_p_SUPPORTNOTES='SR#497386-961036293',ud_ssa_p_PRIV_WO_TILDE='35',ud_ssa_p_PRIVILEGE='3082~35' where ud_ssa_p_PRIVILEGE in ('3082~34');
--update ud_ssa_p set ud_ssa_p_SUPPORTNOTES='SR#497386-961036293',ud_ssa_p_priv_wo_tilde='34',ud_ssa_p_PRIVILEGE='3082~34' where ud_ssa_p_PRIVILEGE in ('3082~33');

select * from ud_ssa_p where ud_ssa_p_PRIV_WO_TILDE='3' and ud_ssa_p_PRIVILEGE='3602~3';
select ORC_KEY from ud_ssa_p where ud_ssa_p_PRIV_WO_TILDE='3' and ud_ssa_p_PRIVILEGE='3602~3' group by ORC_KEY having COUNT(ORC_KEY) >1;
--delete from ud_ssa_p where ud_ssa_p_supportnotes='SR#497386-824689989' and ud_ssa_p_PRIVILEGE='3602~3';

select *  from ud_orna_u where ud_orna_u_ROUTE_ID='store_admin' and ud_orna_u_name in ();
select * from ud_ssa_p where orc_key in (select orc_key from ud_orna_u where ud_orna_u_route_id='store_admin');
select * from ud_orna_u where UPPER(ud_orna_u_EMAIL) in upper('sabina.kouser@oracle.com') and REQUEST_KEY in (1070604);
select * from ud_orna_u where ORC_KEY in (  10654555);
select * from ud_orna_u where REQUEST_KEY in (1154375);
select * from ud_orcc_u where orc_key in (7024469);
SELECT * FROM ud_ssa_p WHERE ORC_KEY IN (11387512);
SELECT * FROM ud_orna_u U WHERE LOWER(U.ud_orna_u_ROUTE_ID) LIKE '%oci_account%';

SELECT O.OST_KEY,U.ud_orna_u_NAME,U.ORC_KEY FROM ud_orna_u U, OIU O WHERE LOWER(U.ud_orna_u_ROUTE_ID) LIKE '%oci_account%'
and u.orc_key= o.orc_key and o.OST_KEY IN (/*2875,2881,*/2877,2878)
;
SELECT * FROM ud_ssa_p;
SELECT U.ud_orna_u_NAME,P.ud_ssa_p_PRIV_WO_TILDE FROM ud_orna_u U,ud_ssa_p P WHERE U.ORC_KEY = P.ORC_KEY AND U.ORC_KEY IN
(9822568, 9810512, 9835368, 9822567, 9825407, 9832522, 9827339, 9824261, 9827685, 9828744, 9828742, 9828676, 9830085, 9830082, 9828743, 9827335, 9830084, 9824262, 9830086, 9831435, 9828745, 9808786, 9821475, 9824260, 9825406, 9861980, 9846898, 9852179, 9841581, 9847445, 9858020, 9844609, 9853254, 9861398, 9853639, 9848290, 9846897, 9852178, 9844101, 9855448, 9860278, 9855513, 9862050, 9853190, 9847176, 9853818, 9855449, 9853637, 9861399, 9863127, 9873456, 9897841, 9892836, 9866976, 9871436, 9865925, 9868157, 9485098, 10976654, 10801917, 10890619, 10805230, 10946778, 10961494, 10926404, 10790061, 10790072, 10938948, 10920343, 10917825, 10926452, 10797853, 11166816, 11211367, 11180554, 11209813, 11170489, 11230911, 11223005, 11213623, 11186257, 11199387, 10337279, 8710528, 11215644, 11172933, 11153267, 10339797, 10343096, 8711750, 8711751, 8711752, 8711753, 8711754, 8711755, 8711756, 8711757, 8711758, 8711759, 8711760, 8711761, 8711762, 8711763, 8711764, 8711766, 8711767, 8711768, 8711769, 8711770, 8711771, 8711772, 8711773, 8711774, 8711775, 8711776, 8711777, 8711778, 8711779, 8711780, 8711781, 8711782, 8711783, 8711784, 8711785, 8711786, 8711787, 8711788, 8711789, 8711790, 8711791, 8711793, 8711794, 8711795, 8711796, 8711797, 8711798, 8711799, 8711800, 8711803, 8711804, 8711805, 8711806, 8711807, 8711808, 8711809, 8711810, 8711812, 8711813, 8711814, 8711815, 8711816, 8711817, 8711818, 8711819, 8711820, 8711821, 8711822, 8711823, 8711824, 8711826, 8711827, 8711828, 8711829, 8711830, 8711831, 8711833, 8711834, 8711836, 8711837, 8711838, 8711839, 8711840, 8711842, 8711843, 8711844, 8711846, 8711847, 8711848, 8711849, 8711850, 8711851, 8711852, 8711853, 8711854, 10644133, 10637159, 10635745, 10655097, 10656457, 10634906, 10656029, 10651330, 10631355, 10627490, 10622498, 10622499, 10622500, 10622501, 10622502, 10622503, 10622504, 10622505, 10622506, 10622507, 10622508, 10622509, 10622510, 10622511, 10622512, 10622513, 10622514, 10622515, 10622516, 10622517, 10622518, 10622520, 10622521, 10622522, 10622523, 10622524, 10622525, 10622526, 10622527, 10622528, 10622529, 10622530, 10622531, 10622532, 10622533, 10622534, 10622535, 10622536, 10622537, 10622538, 10622539, 10622540, 10622541, 10622542, 10622543, 10622544, 10622545, 10622546, 10622547, 10622548, 10622549, 10622550, 10622551, 10622552, 10622553, 10622554, 10622555, 10622556, 10622557, 10622558, 10622560, 10622561, 10622562, 10622563, 10622564, 10622565, 10622566, 10622567, 10622568, 10622569, 10622570, 10622571, 10622572, 10622573, 10622574, 10622575, 10622576, 10622578, 10622579, 10622580, 10622581, 10622582, 10622583, 10622584, 10622585, 10622586, 10631609, 10625257, 10657491, 10616345, 10624772, 10622591, 10622592, 10630695, 10631450, 10657431, 10897518, 10787428, 10791579, 10826563, 9482992, 9877017, 10364478, 10354815, 10360257, 10339798, 10339799, 10334699, 10360024, 10352702, 10364450, 10352703, 10350008, 10350007, 10364520, 10620478, 10552533, 10552534, 10629130, 10589147, 10579930, 10608920, 10581977, 10597869, 10593855, 10552536, 10563847, 10572579, 10552532, 10552535, 10546741, 10608020, 10616330, 10586229, 10611170, 10562862, 10557776, 10560823, 10622264, 10564290, 10590265, 10598921, 10788901, 10786977, 10805204, 10897509, 10786966, 10838124, 10817995, 10786970, 10786971, 10833278, 9906842, 9906930, 9913581, 9914004, 9912522, 10355272, 10352628, 10355273, 10364435, 10360219, 10353996, 10364459, 10364461, 10342246, 10540547, 10544092, 10546769, 10552488, 10544123, 10551492, 10552478, 10552479, 10552480, 10552470, 10552471, 10812354, 10816927, 10812398, 10825239, 10812383, 10787531, 10787536, 10805229, 10786942);
SELECT OST_KEY FROM OIU WHERE ORC_KEY IN (7024469);
SELECT * FROM OST WHERE OST_KEY IN (1950);
select * FROM OST WHERE obj_key in (1008);

update ud_orna_u set ud_orna_u_supportnotes=ud_orna_u_supportnotes||'michael.x.levy@oracle.com.invalid.2015-07-20_23:41:00' where request_key=1154375;
desc ud_orcc_p;
desc ud_orcc_u;
update UD_ORCC_U set UD_ORCC_U_SUPPORTNOTES=UD_ORCC_U_SUPPORTNOTES||'SR#497386-932262940' where orc_key in (16377613);
--UPDATE UD_ORSC_U SET ud_orsc_u_first_name ='Leighann' WHERE UPPER(UD_ORSC_U_EMAIL) = 'LEIGH.ANN.WILSON@ORACLE.COM' AND orc_key =10812686;
select * from UD_ORCC_U where REQUEST_KEY in (12113579);
SELECT * FROM UD_ORSC_U WHERE ORC_KEY IN (16377613);

update UD_ORCC_U set UD_ORCC_U_SUPPORTNOTES=UD_ORCC_U_SUPPORTNOTES||'SR#180124-000353' where orc_key in (16377613);

select * from ud_orcc_u where lower(ud_orcc_u_email) in ('dinesh.pillay@oracle.com');
select * from UD_ORNA_U where LOWER(UD_ORNA_U_ROUTE_ID) like '%gcp%' and UD_ORNA_U_SUPPORTNOTES is null;
SELECT * FROM ud_orna_u WHERE LOWER(ud_orna_u_ROUTE_ID) LIKE '%occn_pdit_confluence%' AND REQUEST_KEY IS NOT NULL  ;
select * from ud_orcc_u where ud_orcc_u_email='albert.valls@oracle.com';
select * from ud_orsc_u where request_key =   3595257;

select * from UD_ORSA_U where REQUEST_KEY in (5008223 );

select * from ud_orcc_u where  UD_ORCC_U_SUPPORTNOTES='SR#497386-846331288';

select * from ud_orsc_u where request_key in (1908261);

--UPDATE UD_ORSC_U set ud_orsc_u_first_name='WeiKeong' WHERE REQUEST_KEY IN (1908261);


--update ud_orcc_u set UD_ORCC_U_SUPPORTNOTES='SR#497386-808591029' where request_key in (1438333);
desc ud_orcc_u;
select * from lku where lku_type_string_key like '%ORCC%';

select * from LKV where LKU_KEY=4582;
SELECT orc_key FROM UD_ORCC_U where ud_orcc_u_name='GREGORY.KEEFER@ORACLE.COM';

/home/oimadmin/scripts/rightnowcx/RightNowProvisioning_ORCC.pl CREATE_ACCOUNT cx_p2 :UD_ORCC_U_NAME :UD_ORCC_U_PASSWORD :UD_ORCC_U_EMAIL " :UD_ORCC_U_FIRST_NAME " " :UD_ORCC_U_LAST_NAME "
/home/oimadmin/Java/jrockit-jdk1.6.0_26-R28.1.4-4.0.1/bin/java -jar aps-rightnow-crmod-intgrtn.jar CREATE_ACCOUNT cx_p2 :UD_ORCC_U_NAME :UD_ORCC_U_PASSWORD :UD_ORCC_U_EMAIL :UD_ORCC_U_FIRST_NAME " :UD_ORCC_U_LAST_NAME "

select * from OIU where ost_key in (1950) and ORC_KEY in (select orc_key from ornatmp t , usr u where u.usr_login=t.userlogin  and u.usr_status= 'Active' and  t.supportnotes like 'INACTIVE%' and t.status='Disabled' )  ;
select * from OST where OST_KEY in (1947);
select * from OST where obj_key in (1008);

SELECT * FROM UD_LSYP_USR WHERE UD_LSYP_USR_EMAIL in ('fernando.x.munoz@oracle.com','zhe.zhao@oracle.com');
SELECT * FROM UD_LSYP_USR WHERE request_key in (4028856);
update ud_lsyp_usr set ud_lsyp_usr_environment_or_lob='2156' where ud_lsyp_usr_email ='feng.l.liu@oracle.com' ;

----------------------------
SELECT * FROM UD_DBAC_U WHERE REQUEST_KEY IN  ( 3509029);
2775
select * from UD_DBAC_U where ORC_KEY in  (10944197);
update UD_DBAC_U set UD_DBAC_U_SR_NUMBER =UD_DBAC_U_SR_NUMBER||'SR#497386-1043032240'  WHERE REQUEST_KEY IN  (2636427);
---------------------
SELECT * FROM SVR WHERE SVR_NAME ='PDIT Oracle Service Cloud';
------------------
SELECT * FROM UD_OSN_USR WHERE UD_OSN_USR_LOGIN = 'derek.pope@oracle.com';

SELECT * FROM UD_OSN_USR WHERE UD_OSN_USR_LOGIN <> UD_OSN_USR_unique_id;

update UD_OSN_USR set UD_OSN_USR_LOGIN = 'robert.luiten@oracle.com'  WHERE UD_OSN_USR_LOGIN = 'robert.l.luiten@oracle.com';

update UD_OSN_USR set UD_OSN_USR_SUPPORT_NOTES=UD_OSN_USR_SUPPORT_NOTES||'SR#TERM ALERT_23_JUNE', UD_OSN_USR_unique_id = 'derek.pope@oracle.com'  WHERE UD_OSN_USR_LOGIN = 'derek.pope@oracle.com';
--derek.pope.loughlin-pope@oracle.com
----------------------INTERCALL
select * from UD_ICPA_USR where UD_ICPA_USR_LOGIN='JAIME.DELVALLE@ORACLE.COM';
select * from ud_icpa_usr where REQUEST_KEY=5355244;
--update ud_icpa_usr set UD_ICPA_USR_LAST_NAME='Popic' where ud_icpa_usr_login='GORDAN.POPIC@ORACLE.COM' and orc_key = 10565197;

-------------------

select * from ud_occn_u where ud_occn_u_name='sshravan';

select * from ud_occn_u where request_key=7060053	;


--------------BUGDB
select * from ud_bugd_U;

select * from ud_bdna_u where ud_bdna_u_username='KSHITIZ.SAXENA@ORACLE.COM';
select * from ud_bdna_u where ud_bdna_u_beehive_mail='COHWEB_BUG_US_GRP@ORACLE.COM';

--------------BDGA
select * from ud_bdga_u where ud_bdga_u_username='YUJI.OKAMOTO@ORACLE.COM';


-------------UD_BDPA_U   BugDB Account - Partner/External 
select * from UD_BDPA_U;


--------BEEHIVE GRP APSOIM

select * from apsoim.BEEHIVEGRP_BULKMEM_ADDREMOVE where beneficiary_usr_key ='127818';

-----ADT

 select oiu.orc_key, usr_key, ost_status, ud.*
from oiu, ost, ud_adtuser ud
where ud.orc_key = oiu.orc_key
and oiu.ost_key = ost.ost_key ;


select * from app_instance order by app_instance_key desc;

-----------APP INSTNACE

select US.USR_LOGIN ,os.ost_status from APP_INSTANCE AI, OBJ OB, OST OS, OIU OI,USR US
Where Ai.App_Instance_Name Like 'PDIT%Confluence' And Ai.Object_Key=Ob.Obj_Key
and ob.obj_key=os.obj_key --and os.ost_status in ('Provisioned')
and os.ost_key=oi.ost_key and oi.usr_key=us.usr_key 
And Us.Usr_Login In 
('SAI.PITCHIKA@ORACLE.COM', 'PRERIT.CHELANI@ORACLE.COM', 'RANJIT.ASHTEKAR@ORACLE.COM', 'PAKEERU.DATTI@ORACLE.COM', 'VIJAYAKUMAR.DAKSHINAMOORTHY@ORACLE.COM', 'RAVI.D.DALAL@ORACLE.COM', 'SUVARNA.KAANUBOYINA@ORACLE.COM', 'ASHOKKUMAR.KANNAN@ORACLE.COM', 'PULKIT.GUPTA@ORACLE.COM')
--group by US.USR_LOGIN, OS.OST_STATUS having count ( US.USR_LOGIN) >1
--order by ai.app_instance_display_name,os.ost_status 
;

--------------ROLE
select UGP.UGP_NAME ROLE_NAME, POL.POL_NAME ACCESS_POLICY, ENT_DISPLAY_NAME ENTITLEMENT from POL, POC, ENT_LIST ENT, POG, UGP
where POC_FIELD_VALUE = ENT.ENT_CODE and POL.POL_KEY = POC.POL_KEY and POG.POL_KEY = POL.POL_KEY and UGP.UGP_KEY = POG.UGP_KEY and UGP.UGP_NAME in 
('Default-SSA-Employee-Global','Default-SSA-Employee-AA','Default-SSA-Manager-Global','Default-SSA-Manager-AA','Default-SSA-Employee-JF-SALES-PRESALES');


select * from app_instance where app_instance_display_name like '%CSR User Account [Munich]%';


select * from app_instance where itresource_key like '%2881%';
-------------------CSR
select * from UD_CSST_USR;
select * from UD_CSST_GRP;
select * from UD_CSST_ROL;
select * from UD_CSST_GR;
select * from UD_CSST_RL;

-------------------  CSIM       -------------
select * from ud_csim_usr;

----------------------------------
desc ud_orna_u_EMAIL;
select ud.orc_key,ud.ud_orna_u_supportnotes,ud.ud_orna_u_EMAIL,ost_status from oiu, ost, ud_orna_u ud, usr usr
where ud.orc_key = oiu.orc_key
and oiu.ost_key = ost.ost_key
and OIU.USR_KEY=USR.USR_KEY 
and ud.orc_key=9811218
--and ud_orna_u_route_id='occn_pdit_confluence'
--and ost_status  in ('Disabled','Revoked')
;
------------------
select * from UD_HPNA_USR where request_key=	4114880;

------TMS
select * from UD_TMS_U where ud_tms_u_name ='MUKUNYA.MUGO@ORACLE.COM';


---DBAC
select * from ud_dbac_u where upper (ud_dbac_u_username) in upper('SAKOTIKA') and ud_dbac_u_itres=2714;
SELECT * FROM UD_DBAC_U WHERE  UD_DBAC_U_ITRES=2440;

select * from svr where svr_name like 'GCWAV Database%';

SELECT * FROM UD_DBAC_U WHERE REQUEST_KEY=  3509029;

SELECT * FROM UD_DBAC_U WHERE UD_DBAC_U_USERNAME=  'tpadilla'  and UD_DBAC_U_ITRES=12089;
update UD_DBAC_U set ud_dbac_u_sr_number=ud_dbac_u_sr_number||'SR#180410-000927' WHERE ORC_KEY=15543039;

SELECT * FROM SVR WHERE SVR_NAME LIKE '%GCWBU%Database';

--9459020,10350757,10548943


select * from svr where svr_key=2376;


------------LDAP SYNC

select usr_key,usr_login, usr_status, usr_ldap_guid, usr_ldap_dn,usr_country, usr_create, usr_update,usr_manager_key  from usr where usr_ldap_guid='10BC766775BA9F6DE040018A24BF31F5';


SELECT USR_COUNTRY, USR_KEY, USR_LOGIN, USR_STATUS FROM USR WHERE USR_LOGIN IN ('LUIS.VEGA@ORACLE.COM', 'LUIS.LV.VEGA@ORACLE.COM');
SELECT * FROM usr WHERE usr_login IN ('VINEET.LAL@ORACLE.COM');
select * from recon_events where re_entity_type='User' and re_keyfield like '%D8913632044CF810E040548C2D700F1D%' order by re_create ;--D8913632044CF810E040548C2D700F1D


 --update usr set USR_LOGIN = 'LUIS.VEGA_DELETED@ORACLE.COM', usr_email = 'luis.vega_deleted@oracle.com', usr_ldap_dn = 'cn=LUIS_VEGA_DELETE,l=amer,dc=oracle,dc=com'  where usr_key = 93682;

select * from oim_home;

select * from catalog where entity_description = 'OMCS Operations Management Portal';

---internal production
59453DD0BB1C0432E050E60A8E7F3E4F
update ud_app_usr set ud_app_usr_orclguid = '59453DD0BB1C0432E050E60A8E7F3E4F' where request_key = 9729004;

update ud_app_usr set --ud_app_usr_supportnotes=ud_app_usr_supportnotes||'SR#190401-000331',
ud_app_usr_orclguid = 'EC242EB2AEA87E29E0404598044B3B48' where  upper(UD_APP_USR_USERID) = 'EMERSON.SANTOS@ORACLE.COM' 
and UD_APP_USR_SERVER= '1107';

update ud_app_usr set ud_app_usr_orclguid = (SELECT USR_LDAP_GUID FROM USR WHERE USR_LOGIN='RISHI.RAJANI@ORACLE.COM') where 
upper(UD_APP_USR_USERID) = 'RISHI.RAJANI@ORACLE.COM' 
and UD_APP_USR_SERVER= '986';
;

SELECT * FROM UD_APP_USR WHERE UD_APP_USR_KEY = 6980800;
SELECT * FROM UD_APP_GRP where request_key=6071679;

SELECT * FROM UD_APP_USR WHERE ORC_KEY IN 
(15839507,18531191,16490271,14643677,16547704,14126932,7105848,16537375,18839749,18520942,7177467,7031985,14579766);

select * from UD_APP_USR where upper(UD_APP_USR_USERID) like upper( 'RISHI.RAJANI@ORACLE.COM');
ED72A6942C7EFF08E040E60A8D7F4941
select USR_LOGIN,USR_EMAIL,USR_LDAP_DN,
USR_LDAP_GUID,USR_STATUS FROM USR WHERE UPPER(USR_LOGIN) like upper('%RISHI.RAJANI@ORACLE.COM') ORDER BY USR_EMP_TYPE;
5B7A75143D2B9F36E050E60A8E7F2882
5B7A75143D2B9F36E050E60A8E7F2882



select * from UD_FUFN_USR where UD_FUFN_USR_USERID = 'ECKLE.LI@ORACLE.COM';

select * from svr where svr_key in (1005,1107);

select REQUEST_KEY,REQUEST_STATUS from REQUEST where request_status !='Request Completed' and REQUEST_KEY in (3525732) 3526171, 3526172, 3526097, 3526122, 3526098, 3526099, 3526173, 3526140, 3526123, 3526174, 3526141, 3526142, 3526124, 3526175, 3526176, 3526177, 3526178, 3526100, 3526125, 3526179, 3526180, 3526101, 3526181, 3526126, 3526182, 3526127, 3526183, 3526128, 3526184, 3526143, 3526129, 3526185, 3526186, 3526187, 3526188, 3526189, 3526190, 3526191, 3526102, 3526192, 3526130, 3526193, 3526211, 3526144, 3526103, 3526145, 3526104, 3526194, 3526105, 3526198, 3526199, 3526200, 3526201, 3526202, 3526203, 3526204, 3526205, 3526206, 3526106, 3526212, 3526107, 3526213, 3526207, 3526208, 3526108, 3526146, 3526109, 3526214, 3526110, 3526215, 3526216, 3526147, 3526209, 3526217, 3526231, 3526148, 3526232, 3526218, 3526219, 3526210, 3526220, 3526251, 3526221, 3526222, 3526149, 3526223, 3526224, 3526252, 3526253, 3526150, 3526225, 3526226, 3526227, 3526255, 3526256, 3526228, 3526229, 3526230, 3526271, 3526291, 3526272, 3526257, 3526258, 3526273, 3526259, 3526292, 3526233, 3526274, 3526260, 3526261, 3526262, 3526293, 3526275, 3526276, 3526263, 3526277, 3526278, 3526279, 3526264, 3526265, 3526266, 3526280, 3526267, 3526268, 3526234, 3526269, 3526270, 3526281, 3526311, 3526312, 3526313, 3526314, 3526235, 3526315, 3526236, 3526282, 3526237, 3526316, 3526238, 3526239, 3526240, 3526283, 3526317, 3526241, 3526318, 3526319, 3526242, 3526320, 3526284, 3526243, 3526321, 3526322, 3526323, 3526285, 3526286, 3526324, 3526325, 3526294, 3526326, 3526287, 3526288, 3526289, 3526244, 3526327, 3526245, 3526295, 3526246, 3526290, 3526331, 3526296, 3526328, 3526329, 3526333, 3526330, 3526247, 3526351, 3526352, 3526297, 3526353, 3526334, 3526354, 3526335, 3526336, 3526355, 3526248, 3526298, 3526356, 3526249, 3526250, 3526337, 3526299, 3526371, 3526372, 3526357, 3526358, 3526359, 3526373, 3526338, 3526360, 3526361, 3526339, 3526362, 3526363, 3526300, 3526374, 3526375, 3526340, 3526376, 3526341, 3526364, 3526377, 3526378, 3526365, 3526379, 3526366, 3526367, 3526380, 3526368, 3526381, 3526382, 3526383, 3526369, 3526384, 3526342, 3526385, 3526343, 3526370, 3526344, 3526386, 3526391, 3526387, 3526392, 3526345, 3526393, 3526394, 3526388, 3526389, 3526395, 3526346, 3526390, 3526396, 3526347, 3526348, 3526349, 3526411, 3526397, 3526350, 3526431, 3526412, 3526432, 3526433, 3526434, 3526413, 3526398, 3526399, 3526435, 3526436, 3526414, 3526301, 3526400, 3526415, 3526416, 3526417, 3526401, 3526437, 3526402, 3526403, 3526404, 3526418, 3526419, 3526438, 3526420, 3526439, 3526405, 3526441, 3526406, 3526407, 3526408, 3526442, 3526421, 3526409, 3526410, 3526422, 3526443, 3526423, 3526302, 3526451, 3526424, 3526452, 3526444, 3526425, 3526426, 3526303, 3526453, 3526427, 3526304, 3526446, 3526447, 3526305, 3526454, 3526306, 3526428, 3526455, 3526456, 3526457, 3526429, 3526448, 3526458, 3526449, 3526450, 3526460, 3526307, 3526430, 3526308, 3526461, 3526462, 3526463, 3526464, 3526465, 3526466, 3526467, 3526471, 3526468, 3526472, 3526469, 3526470, 3526473, 3526309, 3526474, 3526491, 3526492, 3526310, 3526493, 3526494, 3526495, 3526496, 3526511, 3526497, 3526498, 3526512, 3526499, 3526500, 3526501, 3526514, 3526531, 3526502, 3526503, 3526504, 3526505, 3526475, 3526515, 3526506, 3526516, 3526507, 3526508, 3526517, 3526532, 3526533, 3526477, 3526509, 3526534, 3526479, 3526535, 3526480, 3526552, 3526520, 3526554, 3526555, 3526556, 3526521, 3526536, 3526537, 3526557, 3526558, 3526559, 3526560, 3526561, 3526481, 3526539, 3526562, 3526522, 3526563, 3526564, 3526482, 3526540, 3526565, 3526523, 3526566, 3526567, 3526524, 3526541, 3526483, 3526542, 3526484, 3526525, 3526526, 3526485, 3526486, 3526569, 3526527, 3526528, 3526487, 3526570, 3526571, 3526572, 3526529, 3526573, 3526574, 3526575, 3526488, 3526543, 3526576, 3526489, 3526577, 3526578, 3526490, 3526579, 3526581, 3526530, 3526591, 3526582, 3526592, 3526583, 3526593, 3526584, 3526611, 3526586, 3526612, 3526613, 3526587, 3526590, 3526614, 3526615, 3526631, 3526595, 3526616, 3526617, 3526633, 3526618, 3526634, 3526619, 3526635, 3526620, 3526596, 3526597, 3526598, 3526599, 3526621, 3526622, 3526600, 3526544, 3526624, 3526625, 3526545, 3526626, 3526628, 3526546, 3526637, 3526603, 3526547, 3526629, 3526604, 3526630, 3526638, 3526639, 3526548, 3526605, 3526549, 3526651, 3526550, 3526640, 3526642, 3526671, 3526606, 3526672, 3526643, 3526607, 3526673, 3526608, 3526644, 3526609, 3526674, 3526675, 3526676, 3526610, 3526652, 3526691, 3526653, 3526654, 3526645, 3526655, 3526693, 3526694, 3526656, 3526657, 3526658, 3526677, 3526646, 3526695, 3526647, 3526659, 3526660, 3526696, 3526678, 3526648, 3526661, 3526680, 3526681, 3526649, 3526650, 3526697, 3526711, 3526698, 3526699, 3526700, 3526712, 3526713, 3526662, 3526683, 3526702, 3526685, 3526686, 3526688, 3526719, 3526720, 3526665, 3526721, 3526707, 3526722, 3526708, 3526723, 3526709, 3526724, 3526725, 3526689, 3526726, 3526666, 3526727, 3526710, 3526728, 3526731, 3526729, 3526690, 3526730, 3526667, 3526752, 3526732, 3526753, 3526733, 3526754, 3526668, 3526771, 3526772, 3526755, 3526734, 3526756, 3526669, 3526773, 3526774, 3526775, 3526757, 3526735, 3526776, 3526777, 3526778, 3526779, 3526780, 3526781, 3526670, 3526782, 3526783, 3526758, 3526736, 3526785, 3526786, 3526759, 3526791, 3526787, 3526792, 3526788, 3526793, 3526789, 3526790, 3526760, 3526739, 3526761, 3526796, 3526813, 3526740, 3526814, 3526741, 3526815, 3526742, 3526798, 3526743, 3526763, 3526744, 3526817, 3526745, 3526764, 3526746, 3526765, 3526799, 3526800, 3526747, 3526801, 3526748, 3526802, 3526749, 3526766, 3526750, 3526804, 3526805, 3526819, 3526831, 3526770, 3526832, 3526820, 3526851, 3526806, 3526834, 3526852, 3526835, 3526853, 3526836, 3526821, 3526837, 3526807, 3526822, 3526838, 3526854, 3526855, 3526856, 3526808, 3526839, 3526809, 3526857, 3526858, 3526859, 3526810, 3526840, 3526824, 3526825, 3526871, 3526860, 3526826, 3526841, 3526827, 3526828, 3526829, 3526861, 3526830, 3526891, 3526892, 3526893, 3526894, 3526862, 3526872, 3526873, 3526842, 3526863, 3526844, 3526895, 3526845, 3526864, 3526896, 3526897, 3526846, 3526865, 3530609, 3530610, 3530625);

select REQUEST_KEY,REQUEST_STATUS  from REQUEST where request_key in (3661976, 3661787, 3661977, 3661943, 3661788, 3661789, 3661978, 3661944, 3661790, 3661979, 3661991, 3661980, 3661992, 3661981, 3661993, 3661982, 3661994, 3661922, 3661995, 3661923, 3661996, 3661997, 3661998, 3661945, 3661983, 3661946, 3661985, 3661948, 3661986, 3661926, 3661987, 3661988, 3661989, 3661990, 3662011, 3661999, 3662000, 3662012, 3662001, 3661949, 3662002, 3662013, 3662003, 3661950, 3661927, 3662015, 3662017, 3662031, 3661928, 3662020, 3662032, 3661929, 3661930, 3662021, 3662023, 3662034, 3662051, 3662035, 3662005, 3662036, 3662007, 3662025, 3662052, 3662037, 3662053, 3662054, 3662038, 3662026, 3662055, 3662027, 3662008, 3662009, 3662056, 3662028, 3662057, 3662029, 3662058, 3662030, 3662010, 3662039, 3662059, 3662042, 3662060, 3662092, 3662094, 3662043, 3662072, 3662096, 3662097, 3662045, 3662074, 3662046, 3662075, 3662062, 3662063, 3662101, 3662076, 3662047, 3662102, 3662048, 3662064, 3662077, 3662103, 3662104, 3662078, 3662105, 3662079, 3662066, 3662106, 3662049, 3662107, 3662108, 3662109, 3662110, 3662080, 3662111, 3662050, 3662081, 3662112, 3662067, 3662113, 3662131, 3662082, 3662114, 3662083, 3662084, 3662085, 3662068, 3662086, 3662132, 3662087, 3662133, 3662134, 3662135, 3662136, 3662137, 3662070, 3662151, 3662153, 3662154, 3662088, 3662155, 3662115, 3662156, 3662089, 3662157, 3662090, 3662158, 3662171, 3662159, 3662172, 3662173, 3662116, 3662161, 3662162, 3662140, 3662174, 3662141, 3662175, 3662142, 3662176, 3662165, 3662178, 3662143, 3662120, 3662179, 3662180, 3662166, 3662181, 3662182, 3662183, 3662167, 3662184, 3662146, 3662169, 3662170, 3662121, 3662148, 3662186, 3662191, 3662187, 3662149, 3662188, 3662150, 3662122, 3662192, 3662211, 3662193, 3662189, 3662190, 3662231, 3662194, 3662123, 3662232, 3662233, 3662195, 3662212, 3662196, 3662234, 3662235, 3662124, 3662213, 3662236, 3662214, 3662197, 3662237, 3662215, 3662198, 3662238, 3662199, 3662125, 3662239, 3662216, 3662217, 3662243, 3662202, 3662218, 3662219, 3662127, 3662205, 3662247, 3662206, 3662248, 3662220, 3662128, 3662221, 3662207, 3662249, 3662208, 3662209, 3662210, 3662222, 3662251, 3662223, 3662224, 3662250, 3662129, 3662252, 3662253, 3662254, 3662130, 3662225, 3662271, 3662255, 3662226, 3662272, 3662256, 3662227, 3662273, 3662257, 3662258, 3662259, 3662260, 3662261, 3662291, 3662262, 3662274, 3662263, 3662264, 3662265, 3662266, 3662267, 3662229, 3662275, 3662276, 3662268, 3662278, 3662269, 3662279, 3662230, 3662280, 3662281, 3662270, 3662311, 3662331, 3662332, 3662282, 3662312, 3662313, 3662314, 3662283, 3662315, 3662316, 3662317, 3662333, 3662335, 3662336, 3662320, 3662321, 3662337, 3662322, 3662293, 3662294, 3662324, 3662325, 3662326, 3662285, 3662339, 3662327, 3662340, 3662286, 3662341, 3662288, 3662330, 3662352, 3662343, 3662353, 3662354, 3662295, 3662356, 3662289, 3662290, 3662345, 3662358, 3662372, 3662359, 3662296, 3662346, 3662373, 3662360, 3662374, 3662347, 3662348, 3662361, 3662375, 3662349, 3662376, 3662362, 3662377, 3662363, 3662350, 3662364, 3662379, 3662365, 3662394, 3662366, 3662395, 3662367, 3662368, 3662369, 3662381, 3662370, 3662396, 3662397, 3662411, 3662412, 3662398, 3662399, 3662383, 3662413, 3662384, 3662297, 3662416, 3662417, 3662400, 3662419, 3662385, 3662420, 3662387, 3662421, 3662388, 3662422, 3662389, 3662401, 3662402, 3662423, 3662403, 3662424, 3662404, 3662300, 3662390, 3662425, 3662431, 3662301, 3662432, 3662405, 3662433, 3662303, 3662406, 3662407, 3662436, 3662437, 3662408, 3662426, 3662438, 3662304, 3662409, 3662427, 3662439, 3662305, 3662410, 3662306, 3662451, 3662441, 3662442, 3662443, 3662444, 3662307, 3662447, 3662308, 3662452, 3662448, 3662453, 3662454, 3662449, 3662450, 3662471, 3662429, 3662472, 3662473, 3662474, 3662475, 3662476, 3662477, 3662478, 3662479, 3662480, 3662481, 3662482, 3662455, 3662483, 3662484, 3662485, 3662487, 3662488, 3662309, 3662489, 3662456, 3662490, 3662491, 3662457, 3662310, 3662492, 3662493, 3662494, 3662458, 3662495, 3662511, 3662459, 3662496, 3662497, 3662512, 3662498, 3662513, 3662499, 3662460, 3662500, 3662502, 3662461, 3662504, 3662506, 3662462, 3662508, 3662430, 3662510, 3662531, 3662532, 3662533, 3662534, 3662551, 3662464, 3662465, 3662535, 3662466, 3662536, 3662552, 3662537, 3662467, 3662538, 3662515, 3662539, 3662468, 3662469, 3662470, 3662540, 3662516, 3662542, 3662543, 3662572, 3662574, 3662545, 3662546, 3662576, 3662553, 3662547, 3662518);

Update Orc Orc
set orc_tos_instance_key = (select UD_MMCS_u_username ud from UD_MMCS_u ud where ud.orc_key=orc.orc_key )
WHERE ORC_KEY IN (select orc_key from UD_MMCS_u) ;


SELECT * FROM CATALOG WHERE entity_type='Entitlement' and is_requestable=1 and is_deleted=0;

SELECT * FROM CATALOG WHERE entity_type='Entitlement' and is_requestable=1 and is_deleted=0 and  ENTITY_DESCRIPTION LIKE '%Subscribe to Beehive Group%';


select * from ud_app_grp where ud_app_grp_key in(
select grp.ud_app_grp_key from ud_app_usr usr, ud_app_grp grp where
USR.UD_APP_USR_KEY=GRP.UD_APP_USR_KEY AND --grp.ud_app_usr_key =7423378 and
(grp.ud_app_grp_group_name) like '1107%' 
                           --986~cn=hr/recrwwmgr/all-r,cn=content_accounts,cn=groups,dc=oracle,dc=com
AND UPPER(USR.UD_APP_USR_USERID) IN ('PRASHANTH.VUDUTHALA@ORACLE.COM') 
--and ud_app_grp_supportnotes = 'SR#497386-564916724'
) ORDER BY ORC_KEY DESC ;


---LMS


select * from UD_EBVP_U where request_key ='1398920';


select * from ud_pu_users where request_key =420706;

select * from ud_pu_users where ud_pu_users_login_name='Tarek.Dorgham@Oracle.Com';
select * from ud_pu_users where ud_pu_users_email='tarek.dorgham@oracle.com';
select * from ud_pu_users where ud_pu_users_organization='REF';
commit;
update prod_oim.ud_pu_users set ud_pu_users_login_name=ud_pu_users_email,ud_pu_users_old_login_name=ud_pu_users_email, 
ud_pu_users_organization=21 ,ud_pu_users_supportnotes=ud_pu_users_supportnotes||'REF16UPGRADE' where orc_key=15200614;
where ud_pu_users_organization='REF';
--create table oim_support.tmp_ud_pu_users_05aug17 as select * from prod_oim.ud_pu_users;

grant select on ud_ssa_p to oim_support;

select * from usr where usr_key=5391;

select * from ud_naxs_usr where request_key in ( 10762410)  ;

select * from ud_naxs_usr where  upper(ud_naxs_usr_email) ='AYUSH.SINGHAL@ORACLE.COM';

--update ud_naxs_usr set UD_NAXS_USR_NOTF_RELEASE_DATE= sysdate;

desc ud_naxs_usr;
desc ud_SSOA_usr;
select ud_SSOA_usr_login,ud_SSOA_usr_old_login,orc_key from ud_SSOA_usr where lower(ud_ssoa_usr_email) = 'sudhagar.shanmugavadivelu@oracle.com';
select * from ud_SSOA_usr where lower(ud_ssoa_usr_email) like 'zapstest%@oracle.com';
select * from ud_SSOA_usr where lower(ud_ssoa_usr_email) in ('william.ward@oracle.com','naresh.mallela@oracle.com');

select * from ud_SSOA_usr where request_key  in (18549756);

update  ud_SSOA_usr set ud_SSOA_usr_supportnotes=ud_SSOA_usr_supportnotes||'SR#190404-000556' where request_key  in (18549756);
update  ud_SSOA_usr set ud_ssoa_usr_password='8054:wsxs+fuH7dIXWtRtB66qFQ==' where orc_key in (4031211); 



update  ud_SSOA_usr set ud_SSOA_usr_DN='cn=DEVANJALI_SARKAR,l=amer,dc=oracle,dc=com' where request_key in (13230658); 

update  ud_SSOA_usr set ud_ssoa_usr_orclguid='00019977770398305191258616870092' where lower(ud_ssoa_usr_email) ='william.ward@oracle.com';

select * from ud_mail_usr where ud_mail_usr_email in ('devanjali.sarkar@oracle.com','prashanth.vuduthala@oracle.com');

update  ud_SSOA_usr set ud_SSOA_usr_DN='cn=DEVANJALI_SARKAR,l=amer,dc=oracle,dc=com' where request_key in (13230658); 
update  ud_SSOA_usr set UD_SSOA_USR_OTUBE_ROLE=null where lower(ud_ssoa_usr_email) ='larissa.stamos@oracle.com';

update  ud_SSOA_usr set UD_SSOA_USR_MOBILE=null where lower(ud_ssoa_usr_email) ='kai.yin@oracle.com';
update  ud_SSOA_usr set UD_SSOA_USR_supportnotes=UD_SSOA_USR_supportnotes||'SR#190120-000156' where upper(ud_ssoa_usr_email) ='WILLIAM.WARD@ORACLE.COM';

select ud_SSOA_usr_dn,ud_SSOA_usr_supportnotes from ud_SSOA_usr where lower(ud_ssoa_usr_email) ='raj.r.kumar@oracle.com';

update  ud_SSOA_usr set ud_SSOA_usr_dn='cn=raj_r_kumar,l=amer,dc=oracle,dc=com',ud_SSOA_usr_supportnotes=ud_SSOA_usr_supportnotes||'180215-000021' where lower(ud_ssoa_usr_email) ='raj.r.kumar@oracle.com';

select * from ud_naxs_usr where orc_key in (11098818,11080025,10997712);

DESC ud_SSOA_usr;
UD_SSOA_USR_NOTIFICATION_DATE
UD_NAXS_USR_NOTIFICATION_DATE
select * from UD_NAXS_USR ;
where orc_key in (11098818);

SELECT ORC_KEY, USER_LOGIN, USER_NAME, USER_GUID, USER_MANAGER_LOGIN, USER_PREV_EMAIL, USER_COUNTARY, USR_FIRST_NAME, USR_LAST_NAME, REQUEST_KEY, EMPLOYEE_SUBTYPE FROM APSOIM.MNA_USER_VIEW ;

---LDAP FULL RECON

select usr_key,usr_login, usr_status, usr_ldap_guid, usr_ldap_dn,usr_country, usr_create, usr_update,usr_manager_key  from usr where usr_ldap_guid='';

select * from recon_events where re_entity_type='User' and re_keyfield = '0702B382AC22002EE050E60A8F7F7905' order by re_create ;

select * from pol where pol_key in (2590,
2589,
2609,
1929,
1749);
select * from ud_naxs_usr where upper(ud_naxs_usr_email) like 'ADILA.ABDUL.SATAR@ORACLE.COM%';

select * from SVR where SVR_NAME like '%External%';
SELECT * FROM UD_APEX_U WHERE UD_APEX_U_USERNAME='KAZUYOSHI.SUZUKI@ORACLE.COM';
SELECT * FROM UD_APEX_P where orc_key =7327044; 
select * from ud_apex_r;
select * from UD_RUEI_P;
SELECT * FROM UD_APEX_U WHERE request_key =		840350;
SELECT * FROM UD_APEX_P WHERE orc_key =6701588;


select usr_status from usr where usr_login in ('PRASANNA.KUMAR.B.V@ORACLE.COM');
select usr_login  from usr where usr_login in ('YOGENDRA.JOSHI@ORACLE.COM', 'ALLISON.WOOLSEY@ORACLE.COM', 'JOHN.BEDFORD@ORACLE.COM', 'KUL.BHUSHAN.SRIVASTAVA@ORACLE.COM', 'ANISH.X.ALEX@ORACLE.COM', 'ALOK.KAVIDAYAL@ORACLE.COM', 'RAGHURAM.X.VENKATASUBRAMANIAN@ORACLE.COM', 'PRAKASHA.LAKKUR@ORACLE.COM', 'ANANDA.RAMANARASIMHAN@ORACLE.COM', 'MANJUNATH.PEENYA.MUNIYAPPA@ORACLE.COM', 'MEHDI.GERAMI@ORACLE.COM', 'NARAYANARAO.MACHIRAJU@ORACLE.COM', 'ERIC-THIERRY.MARTIN@ORACLE.COM', 'ASHISH.SWARUP@ORACLE.COM', 'VIRUPAKSHA.KANCHIRAYAPPA@ORACLE.COM', 'SRIDAR.SANTHANAM@ORACLE.COM', 'UMESH.SRIKANTAIAH@ORACLE.COM', 'MING.MA@ORACLE.COM', 'VASUDEVA.REDDY.JANGAM@ORACLE.COM', 'PARAS.PATHAK@ORACLE.COM', 'RAJA.BOPPANA@ORACLE.COM', 'KUMARAN.PONKALIAPPAN@ORACLE.COM', 'SILPA.MALLIPEDDI@ORACLE.COM', 'SUPRIYA.HEGDE@ORACLE.COM', 'LEE.ZOU@ORACLE.COM', 'DEVAREDDYHALLI.VARUNI@ORACLE.COM', 'KAVYA.SHANKARAPPA@ORACLE.COM', 'PADMA.X.PATAGE@ORACLE.COM', 'CHING.WU@ORACLE.COM', 'ANJANA.RADHAKRISHNAN@ORACLE.COM', 'SHALINI.X.KRISHNA@ORACLE.COM', 'KIRANBABU.X.GATTINENI@ORACLE.COM', 'ARIVUSUDAR.X.MEGHANATHAN@ORACLE.COM', 'PATHAN.ASHMA@ORACLE.COM', 'SHAKIRA.X.BANU@ORACLE.COM', 'SUSHEEL.AB@ORACLE.COM', 'SIVA.ANANTHA.KRISHNAN@ORACLE.COM', 'OWEN.QIN@ORACLE.COM', 'ARPITA.CHADAGA@ORACLE.COM', 'GIRISH.PRADHAN@ORACLE.COM', 'SACHIN.BAMBAL@ORACLE.COM', 'MADHUSUDAN.SRIKANTAIAH@ORACLE.COM', 'SATYASHREE.RANJAN.SWAIN@ORACLE.COM', 'PRARTHANA.X.AGWANIA@ORACLE.COM', 'PARASURAM.KRISHNA.KUMAR@ORACLE.COM', 'KUMAR.SANTHOSH@ORACLE.COM', 'SRIKANT.RAVI@ORACLE.COM', 'CHAITANYA.BABU@ORACLE.COM', 'VISHAKHA.GUPTA@ORACLE.COM', 'LAVANYA.GOVINDASAMY@ORACLE.COM', 'VISHAL.SHRIVASTAVA@ORACLE.COM', 'ANOOP.RANA@ORACLE.COM', 'PRATHIMA.RENUKA@ORACLE.COM', 'RAJANI.BOYAPATI@ORACLE.COM', 'VASUDEVA.PATIL@ORACLE.COM', 'JACK.WONG@ORACLE.COM', 'BHASKAR.SHARAVIRALA@ORACLE.COM', 'HARIPRASAD.REDDY@ORACLE.COM', 'DIYANESH.NANDAKUMAR@ORACLE.COM', 'SAVITA.CHANDA@ORACLE.COM', 'MOHANA.SUNDARI@ORACLE.COM', 'CHETAN.GOWDRU@ORACLE.COM', 'CAIGANG.XIONG@ORACLE.COM', 'AGNES.ZHANG@ORACLE.COM', 'JEFFREY.YEH@ORACLE.COM', 'RON.YU@ORACLE.COM', 'YING.C.CHEN@ORACLE.COM', 'JOHN.DONG@ORACLE.COM', 'YUTING.X.LIU@ORACLE.COM', 'XINYE.LI@ORACLE.COM', 'DAN.HU@ORACLE.COM', 'MICHAEL.T.YU@ORACLE.COM', 'ROSIE.WU@ORACLE.COM', 'WEI.SI@ORACLE.COM', 'ANAND.BILGAIYAN@ORACLE.COM', 'AARTI.MONGA@ORACLE.COM', 'SREENIVASULU.KODAVALI@ORACLE.COM', 'PERIASAMY.RANGASAMY@ORACLE.COM', 'AYUSHMAN.MISHRA@ORACLE.COM', 'SHILPA.GOVINDAPPA@ORACLE.COM', 'HOLGER.HERBERT@ORACLE.COM', 'NAGENDRA.KAMATH@ORACLE.COM', 'AMIT.X.AGARWAL@ORACLE.COM', 'TEJAS.CHUDGAR@ORACLE.COM', 'NAYANA.X.KEDLAYA@ORACLE.COM', 'SIDDHI.X.HUNNARGIKAR@ORACLE.COM', 'SAIKAMALA.MANCHIKANTI@ORACLE.COM', 'CHAMPAKA.GURURAJ@ORACLE.COM', 'JEETHENDRA.APPAJAIAH@ORACLE.COM', 'DARSHAN.HERGA@ORACLE.COM', 'PRASAD.VYAS@ORACLE.COM', 'MICHAEL.X.GOMES@ORACLE.COM', 'KHUSHBOO.AGARWAL@ORACLE.COM', 'SWATI.KUMARI@ORACLE.COM', 'RUPASHRI.MANJUNATH@ORACLE.COM', 'MELISSA.DCOSTA@ORACLE.COM', 'DARSHAN.KUMAR@ORACLE.COM', 'ANUJA.SAXENA@ORACLE.COM', 'ASHISH.X.TRIPATHI@ORACLE.COM', 'HARSHA.GUBBI@ORACLE.COM', 'RAGHAVENDRA.HEMATKAR@ORACLE.COM', 'ROSHNI.RAMESH@ORACLE.COM', 'SUMANA.GUNDANNA@ORACLE.COM', 'GEETHA.KURUBA@ORACLE.COM', 'ASHISH.NARANG@ORACLE.COM', 'RANJEET.SHRIWASTVA@ORACLE.COM', 'YICHEN.WANG@ORACLE.COM', 'LILI.SUN@ORACLE.COM', 'YINGSHUANG.LIU@ORACLE.COM', 'ISHWAR.X.SINGH@ORACLE.COM', 'MRIDULA.KAMATH@ORACLE.COM', 'PEIPEI.MA@ORACLE.COM', 'WEI.WE.GUO@ORACLE.COM', 'XIAOJUAN.NIU@ORACLE.COM', 'CHUAN.LIN@ORACLE.COM', 'KIRAN.RAJEGOWDA@ORACLE.COM', 'MARIANA.SACERDOTE@ORACLE.COM', 'JEFF.DE.ANDRADE@ORACLE.COM', 'TRACY.OCONNELL@ORACLE.COM', 'CHRIS.OSTERDOCK@ORACLE.COM', 'MUDASSAR.PEERZADE@ORACLE.COM', 'ISHRAT.ALI@ORACLE.COM', 'FRANCOIS.HOURCADE@ORACLE.COM', 'JEROME.LYPERRE.DI.BERNARDO@ORACLE.COM', 'SAJED.ZAMAN@ORACLE.COM', 'MARK.BRESLAUER@ORACLE.COM', 'JEAN.PAUL.CHEN@ORACLE.COM', 'RANU.SHARMA@ORACLE.COM', 'KIRAN.AMBLE@ORACLE.COM', 'JEAN.PAUL.CHEN@ORACLE.COM', 'MARK.BRESLAUER@ORACLE.COM', 'KIRAN.AMBLE@ORACLE.COM', 'RANU.SHARMA@ORACLE.COM', 'VAISHALI.X.SHETTY@ORACLE.COM', 'BHUVANESHWARI.DIPALI@ORACLE.COM', 'UDAYKUMAR.BOGONI@ORACLE.COM', 'DEEPAK.BENAGI@ORACLE.COM', 'SAVITHA.HJ@ORACLE.COM', 'PALLAVI.RAMAKANTH@ORACLE.COM', 'MIKE.DAUNAIS@ORACLE.COM', 'AMRUTASH.NANDA@ORACLE.COM', 'MUDIT.MAHESHWARI@ORACLE.COM', 'UMA.MAHESWARI.IRULANDI@ORACLE.COM', 'SURYA.MOITRA@ORACLE.COM', 'HARI.SUDHAN.PARAMESWARAN@ORACLE.COM', 'RAJANI.RAMACHANDRA@ORACLE.COM', 'ABHISHEK.X.CHAKRABORTY@ORACLE.COM', 'SANJIV.GUPTA@ORACLE.COM', 'MANJULA.X.RAVI@ORACLE.COM', 'MUDASSIR.MOHAMMED@ORACLE.COM', 'MALLIKARJUN.S.KOTAGE@ORACLE.COM', 'PRASANTH.KUMAR@ORACLE.COM', 'POOJA.BANSAL@ORACLE.COM', 'PUNITH.KUMAR@ORACLE.COM', 'SREENATH.SUKUMARAN@ORACLE.COM', 'DEEPTI.KESHAVA@ORACLE.COM', 'BIJU.VERGESE@ORACLE.COM', 'NEERA.DUTTA@ORACLE.COM', 'SUNEETHI.SAGAR@ORACLE.COM', 'DARSI.SRILATHA@ORACLE.COM', 'JESSICA.TRAN@ORACLE.COM', 'SHUNING.GAO@ORACLE.COM', 'MALA.BROWN@ORACLE.COM', 'CHITHRA.RADHAKRISHNAN@ORACLE.COM', 'SHUBHADA.MARSANDRE@ORACLE.COM', 'ANURADHA.KONDURI@ORACLE.COM', 'PREETI.X.KUMAR@ORACLE.COM', 'VEENA.X.NAGENDRA@ORACLE.COM', 'VINITA.VERMA@ORACLE.COM', 'SRASHTI.JAIN@ORACLE.COM', 'KAVITHA.KRISHNAN@ORACLE.COM', 'KHUSHBOO.ANAND@ORACLE.COM', 'ANKITA.RAIZADA@ORACLE.COM', 'ANURADHA.THYAGARAJAN@ORACLE.COM', 'SYAMO.MAHANKALO@ORACLE.COM', 'KSHAMA.SINGH@ORACLE.COM', 'AMRITA.X.MISHRA@ORACLE.COM', 'DEEPA.KRISHNAN@ORACLE.COM', 'HIMANSHU.KASHIKAR@ORACLE.COM', 'JASON.SHEN@ORACLE.COM', 'KAVITHA.SEKAR@ORACLE.COM', 'YULIYA.BUSHEL@ORACLE.COM', 'NEHA.DUBEY@ORACLE.COM', 'ANUSHA.HOOVANNA@ORACLE.COM', 'SIVA.MADHIRE@ORACLE.COM', 'UMA.NAGARJUNA.BANKA@ORACLE.COM', 'SONIA.WADHWA@ORACLE.COM', 'GEORGE.JACOB@ORACLE.COM', 'MARK.FARRIER@ORACLE.COM', 'NITIN.MISRA@ORACLE.COM', 'DURGESH.KOTWAL@ORACLE.COM', 'NANDA.KALATHIL@ORACLE.COM', 'SAYOOJ.LAXMAN@ORACLE.COM', 'SILPA.K@ORACLE.COM', 'DEEPANJALI.RAY@ORACLE.COM', 'SABITHA.LINGUTLA@ORACLE.COM', 'SRINIVASA.CHINNAPPA@ORACLE.COM', 'CHARUMATHI.NARASIMHAN@ORACLE.COM', 'ANTRO.DONISIOUS.ROY@ORACLE.COM', 'KUNAL.X.KACHRU@ORACLE.COM', 'MITHUN.CHACKAMPATH@ORACLE.COM', 'RASHMI.X.MELAGIRI@ORACLE.COM', 'RAJA.ANANTHAN@ORACLE.COM', 'HARIKRISHNA.NIMMARAJU@ORACLE.COM', 'NARESH.PATHI@ORACLE.COM', 'KALYANI.X.BANDI@ORACLE.COM', 'NEELESH.SINGH@ORACLE.COM', 'JAYASHREE.KENCHA@ORACLE.COM', 'DODDALA.LEELAMOHAN@ORACLE.COM', 'SHALINI.GAUR@ORACLE.COM', 'CHETANA.RAMANNA@ORACLE.COM', 'PRIYAMVADHA.MAHADEVAN@ORACLE.COM', 'ARTI.RAI@ORACLE.COM', 'NEERAJ.NANDWANA@ORACLE.COM', 'RAKESH.GORKAL@ORACLE.COM', 'SWEATHA.NAGESWARAN@ORACLE.COM', 'ANWITH.SHASHIKIRAN@ORACLE.COM', 'NARENDRA.NK.KUMAR@ORACLE.COM', 'TAPASWINI.SAHOO@ORACLE.COM', 'PRIYADHARSHINI.THOMAS@ORACLE.COM', 'ROHINI.SINHA@ORACLE.COM', 'RADHIKA.MURTHY@ORACLE.COM', 'RAJ.X.AGGARWAL@ORACLE.COM', 'BILL.MILLER@ORACLE.COM', 'LINDY.CHAN@ORACLE.COM', 'PREMALATHA.PUTTASWAMY@ORACLE.COM', 'VIJAY.SAI@ORACLE.COM', 'TIEN.NGUYEN@ORACLE.COM', 'JANE.LI@ORACLE.COM', 'SOWMIA.JAYARAJU@ORACLE.COM', '', 'PRASANNA.KUMAR.B.V@ORACLE.COM', '', 'TODD.SILVIUS@ORACLE.COM', 'SAMEENA.Y.PATEL@ORACLE.COM', 'ANDREW.LAN@ORACLE.COM', 'REDDY.SEKHAR@ORACLE.COM', 'PREMA.LINGAIAH@ORACLE.COM', 'PRAGATHI.KONDA@ORACLE.COM', 'KEITH.GRENIER@ORACLE.COM', 'PRAMOD.KALMANI@ORACLE.COM', 'JYOTIRMOYEE.PATRA@ORACLE.COM', 'NAINA.UMESH@ORACLE.COM', 'NIKAHAT.GHORI@ORACLE.COM', 'LAKSHMI.RAMYA.PULLABHATLA@ORACLE.COM', 'SWETHA.P.S@ORACLE.COM', 'ANIL.GOYAL@ORACLE.COM', 'VISHWANATH.NATARAJAN@ORACLE.COM', 'SMITHA.VENKATARAMANA@ORACLE.COM', 'KOUSHALENDRA.GUPTA@ORACLE.COM', 'DHARAMVRAT.MALIK@ORACLE.COM', 'VENKATESH.SESHADRI@ORACLE.COM', 'PIYUSHA.NAIK@ORACLE.COM', 'ARNAB.CHANDA@ORACLE.COM', 'ADITYA.THAKUR@ORACLE.COM', 'BHUMIREDDY.SRINIVASREDDY@ORACLE.COM', 'LAVANYA.GORREPATI@ORACLE.COM', 'RAGHAVENDRA.SHARMA@ORACLE.COM', 'SOMASHEKAR.GUDIPUTI@ORACLE.COM', 'PAVAN.VIJEENDRA@ORACLE.COM', 'PRUTHA.VASANTH.KUMAR@ORACLE.COM', 'FAIZ.MISTRY@ORACLE.COM', 'RUCHIR.SHARMA@ORACLE.COM', 'NIRMALSINH.JADHAV@ORACLE.COM', 'SOWMYA.MATHEW@ORACLE.COM', 'RICKY.SUN@ORACLE.COM', 'SUMMER.XIA@ORACLE.COM', 'MARTIN.YAN@ORACLE.COM', 'TING.X.LI@ORACLE.COM', 'HONGYING.WANG@ORACLE.COM', 'AARON.SHI@ORACLE.COM', 'XIONGJIAN.RUI@ORACLE.COM', 'QIZHI.XIA@ORACLE.COM', 'CHAITRA.CHOWDAPPA@ORACLE.COM', 'AMBER.GAO@ORACLE.COM', 'DAISY.ZHANG@ORACLE.COM', 'BALAJI.RAMASWAMY@ORACLE.COM', 'GANESH.SHIVAPRAKASH@ORACLE.COM', 'RABIC.MEERAN.KATHER.MYTHEEN@ORACLE.COM', 'LAVANYA.GOVINDASAMY@ORACLE.COM', 'ASHISH.AG.AGRAWAL@ORACLE.COM', 'SHUBHAM.SRIVASTAVA@ORACLE.COM', 'VIRENDRA.DESHMUKH@ORACLE.COM', 'SIVA.ANANTHA.KRISHNAN@ORACLE.COM', 'SIMAL.HANEEF@ORACLE.COM', 'V.VINAY.KOMPELLA@ORACLE.COM', 'BRIAN.KELLY@ORACLE.COM', 'JIAYU.QIAN@ORACLE.COM', 'RAKSHA.SONI@ORACLE.COM', 'YANXIA.HOU@ORACLE.COM', 'PETER.NGA@ORACLE.COM', 'BINDU.BOGANA@ORACLE.COM', 'ALEX.RUIZ.GARZA@ORACLE.COM', 'RAJAM.RAMASWAMY@ORACLE.COM', 'SAYANTANEE.DUTT@ORACLE.COM', 'DEEPTHI.ARTHANAYAKE@ORACLE.COM', 'PATRICK.MA@ORACLE.COM', 'JUDY.YE@ORACLE.COM', 'GANG.SHEN@ORACLE.COM', 'ROBERT.COOPER@ORACLE.COM', 'DAVID.JACKSON@ORACLE.COM', 'CARL.CASEY@ORACLE.COM', 'MARIEKA.THOMAS@ORACLE.COM', 'CHARLES.SIEGEL@ORACLE.COM', 'DEBORAH.CAYWOOD@ORACLE.COM', 'JANE.DOYLE@ORACLE.COM', 'ANDREW.MITCHELL@ORACLE.COM', 'JOHN.CORDANO@ORACLE.COM', 'KEN.DUFFY@ORACLE.COM') and usr_status = 'Active'
MINUS
select USR.USR_LOGIN ,ENT_DISPLAY_NAME from ENT_LIST ENT, ENT_ASSIGN EA, USR 
  where ENT.ENT_LIST_KEY  = EA.ENT_LIST_KEY and EA.USR_KEY   = USR.USR_KEY 
    and EA.ENT_STATUS   in  ('Provisioned','Enabled') and ENT_DISPLAY_NAME = 'Jira ODCS Users'  and ENT.ENT_DESCRIPTION = 'ALM (Production)'
    and USR.USR_LOGIN in ('YOGENDRA.JOSHI@ORACLE.COM', 'ALLISON.WOOLSEY@ORACLE.COM', 'JOHN.BEDFORD@ORACLE.COM', 'KUL.BHUSHAN.SRIVASTAVA@ORACLE.COM', 'ANISH.X.ALEX@ORACLE.COM', 'ALOK.KAVIDAYAL@ORACLE.COM', 'RAGHURAM.X.VENKATASUBRAMANIAN@ORACLE.COM', 'PRAKASHA.LAKKUR@ORACLE.COM', 'ANANDA.RAMANARASIMHAN@ORACLE.COM', 'MANJUNATH.PEENYA.MUNIYAPPA@ORACLE.COM', 'MEHDI.GERAMI@ORACLE.COM', 'NARAYANARAO.MACHIRAJU@ORACLE.COM', 'ERIC-THIERRY.MARTIN@ORACLE.COM', 'ASHISH.SWARUP@ORACLE.COM', 'VIRUPAKSHA.KANCHIRAYAPPA@ORACLE.COM', 'SRIDAR.SANTHANAM@ORACLE.COM', 'UMESH.SRIKANTAIAH@ORACLE.COM', 'MING.MA@ORACLE.COM', 'VASUDEVA.REDDY.JANGAM@ORACLE.COM', 'PARAS.PATHAK@ORACLE.COM', 'RAJA.BOPPANA@ORACLE.COM', 'KUMARAN.PONKALIAPPAN@ORACLE.COM', 'SILPA.MALLIPEDDI@ORACLE.COM', 'SUPRIYA.HEGDE@ORACLE.COM', 'LEE.ZOU@ORACLE.COM', 'DEVAREDDYHALLI.VARUNI@ORACLE.COM', 'KAVYA.SHANKARAPPA@ORACLE.COM', 'PADMA.X.PATAGE@ORACLE.COM', 'CHING.WU@ORACLE.COM', 'ANJANA.RADHAKRISHNAN@ORACLE.COM', 'SHALINI.X.KRISHNA@ORACLE.COM', 'KIRANBABU.X.GATTINENI@ORACLE.COM', 'ARIVUSUDAR.X.MEGHANATHAN@ORACLE.COM', 'PATHAN.ASHMA@ORACLE.COM', 'SHAKIRA.X.BANU@ORACLE.COM', 'SUSHEEL.AB@ORACLE.COM', 'SIVA.ANANTHA.KRISHNAN@ORACLE.COM', 'OWEN.QIN@ORACLE.COM', 'ARPITA.CHADAGA@ORACLE.COM', 'GIRISH.PRADHAN@ORACLE.COM', 'SACHIN.BAMBAL@ORACLE.COM', 'MADHUSUDAN.SRIKANTAIAH@ORACLE.COM', 'SATYASHREE.RANJAN.SWAIN@ORACLE.COM', 'PRARTHANA.X.AGWANIA@ORACLE.COM', 'PARASURAM.KRISHNA.KUMAR@ORACLE.COM', 'KUMAR.SANTHOSH@ORACLE.COM', 'SRIKANT.RAVI@ORACLE.COM', 'CHAITANYA.BABU@ORACLE.COM', 'VISHAKHA.GUPTA@ORACLE.COM', 'LAVANYA.GOVINDASAMY@ORACLE.COM', 'VISHAL.SHRIVASTAVA@ORACLE.COM', 'ANOOP.RANA@ORACLE.COM', 'PRATHIMA.RENUKA@ORACLE.COM', 'RAJANI.BOYAPATI@ORACLE.COM', 'VASUDEVA.PATIL@ORACLE.COM', 'JACK.WONG@ORACLE.COM', 'BHASKAR.SHARAVIRALA@ORACLE.COM', 'HARIPRASAD.REDDY@ORACLE.COM', 'DIYANESH.NANDAKUMAR@ORACLE.COM', 'SAVITA.CHANDA@ORACLE.COM', 'MOHANA.SUNDARI@ORACLE.COM', 'CHETAN.GOWDRU@ORACLE.COM', 'CAIGANG.XIONG@ORACLE.COM', 'AGNES.ZHANG@ORACLE.COM', 'JEFFREY.YEH@ORACLE.COM', 'RON.YU@ORACLE.COM', 'YING.C.CHEN@ORACLE.COM', 'JOHN.DONG@ORACLE.COM', 'YUTING.X.LIU@ORACLE.COM', 'XINYE.LI@ORACLE.COM', 'DAN.HU@ORACLE.COM', 'MICHAEL.T.YU@ORACLE.COM', 'ROSIE.WU@ORACLE.COM', 'WEI.SI@ORACLE.COM', 'ANAND.BILGAIYAN@ORACLE.COM', 'AARTI.MONGA@ORACLE.COM', 'SREENIVASULU.KODAVALI@ORACLE.COM', 'PERIASAMY.RANGASAMY@ORACLE.COM', 'AYUSHMAN.MISHRA@ORACLE.COM', 'SHILPA.GOVINDAPPA@ORACLE.COM', 'HOLGER.HERBERT@ORACLE.COM', 'NAGENDRA.KAMATH@ORACLE.COM', 'AMIT.X.AGARWAL@ORACLE.COM', 'TEJAS.CHUDGAR@ORACLE.COM', 'NAYANA.X.KEDLAYA@ORACLE.COM', 'SIDDHI.X.HUNNARGIKAR@ORACLE.COM', 'SAIKAMALA.MANCHIKANTI@ORACLE.COM', 'CHAMPAKA.GURURAJ@ORACLE.COM', 'JEETHENDRA.APPAJAIAH@ORACLE.COM', 'DARSHAN.HERGA@ORACLE.COM', 'PRASAD.VYAS@ORACLE.COM', 'MICHAEL.X.GOMES@ORACLE.COM', 'KHUSHBOO.AGARWAL@ORACLE.COM', 'SWATI.KUMARI@ORACLE.COM', 'RUPASHRI.MANJUNATH@ORACLE.COM', 'MELISSA.DCOSTA@ORACLE.COM', 'DARSHAN.KUMAR@ORACLE.COM', 'ANUJA.SAXENA@ORACLE.COM', 'ASHISH.X.TRIPATHI@ORACLE.COM', 'HARSHA.GUBBI@ORACLE.COM', 'RAGHAVENDRA.HEMATKAR@ORACLE.COM', 'ROSHNI.RAMESH@ORACLE.COM', 'SUMANA.GUNDANNA@ORACLE.COM', 'GEETHA.KURUBA@ORACLE.COM', 'ASHISH.NARANG@ORACLE.COM', 'RANJEET.SHRIWASTVA@ORACLE.COM', 'YICHEN.WANG@ORACLE.COM', 'LILI.SUN@ORACLE.COM', 'YINGSHUANG.LIU@ORACLE.COM', 'ISHWAR.X.SINGH@ORACLE.COM', 'MRIDULA.KAMATH@ORACLE.COM', 'PEIPEI.MA@ORACLE.COM', 'WEI.WE.GUO@ORACLE.COM', 'XIAOJUAN.NIU@ORACLE.COM', 'CHUAN.LIN@ORACLE.COM', 'KIRAN.RAJEGOWDA@ORACLE.COM', 'MARIANA.SACERDOTE@ORACLE.COM', 'JEFF.DE.ANDRADE@ORACLE.COM', 'TRACY.OCONNELL@ORACLE.COM', 'CHRIS.OSTERDOCK@ORACLE.COM', 'MUDASSAR.PEERZADE@ORACLE.COM', 'ISHRAT.ALI@ORACLE.COM', 'FRANCOIS.HOURCADE@ORACLE.COM', 'JEROME.LYPERRE.DI.BERNARDO@ORACLE.COM', 'SAJED.ZAMAN@ORACLE.COM', 'MARK.BRESLAUER@ORACLE.COM', 'JEAN.PAUL.CHEN@ORACLE.COM', 'RANU.SHARMA@ORACLE.COM', 'KIRAN.AMBLE@ORACLE.COM', 'JEAN.PAUL.CHEN@ORACLE.COM', 'MARK.BRESLAUER@ORACLE.COM', 'KIRAN.AMBLE@ORACLE.COM', 'RANU.SHARMA@ORACLE.COM', 'VAISHALI.X.SHETTY@ORACLE.COM', 'BHUVANESHWARI.DIPALI@ORACLE.COM', 'UDAYKUMAR.BOGONI@ORACLE.COM', 'DEEPAK.BENAGI@ORACLE.COM', 'SAVITHA.HJ@ORACLE.COM', 'PALLAVI.RAMAKANTH@ORACLE.COM', 'MIKE.DAUNAIS@ORACLE.COM', 'AMRUTASH.NANDA@ORACLE.COM', 'MUDIT.MAHESHWARI@ORACLE.COM', 'UMA.MAHESWARI.IRULANDI@ORACLE.COM', 'SURYA.MOITRA@ORACLE.COM', 'HARI.SUDHAN.PARAMESWARAN@ORACLE.COM', 'RAJANI.RAMACHANDRA@ORACLE.COM', 'ABHISHEK.X.CHAKRABORTY@ORACLE.COM', 'SANJIV.GUPTA@ORACLE.COM', 'MANJULA.X.RAVI@ORACLE.COM', 'MUDASSIR.MOHAMMED@ORACLE.COM', 'MALLIKARJUN.S.KOTAGE@ORACLE.COM', 'PRASANTH.KUMAR@ORACLE.COM', 'POOJA.BANSAL@ORACLE.COM', 'PUNITH.KUMAR@ORACLE.COM', 'SREENATH.SUKUMARAN@ORACLE.COM', 'DEEPTI.KESHAVA@ORACLE.COM', 'BIJU.VERGESE@ORACLE.COM', 'NEERA.DUTTA@ORACLE.COM', 'SUNEETHI.SAGAR@ORACLE.COM', 'DARSI.SRILATHA@ORACLE.COM', 'JESSICA.TRAN@ORACLE.COM', 'SHUNING.GAO@ORACLE.COM', 'MALA.BROWN@ORACLE.COM', 'CHITHRA.RADHAKRISHNAN@ORACLE.COM', 'SHUBHADA.MARSANDRE@ORACLE.COM', 'ANURADHA.KONDURI@ORACLE.COM', 'PREETI.X.KUMAR@ORACLE.COM', 'VEENA.X.NAGENDRA@ORACLE.COM', 'VINITA.VERMA@ORACLE.COM', 'SRASHTI.JAIN@ORACLE.COM', 'KAVITHA.KRISHNAN@ORACLE.COM', 'KHUSHBOO.ANAND@ORACLE.COM', 'ANKITA.RAIZADA@ORACLE.COM', 'ANURADHA.THYAGARAJAN@ORACLE.COM', 'SYAMO.MAHANKALO@ORACLE.COM', 'KSHAMA.SINGH@ORACLE.COM', 'AMRITA.X.MISHRA@ORACLE.COM', 'DEEPA.KRISHNAN@ORACLE.COM', 'HIMANSHU.KASHIKAR@ORACLE.COM', 'JASON.SHEN@ORACLE.COM', 'KAVITHA.SEKAR@ORACLE.COM', 'YULIYA.BUSHEL@ORACLE.COM', 'NEHA.DUBEY@ORACLE.COM', 'ANUSHA.HOOVANNA@ORACLE.COM', 'SIVA.MADHIRE@ORACLE.COM', 'UMA.NAGARJUNA.BANKA@ORACLE.COM', 'SONIA.WADHWA@ORACLE.COM', 'GEORGE.JACOB@ORACLE.COM', 'MARK.FARRIER@ORACLE.COM', 'NITIN.MISRA@ORACLE.COM', 'DURGESH.KOTWAL@ORACLE.COM', 'NANDA.KALATHIL@ORACLE.COM', 'SAYOOJ.LAXMAN@ORACLE.COM', 'SILPA.K@ORACLE.COM', 'DEEPANJALI.RAY@ORACLE.COM', 'SABITHA.LINGUTLA@ORACLE.COM', 'SRINIVASA.CHINNAPPA@ORACLE.COM', 'CHARUMATHI.NARASIMHAN@ORACLE.COM', 'ANTRO.DONISIOUS.ROY@ORACLE.COM', 'KUNAL.X.KACHRU@ORACLE.COM', 'MITHUN.CHACKAMPATH@ORACLE.COM', 'RASHMI.X.MELAGIRI@ORACLE.COM', 'RAJA.ANANTHAN@ORACLE.COM', 'HARIKRISHNA.NIMMARAJU@ORACLE.COM', 'NARESH.PATHI@ORACLE.COM', 'KALYANI.X.BANDI@ORACLE.COM', 'NEELESH.SINGH@ORACLE.COM', 'JAYASHREE.KENCHA@ORACLE.COM', 'DODDALA.LEELAMOHAN@ORACLE.COM', 'SHALINI.GAUR@ORACLE.COM', 'CHETANA.RAMANNA@ORACLE.COM', 'PRIYAMVADHA.MAHADEVAN@ORACLE.COM', 'ARTI.RAI@ORACLE.COM', 'NEERAJ.NANDWANA@ORACLE.COM', 'RAKESH.GORKAL@ORACLE.COM', 'SWEATHA.NAGESWARAN@ORACLE.COM', 'ANWITH.SHASHIKIRAN@ORACLE.COM', 'NARENDRA.NK.KUMAR@ORACLE.COM', 'TAPASWINI.SAHOO@ORACLE.COM', 'PRIYADHARSHINI.THOMAS@ORACLE.COM', 'ROHINI.SINHA@ORACLE.COM', 'RADHIKA.MURTHY@ORACLE.COM', 'RAJ.X.AGGARWAL@ORACLE.COM', 'BILL.MILLER@ORACLE.COM', 'LINDY.CHAN@ORACLE.COM', 'PREMALATHA.PUTTASWAMY@ORACLE.COM', 'VIJAY.SAI@ORACLE.COM', 'TIEN.NGUYEN@ORACLE.COM', 'JANE.LI@ORACLE.COM', 'SOWMIA.JAYARAJU@ORACLE.COM', '', 'PRASANNA.KUMAR.B.V@ORACLE.COM', '', 'TODD.SILVIUS@ORACLE.COM', 'SAMEENA.Y.PATEL@ORACLE.COM', 'ANDREW.LAN@ORACLE.COM', 'REDDY.SEKHAR@ORACLE.COM', 'PREMA.LINGAIAH@ORACLE.COM', 'PRAGATHI.KONDA@ORACLE.COM', 'KEITH.GRENIER@ORACLE.COM', 'PRAMOD.KALMANI@ORACLE.COM', 'JYOTIRMOYEE.PATRA@ORACLE.COM', 'NAINA.UMESH@ORACLE.COM', 'NIKAHAT.GHORI@ORACLE.COM', 'LAKSHMI.RAMYA.PULLABHATLA@ORACLE.COM', 'SWETHA.P.S@ORACLE.COM', 'ANIL.GOYAL@ORACLE.COM', 'VISHWANATH.NATARAJAN@ORACLE.COM', 'SMITHA.VENKATARAMANA@ORACLE.COM', 'KOUSHALENDRA.GUPTA@ORACLE.COM', 'DHARAMVRAT.MALIK@ORACLE.COM', 'VENKATESH.SESHADRI@ORACLE.COM', 'PIYUSHA.NAIK@ORACLE.COM', 'ARNAB.CHANDA@ORACLE.COM', 'ADITYA.THAKUR@ORACLE.COM', 'BHUMIREDDY.SRINIVASREDDY@ORACLE.COM', 'LAVANYA.GORREPATI@ORACLE.COM', 'RAGHAVENDRA.SHARMA@ORACLE.COM', 'SOMASHEKAR.GUDIPUTI@ORACLE.COM', 'PAVAN.VIJEENDRA@ORACLE.COM', 'PRUTHA.VASANTH.KUMAR@ORACLE.COM', 'FAIZ.MISTRY@ORACLE.COM', 'RUCHIR.SHARMA@ORACLE.COM', 'NIRMALSINH.JADHAV@ORACLE.COM', 'SOWMYA.MATHEW@ORACLE.COM', 'RICKY.SUN@ORACLE.COM', 'SUMMER.XIA@ORACLE.COM', 'MARTIN.YAN@ORACLE.COM', 'TING.X.LI@ORACLE.COM', 'HONGYING.WANG@ORACLE.COM', 'AARON.SHI@ORACLE.COM', 'XIONGJIAN.RUI@ORACLE.COM', 'QIZHI.XIA@ORACLE.COM', 'CHAITRA.CHOWDAPPA@ORACLE.COM', 'AMBER.GAO@ORACLE.COM', 'DAISY.ZHANG@ORACLE.COM', 'BALAJI.RAMASWAMY@ORACLE.COM', 'GANESH.SHIVAPRAKASH@ORACLE.COM', 'RABIC.MEERAN.KATHER.MYTHEEN@ORACLE.COM', 'LAVANYA.GOVINDASAMY@ORACLE.COM', 'ASHISH.AG.AGRAWAL@ORACLE.COM', 'SHUBHAM.SRIVASTAVA@ORACLE.COM', 'VIRENDRA.DESHMUKH@ORACLE.COM', 'SIVA.ANANTHA.KRISHNAN@ORACLE.COM', 'SIMAL.HANEEF@ORACLE.COM', 'V.VINAY.KOMPELLA@ORACLE.COM', 'BRIAN.KELLY@ORACLE.COM', 'JIAYU.QIAN@ORACLE.COM', 'RAKSHA.SONI@ORACLE.COM', 'YANXIA.HOU@ORACLE.COM', 'PETER.NGA@ORACLE.COM', 'BINDU.BOGANA@ORACLE.COM', 'ALEX.RUIZ.GARZA@ORACLE.COM', 'RAJAM.RAMASWAMY@ORACLE.COM', 'SAYANTANEE.DUTT@ORACLE.COM', 'DEEPTHI.ARTHANAYAKE@ORACLE.COM', 'PATRICK.MA@ORACLE.COM', 'JUDY.YE@ORACLE.COM', 'GANG.SHEN@ORACLE.COM', 'ROBERT.COOPER@ORACLE.COM', 'DAVID.JACKSON@ORACLE.COM', 'CARL.CASEY@ORACLE.COM', 'MARIEKA.THOMAS@ORACLE.COM', 'CHARLES.SIEGEL@ORACLE.COM', 'DEBORAH.CAYWOOD@ORACLE.COM', 'JANE.DOYLE@ORACLE.COM', 'ANDREW.MITCHELL@ORACLE.COM', 'JOHN.CORDANO@ORACLE.COM', 'KEN.DUFFY@ORACLE.COM') 
    and USR.USR_STATUS = 'Active';


--SELECT * FROM UD_ORCC_U WHERE ORC_KEY IN 
--update UD_ORCC_U set ud_orcc_u_supportnotes =ud_orcc_u_supportnotes||'SR#497386-846331288' WHERE ORC_KEY IN 
/*
Update oiu set ost_key = (select OST_KEY from ost where ost_status ='Disabled' and obj_key in 
(SELECT OBJ_KEY  FROM OST WHERE OST_KEY IN(SELECT OST_KEY FROM OIU WHERE ORC_KEY IN (7025481, 7024986, 7024944, 7024679, 7025019, 7024445, 7024917, 7024759, 7025305, 7024877, 7025526, 7024806, 7024822, 7025095, 7896102, 7025483, 7025405, 7024883, 7025163, 7910847, 7024677, 7025492, 7025538, 7024686, 7024479, 7025134, 7025426, 7025386, 7025103, 7024539, 7960980, 7025474, 7024816, 7025012, 7024695, 7024311, 7961001, 7024504, 7024430, 7025454, 8018670, 7025049, 7025462, 8208322, 8826481, 7025187, 9880455, 7998102, 8830871, 7024420, 9832546, 7024342, 7977224, 8505425, 9908976, 7024993, 7975069, 7909195, 8706638, 10347999, 9903668, 10588215, 7024930, 7025397, 8825696, 8064550, 7024977, 7025385, 7025349, 7024663, 8688515, 9815589, 8354744, 7024769, 7024578, 7024956, 8706234, 7024597, 7025360, 7025051, 7024411, 7024505, 9907070, 9816465, 7025437, 7025546, 10350723, 8982762, 8825742, 7024309, 7024421, 7024778, 8094478, 9896974, 10350911, 7025465, 10552986, 8708373, 8166576, 7024831, 8020039, 8084660, 7024405, 7024496, 7910459, 7025355, 7024358, 7025001, 7025445, 7025028, 9878554, 9855716, 10796788, 8828661, 10790630, 9831391, 10334752, 10624175, 8214894, 10636012, 9866382, 9825593, 8834203, 8687388, 8826097, 8834171, 9482706, 10600249, 10531798, 7025278, 7024765, 7024670, 7024321, 7024527, 7025379, 7025014, 7024811, 8021514, 7025480, 7025137, 7025540, 7024437, 7024444, 7025511, 7024776, 7025380, 7996884, 7025434, 7025256, 7025539, 7025456, 7024674, 7024337, 7025090, 7024486, 7025153, 7954234, 9502139, 7024906, 7025535, 7024662, 8481517, 7024828, 7024544, 8354743, 8981922, 7025339, 8213353, 8689786, 7025396, 8314520, 9888100, 8090294, 8084659, 8096906, 7025114, 7024731, 10356707, 10600259, 10546620, 7960984, 7025174, 8097032, 7025368, 7025065, 7024550, 7025155, 8826184, 8088643, 8094472, 10551322, 8222901, 8098569, 8095875, 10592417, 8213536, 8176546, 7025371, 8714319, 7024698, 7024898, 7024939, 7024838, 7024836, 9909913, 7025418, 7024840, 8081481, 7025495, 7025363, 7025025, 8064825, 7918563, 9855292, 7025040, 7024396, 7024717, 7025499, 10563071, 7025419, 7025079, 8176133, 7024943, 7025387, 8715209, 9848076, 8355224, 8099815, 10652273, 10572753, 7024443, 10560830, 10655964, 10564786, 7024950, 8063386, 8826112, 8828635, 8708995, 8835299, 7024881, 8706439, 7024536, 8510642, 9906315, 9853320, 7960985, 8023722, 9475022, 8483840, 8827241, 7025408, 7024741, 10787706, 7024322, 7025184, 8828642, 10531369, 8029064, 8841605, 10599798, 8354783, 7025260, 10576501, 7024469, 10552740, 8222765, 10362978, 7024440, 7024782, 7025330, 7025542, 8189796, 7024629, 10547958, 7025263, 7025211, 7024888, 7024969, 8095070, 8099127, 8173615, 7024714, 8166867, 7024398, 8091493, 10343618, 7024681, 8354737, 10786644, 8826040, 7024669, 7024664, 9860421, 8974242, 8214978, 7025448, 7025469, 8027941, 8481664, 8207909, 7910474, 7920390, 7025175, 8987777, 7025531, 7024771, 7025026, 7024710, 8825890, 10354836, 8508017, 8190150, 8837557, 7902191, 8826265, 8029597, 10529217, 9470841, 9847267, 7024850, 7024781, 7024360, 7024719, 9915226, 7025050, 7024665, 8481633, 7024344, 8482361, 8480699, 7025521, 7025059, 7024772, 8062511, 7025337, 7024901, 7025203, 7025497, 7024982, 7024656, 7025409, 7961013, 10588490, 7024666, 8084642, 9484877, 7025439, 9871300, 7024540, 8061691, 9877671, 8176800, 10548229, 9825499, 10352841, 10338998, 7025140, 8166586, 8825878, 8482429, 7024587, 7024839, 7025094, 9501312, 7025318, 9491281, 7024968, 8484252, 9897202, 9825726, 7025381, 8822927, 7024761, 7025322, 7024325, 8224723, 10587423, 7024661, 8093923, 9860264, 7024928, 7024592, 7025410, 10593672, 7024548, 8479207, 7024415, 8092663, 9473309, 7025104, 7024916, 8022468, 7024959, 8827343, 10786513, 9912819, 10542971, 8709104, 9824257, 7025328, 7975391, 7024880, 7024346, 9906504, 7025043, 7025244, 9861839, 7025093, 7025432, 7024985, 7025308, 8983069, 7975318, 8830606, 7024606, 7904441, 9869771, 7024672, 8815820, 8826096, 10611173, 9812327, 10359100, 8827004, 7024911, 9903684, 7024431, 10567145, 8842783, 8826253, 7025534, 9861897, 9831392, 7024815, 7024786, 8708290, 7024347, 7025514, 7025482, 7025173, 7911537, 8094846, 8492892, 7025391, 9829119, 9825591, 8481494, 8351905, 8079769, 8207192, 9803475, 8354782, 9853318, 10595044, 8029098, 10592329, 8986918, 7025071, 7025494, 8828263, 7024473, 7025042, 7025219, 8211372, 7025063, 8494388, 7025004, 8058876, 7025383, 7024649, 8709383, 8480961, 7025160, 8826462, 9825929, 8509758, 8227491, 7025447, 10786742, 8826086, 10546464, 10579763, 9484147, 10629672, 7024490, 7882417, 8177885, 9906468, 7025529, 7024820, 7875122, 7024633, 8500964, 10589387, 7025098, 7025152, 7024313, 7900227, 7914375, 8030663, 8176502, 8708627, 10620059, 7024591, 10616005, 8830304, 8092621, 8479633, 10598594, 9484027, 7025298, 9863186, 7025369, 8029012, 8492909, 7024427, 10551338, 8480841, 10783176, 8202059, 8820371, 9810477, 7024617, 7025372, 8986909, 8712692, 8059413, 8029079, 7024497, 8826283, 9829938, 7909035, 8214526, 8726993, 7025202, 7024339, 7024650, 7025431, 7025357, 8826091, 7024823, 8181450, 7025247, 8826111, 9825619, 8355234, 8187474, 8986910, 7910737, 7025331, 7024676, 8834238, 7025081, 10343619, 7024979, 8106256, 7024566, 7024870, 10548818, 7024422, 7024762, 8839853, 8839950, 7024980, 7024704, 8085642, 8842047, 7025197, 10588354, 9828858, 7024894, 7024558, 7024701, 8354380, 7024682, 7025320, 7024419, 7025254, 7024353, 7024833, 7025044, 9878903, 7025070, 9489293, 7025207, 7025361, 10553187, 8479686, 8830607, 7025131, 10358983, 8319184, 7024336, 8080879, 8832525, 7025266, 10360088, 7025190, 7891811, 7024667, 7025032, 7683367, 10786850, 7025008, 8211210, 8833694, 8321108, 7024736, 7024995, 7024876, 8830252, 9829214, 7025348, 8479583, 10567052, 9831390, 7025169, 8092830, 7024535, 8985957, 10548113, 8713575, 8479824, 8827113, 8227715, 8827766, 7024794, 8026285, 7024994, 7024841, 7024425, 7025524, 7025108, 8217140, 7025477, 8226659, 7025102, 9877992, 7024975, 8834200, 9803478, 8079742, 7025212, 8354728, 8489850, 8098126, 9502982, 7025194, 8826074, 9825584, 7025074, 9463487, 7025224, 8825034, 8688557, 10576109, 7024503, 8210634, 7024891, 7025135, 7025486, 9471177, 8831218, 10353031, 7025036, 7960972, 7024729)  )) ) 
WHERE ORC_KEY IN(7025481, 7024986, 7024944, 7024679, 7025019, 7024445, 7024917, 7024759, 7025305, 7024877, 7025526, 7024806, 7024822, 7025095, 7896102, 7025483, 7025405, 7024883, 7025163, 7910847, 7024677, 7025492, 7025538, 7024686, 7024479, 7025134, 7025426, 7025386, 7025103, 7024539, 7960980, 7025474, 7024816, 7025012, 7024695, 7024311, 7961001, 7024504, 7024430, 7025454, 8018670, 7025049, 7025462, 8208322, 8826481, 7025187, 9880455, 7998102, 8830871, 7024420, 9832546, 7024342, 7977224, 8505425, 9908976, 7024993, 7975069, 7909195, 8706638, 10347999, 9903668, 10588215, 7024930, 7025397, 8825696, 8064550, 7024977, 7025385, 7025349, 7024663, 8688515, 9815589, 8354744, 7024769, 7024578, 7024956, 8706234, 7024597, 7025360, 7025051, 7024411, 7024505, 9907070, 9816465, 7025437, 7025546, 10350723, 8982762, 8825742, 7024309, 7024421, 7024778, 8094478, 9896974, 10350911, 7025465, 10552986, 8708373, 8166576, 7024831, 8020039, 8084660, 7024405, 7024496, 7910459, 7025355, 7024358, 7025001, 7025445, 7025028, 9878554, 9855716, 10796788, 8828661, 10790630, 9831391, 10334752, 10624175, 8214894, 10636012, 9866382, 9825593, 8834203, 8687388, 8826097, 8834171, 9482706, 10600249, 10531798, 7025278, 7024765, 7024670, 7024321, 7024527, 7025379, 7025014, 7024811, 8021514, 7025480, 7025137, 7025540, 7024437, 7024444, 7025511, 7024776, 7025380, 7996884, 7025434, 7025256, 7025539, 7025456, 7024674, 7024337, 7025090, 7024486, 7025153, 7954234, 9502139, 7024906, 7025535, 7024662, 8481517, 7024828, 7024544, 8354743, 8981922, 7025339, 8213353, 8689786, 7025396, 8314520, 9888100, 8090294, 8084659, 8096906, 7025114, 7024731, 10356707, 10600259, 10546620, 7960984, 7025174, 8097032, 7025368, 7025065, 7024550, 7025155, 8826184, 8088643, 8094472, 10551322, 8222901, 8098569, 8095875, 10592417, 8213536, 8176546, 7025371, 8714319, 7024698, 7024898, 7024939, 7024838, 7024836, 9909913, 7025418, 7024840, 8081481, 7025495, 7025363, 7025025, 8064825, 7918563, 9855292, 7025040, 7024396, 7024717, 7025499, 10563071, 7025419, 7025079, 8176133, 7024943, 7025387, 8715209, 9848076, 8355224, 8099815, 10652273, 10572753, 7024443, 10560830, 10655964, 10564786, 7024950, 8063386, 8826112, 8828635, 8708995, 8835299, 7024881, 8706439, 7024536, 8510642, 9906315, 9853320, 7960985, 8023722, 9475022, 8483840, 8827241, 7025408, 7024741, 10787706, 7024322, 7025184, 8828642, 10531369, 8029064, 8841605, 10599798, 8354783, 7025260, 10576501, 7024469, 10552740, 8222765, 10362978, 7024440, 7024782, 7025330, 7025542, 8189796, 7024629, 10547958, 7025263, 7025211, 7024888, 7024969, 8095070, 8099127, 8173615, 7024714, 8166867, 7024398, 8091493, 10343618, 7024681, 8354737, 10786644, 8826040, 7024669, 7024664, 9860421, 8974242, 8214978, 7025448, 7025469, 8027941, 8481664, 8207909, 7910474, 7920390, 7025175, 8987777, 7025531, 7024771, 7025026, 7024710, 8825890, 10354836, 8508017, 8190150, 8837557, 7902191, 8826265, 8029597, 10529217, 9470841, 9847267, 7024850, 7024781, 7024360, 7024719, 9915226, 7025050, 7024665, 8481633, 7024344, 8482361, 8480699, 7025521, 7025059, 7024772, 8062511, 7025337, 7024901, 7025203, 7025497, 7024982, 7024656, 7025409, 7961013, 10588490, 7024666, 8084642, 9484877, 7025439, 9871300, 7024540, 8061691, 9877671, 8176800, 10548229, 9825499, 10352841, 10338998, 7025140, 8166586, 8825878, 8482429, 7024587, 7024839, 7025094, 9501312, 7025318, 9491281, 7024968, 8484252, 9897202, 9825726, 7025381, 8822927, 7024761, 7025322, 7024325, 8224723, 10587423, 7024661, 8093923, 9860264, 7024928, 7024592, 7025410, 10593672, 7024548, 8479207, 7024415, 8092663, 9473309, 7025104, 7024916, 8022468, 7024959, 8827343, 10786513, 9912819, 10542971, 8709104, 9824257, 7025328, 7975391, 7024880, 7024346, 9906504, 7025043, 7025244, 9861839, 7025093, 7025432, 7024985, 7025308, 8983069, 7975318, 8830606, 7024606, 7904441, 9869771, 7024672, 8815820, 8826096, 10611173, 9812327, 10359100, 8827004, 7024911, 9903684, 7024431, 10567145, 8842783, 8826253, 7025534, 9861897, 9831392, 7024815, 7024786, 8708290, 7024347, 7025514, 7025482, 7025173, 7911537, 8094846, 8492892, 7025391, 9829119, 9825591, 8481494, 8351905, 8079769, 8207192, 9803475, 8354782, 9853318, 10595044, 8029098, 10592329, 8986918, 7025071, 7025494, 8828263, 7024473, 7025042, 7025219, 8211372, 7025063, 8494388, 7025004, 8058876, 7025383, 7024649, 8709383, 8480961, 7025160, 8826462, 9825929, 8509758, 8227491, 7025447, 10786742, 8826086, 10546464, 10579763, 9484147, 10629672, 7024490, 7882417, 8177885, 9906468, 7025529, 7024820, 7875122, 7024633, 8500964, 10589387, 7025098, 7025152, 7024313, 7900227, 7914375, 8030663, 8176502, 8708627, 10620059, 7024591, 10616005, 8830304, 8092621, 8479633, 10598594, 9484027, 7025298, 9863186, 7025369, 8029012, 8492909, 7024427, 10551338, 8480841, 10783176, 8202059, 8820371, 9810477, 7024617, 7025372, 8986909, 8712692, 8059413, 8029079, 7024497, 8826283, 9829938, 7909035, 8214526, 8726993, 7025202, 7024339, 7024650, 7025431, 7025357, 8826091, 7024823, 8181450, 7025247, 8826111, 9825619, 8355234, 8187474, 8986910, 7910737, 7025331, 7024676, 8834238, 7025081, 10343619, 7024979, 8106256, 7024566, 7024870, 10548818, 7024422, 7024762, 8839853, 8839950, 7024980, 7024704, 8085642, 8842047, 7025197, 10588354, 9828858, 7024894, 7024558, 7024701, 8354380, 7024682, 7025320, 7024419, 7025254, 7024353, 7024833, 7025044, 9878903, 7025070, 9489293, 7025207, 7025361, 10553187, 8479686, 8830607, 7025131, 10358983, 8319184, 7024336, 8080879, 8832525, 7025266, 10360088, 7025190, 7891811, 7024667, 7025032, 7683367, 10786850, 7025008, 8211210, 8833694, 8321108, 7024736, 7024995, 7024876, 8830252, 9829214, 7025348, 8479583, 10567052, 9831390, 7025169, 8092830, 7024535, 8985957, 10548113, 8713575, 8479824, 8827113, 8227715, 8827766, 7024794, 8026285, 7024994, 7024841, 7024425, 7025524, 7025108, 8217140, 7025477, 8226659, 7025102, 9877992, 7024975, 8834200, 9803478, 8079742, 7025212, 8354728, 8489850, 8098126, 9502982, 7025194, 8826074, 9825584, 7025074, 9463487, 7025224, 8825034, 8688557, 10576109, 7024503, 8210634, 7024891, 7025135, 7025486, 9471177, 8831218, 10353031, 7025036, 7960972, 7024729);

(7025481, 7024986, 7024944, 7024679, 7025019, 7024445, 7024917, 7024759, 7025305, 7024877, 7025526, 7024806, 7024822, 7025095, 7896102, 7025483, 7025405, 7024883, 7025163, 7910847, 7024677, 7025492, 7025538, 7024686, 7024479, 7025134, 7025426, 7025386, 7025103, 7024539, 7960980, 7025474, 7024816, 7025012, 7024695, 7024311, 7961001, 7024504, 7024430, 7025454, 8018670, 7025049, 7025462, 8208322, 8826481, 7025187, 9880455, 7998102, 8830871, 7024420, 9832546, 7024342, 7977224, 8505425, 9908976, 7024993, 7975069, 7909195, 8706638, 10347999, 9903668, 10588215, 7024930, 7025397, 8825696, 8064550, 7024977, 7025385, 7025349, 7024663, 8688515, 9815589, 8354744, 7024769, 7024578, 7024956, 8706234, 7024597, 7025360, 7025051, 7024411, 7024505, 9907070, 9816465, 7025437, 7025546, 10350723, 8982762, 8825742, 7024309, 7024421, 7024778, 8094478, 9896974, 10350911, 7025465, 10552986, 8708373, 8166576, 7024831, 8020039, 8084660, 7024405, 7024496, 7910459, 7025355, 7024358, 7025001, 7025445, 7025028, 9878554, 9855716, 10796788, 8828661, 10790630, 9831391, 10334752, 10624175, 8214894, 10636012, 9866382, 9825593, 8834203, 8687388, 8826097, 8834171, 9482706, 10600249, 10531798, 7025278, 7024765, 7024670, 7024321, 7024527, 7025379, 7025014, 7024811, 8021514, 7025480, 7025137, 7025540, 7024437, 7024444, 7025511, 7024776, 7025380, 7996884, 7025434, 7025256, 7025539, 7025456, 7024674, 7024337, 7025090, 7024486, 7025153, 7954234, 9502139, 7024906, 7025535, 7024662, 8481517, 7024828, 7024544, 8354743, 8981922, 7025339, 8213353, 8689786, 7025396, 8314520, 9888100, 8090294, 8084659, 8096906, 7025114, 7024731, 10356707, 10600259, 10546620, 7960984, 7025174, 8097032, 7025368, 7025065, 7024550, 7025155, 8826184, 8088643, 8094472, 10551322, 8222901, 8098569, 8095875, 10592417, 8213536, 8176546, 7025371, 8714319, 7024698, 7024898, 7024939, 7024838, 7024836, 9909913, 7025418, 7024840, 8081481, 7025495, 7025363, 7025025, 8064825, 7918563, 9855292, 7025040, 7024396, 7024717, 7025499, 10563071, 7025419, 7025079, 8176133, 7024943, 7025387, 8715209, 9848076, 8355224, 8099815, 10652273, 10572753, 7024443, 10560830, 10655964, 10564786, 7024950, 8063386, 8826112, 8828635, 8708995, 8835299, 7024881, 8706439, 7024536, 8510642, 9906315, 9853320, 7960985, 8023722, 9475022, 8483840, 8827241, 7025408, 7024741, 10787706, 7024322, 7025184, 8828642, 10531369, 8029064, 8841605, 10599798, 8354783, 7025260, 10576501, 7024469, 10552740, 8222765, 10362978, 7024440, 7024782, 7025330, 7025542, 8189796, 7024629, 10547958, 7025263, 7025211, 7024888, 7024969, 8095070, 8099127, 8173615, 7024714, 8166867, 7024398, 8091493, 10343618, 7024681, 8354737, 10786644, 8826040, 7024669, 7024664, 9860421, 8974242, 8214978, 7025448, 7025469, 8027941, 8481664, 8207909, 7910474, 7920390, 7025175, 8987777, 7025531, 7024771, 7025026, 7024710, 8825890, 10354836, 8508017, 8190150, 8837557, 7902191, 8826265, 8029597, 10529217, 9470841, 9847267, 7024850, 7024781, 7024360, 7024719, 9915226, 7025050, 7024665, 8481633, 7024344, 8482361, 8480699, 7025521, 7025059, 7024772, 8062511, 7025337, 7024901, 7025203, 7025497, 7024982, 7024656, 7025409, 7961013, 10588490, 7024666, 8084642, 9484877, 7025439, 9871300, 7024540, 8061691, 9877671, 8176800, 10548229, 9825499, 10352841, 10338998, 7025140, 8166586, 8825878, 8482429, 7024587, 7024839, 7025094, 9501312, 7025318, 9491281, 7024968, 8484252, 9897202, 9825726, 7025381, 8822927, 7024761, 7025322, 7024325, 8224723, 10587423, 7024661, 8093923, 9860264, 7024928, 7024592, 7025410, 10593672, 7024548, 8479207, 7024415, 8092663, 9473309, 7025104, 7024916, 8022468, 7024959, 8827343, 10786513, 9912819, 10542971, 8709104, 9824257, 7025328, 7975391, 7024880, 7024346, 9906504, 7025043, 7025244, 9861839, 7025093, 7025432, 7024985, 7025308, 8983069, 7975318, 8830606, 7024606, 7904441, 9869771, 7024672, 8815820, 8826096, 10611173, 9812327, 10359100, 8827004, 7024911, 9903684, 7024431, 10567145, 8842783, 8826253, 7025534, 9861897, 9831392, 7024815, 7024786, 8708290, 7024347, 7025514, 7025482, 7025173, 7911537, 8094846, 8492892, 7025391, 9829119, 9825591, 8481494, 8351905, 8079769, 8207192, 9803475, 8354782, 9853318, 10595044, 8029098, 10592329, 8986918, 7025071, 7025494, 8828263, 7024473, 7025042, 7025219, 8211372, 7025063, 8494388, 7025004, 8058876, 7025383, 7024649, 8709383, 8480961, 7025160, 8826462, 9825929, 8509758, 8227491, 7025447, 10786742, 8826086, 10546464, 10579763, 9484147, 10629672, 7024490, 7882417, 8177885, 9906468, 7025529, 7024820, 7875122, 7024633, 8500964, 10589387, 7025098, 7025152, 7024313, 7900227, 7914375, 8030663, 8176502, 8708627, 10620059, 7024591, 10616005, 8830304, 8092621, 8479633, 10598594, 9484027, 7025298, 9863186, 7025369, 8029012, 8492909, 7024427, 10551338, 8480841, 10783176, 8202059, 8820371, 9810477, 7024617, 7025372, 8986909, 8712692, 8059413, 8029079, 7024497, 8826283, 9829938, 7909035, 8214526, 8726993, 7025202, 7024339, 7024650, 7025431, 7025357, 8826091, 7024823, 8181450, 7025247, 8826111, 9825619, 8355234, 8187474, 8986910, 7910737, 7025331, 7024676, 8834238, 7025081, 10343619, 7024979, 8106256, 7024566, 7024870, 10548818, 7024422, 7024762, 8839853, 8839950, 7024980, 7024704, 8085642, 8842047, 7025197, 10588354, 9828858, 7024894, 7024558, 7024701, 8354380, 7024682, 7025320, 7024419, 7025254, 7024353, 7024833, 7025044, 9878903, 7025070, 9489293, 7025207, 7025361, 10553187, 8479686, 8830607, 7025131, 10358983, 8319184, 7024336, 8080879, 8832525, 7025266, 10360088, 7025190, 7891811, 7024667, 7025032, 7683367, 10786850, 7025008, 8211210, 8833694, 8321108, 7024736, 7024995, 7024876, 8830252, 9829214, 7025348, 8479583, 10567052, 9831390, 7025169, 8092830, 7024535, 8985957, 10548113, 8713575, 8479824, 8827113, 8227715, 8827766, 7024794, 8026285, 7024994, 7024841, 7024425, 7025524, 7025108, 8217140, 7025477, 8226659, 7025102, 9877992, 7024975, 8834200, 9803478, 8079742, 7025212, 8354728, 8489850, 8098126, 9502982, 7025194, 8826074, 9825584, 7025074, 9463487, 7025224, 8825034, 8688557, 10576109, 7024503, 8210634, 7024891, 7025135, 7025486, 9471177, 8831218, 10353031, 7025036, 7960972, 7024729)*/

---ITAS
desc ud_orna_u;
select * from ud_itas_u where ud_itas_u_username ='HARISH.GRANDHI@ORACLE.COM';

SELECT * FROM UD_FLEM_U;
SELECT * FROM UD_FLEM_p;

SELECT * FROM OIM_BLKLD_EX_UDFLE1;
SELECT * FROM UD_ITAS_U WHERE REQUEST_KEY =40082;
SELECT * FROM UD_ITAS_P WHERE orc_key =3886529 ;
SELECT * FROM UD_ITAS_M;
select UD_ITAS_P_TARGET_RESOURCE_UID from UD_ITAS_P where UD_ITAS_P_KEY =222;

SELECT * FROM UD_ITAS_U where UD_ITAS_U_USERNAME='SUDHAGAR.SHANMUGAVADIVELU@ORACLE.COM';
update UD_ITAS_U set UD_ITAS_U_USERNAME='SUDHAGAR.SHANMUGAVADIVELU@ORACLE.COM' where UD_ITAS_U_USERNAME='SUTHAGAR.SHANMUGA.VADIVELU@ORACLE.COM';


desc UD_FLEM_U;

Update Orc Orc
SET ORC_TOS_INSTANCE_KEY = (SELECT UD_FLEM_U_NAME UD FROM UD_FLEM_U UD WHERE UD.ORC_KEY=ORC.ORC_KEY)
WHERE ORC_KEY IN (SELECT ORC_KEY FROM UD_FLEM_U) ;

select * from ud_fedem_u;
select usr_key from usr where usr_email ='jamal.faik@oracle.com';

 select * from catalog where entity_key in (
select ent_list_key from ent_list where ent_list_key in (
SELECT eh.ent_list_key FROM ENT_ASSIGN_HIST EH, ENT_LIST EL
WHERE 
USR_KEY=101837 and 
el.ent_list_key=eh.ent_list_key
--and el.ent_list_key=114765
and eh.usr_key=101837
and valid_to_date > sysdate-10
minus
SELECT eh.ent_list_key FROM ENT_ASSIGN EH, ENT_LIST EL
WHERE 
el.ent_list_key=eh.ent_list_key
and eh.usr_key=101837
))
and is_requestable=1;
;


select * from ent_assign where ent_list_key = 731837;

select usr_login, ent_display_name, ent_description, valid_from_date, valid_to_date
--ea.*, EL.*
FROM ENT_LIST EL, ENT_ASSIGN_HIST EA, USR
where EL.ENT_LIST_KEY=EA.ENT_LIST_KEY
AND USR.USR_KEY=EA.USR_KEY
AND USR_LOGIN LIKE UPPER('JAMAL.FAIK@ORACLE.COM')
and valid_to_date > sysdate-10
--and ENT_DESCRIPTION ='ITAS Provisioning'
--and ent_display_name like '%Oracle Marketing Analytics User%'
order by valid_to_date;




SELECT * FROM ENT_ASSIGN_HIST EH where eh.usr_key=250994;


select rownum, 'SAURABH.GUPTA@ORACLE.COM', 'PROVISION_ENTITLEMENT', entity_display_name, entity_description, 'SR#150607-000581'
from catalog where entity_key in (
select ent_list_key from ent_list where ent_list_key in (
SELECT eh.ent_list_key FROM ENT_ASSIGN_HIST EH, ENT_LIST EL
WHERE 
EL.ENT_LIST_KEY=EH.ENT_LIST_KEY
AND EH.USR_KEY=35063
--and el.ENT_LIST_KEY = 
and valid_to_date>sysdate-30
minus
SELECT eh.ent_list_key FROM ENT_ASSIGN EH, ENT_LIST EL
WHERE 
EL.ENT_LIST_KEY=EH.ENT_LIST_KEY
AND EH.USR_KEY=35063
)) and is_requestable=1;


select * from ud_fedem_u;

select * from oiu where orc_key in (select orc_key from ud_orcc_u);

select * from ost where obj_key  in (1008);


---
select * from UD_DMWB_U where REQUEST_KEY=3680240;
select * from UD_DMWB_U where  orc_key=12537810;

---BUGDB
SELECT * FROM UD_BUGD_U WHERE UD_BUGD_U_USERNAME='AASHKA.KOTECHA@ORACLE.COM';
SELECT * FROM UD_BUGD_U WHERE ORC_KEY IN (8479981,8710777,8276763);
SELECT * FROM UD_BDNA_U WHERE UD_BDNA_U_BEEHIVE_MAIL='PDITSECO_SECOPS_WW_GRP@ORACLE.COM';
update UD_BDNA_U set UD_BDNA_U_SUPPORT_notes=UD_BDNA_U_SUPPORT_notes||'SR#160707-000069' where orc_key =11138383;

select * from ud_bdna_u where upper(UD_BDNA_U_OLD_BEEHIVE_MAIL) like '%STORAGE_HBA_QE_CN_GRP%';

select * from ud_orcc_u where UD_ORCC_U_SUPPORTNOTES ='SR#497386-846331288' and orc_key in (7024469, 7025330, 7024497, 7024629, 7025481, 7025263, 7024986, 7024944, 7024539, 7025379, 7024717, 7025499, 7024549, 7024662, 7025065, 7025093, 7025432, 7024985, 7024550, 7025534, 7025079, 7025080, 7024769, 7025108, 11183338, 7024991, 7025396, 7025114, 7024731, 9831509, 7024616, 7025483, 7024346, 7024670, 7025043, 7025260, 7024901, 7025014, 7025408, 7024741, 7024322, 7025203, 7960985, 7025337, 7024473, 7025042, 7025497, 7025351, 7998102, 7024445, 7024649, 7025538, 7024674, 7025347, 7025032, 7683367, 7024664, 7024422, 7024566, 7025495, 7024370, 9877619, 7025025, 7025448, 7024527, 8228371, 7024441, 7025040, 7025409, 7875122, 7024633, 7977224, 7024714, 8081783, 7024325, 7024336, 7024898, 7024939, 7025278, 7025469, 7025419, 7024849, 7024877, 7025184, 7025363, 7024969, 7024425, 7025524, 7025494, 7024486, 7024765, 7024916, 7025212, 7024496, 7025511, 7024761, 7025387, 7025418, 7025348, 7024840, 7025028, 7025151, 7025049, 7904441, 7025094, 7025474, 7024558, 7025477, 8018670, 7024841, 7025001, 7024421, 7024930, 7025369, 7025268, 7024956, 7910737, 7024411, 7025454, 7024396, 7024444, 7024881, 7025059, 7024661, 7024850, 7024360, 7914375, 8029079, 7025050, 7025163, 7025169, 7024838, 7025540, 7024387, 7024759, 7024891, 7025012, 7025445, 7024883, 7024440, 7024782, 7024536, 7025542, 7024378, 7960980, 7025397, 7025202, 7025320, 7024606, 7025140, 7025104, 7024959, 7909195, 7025456, 7025095, 7025368, 7025322, 7024771, 7024710, 8028562, 7025381, 7025211, 7025152, 7024313, 7024339, 7900227, 7025197, 7025521, 7024400, 7025070, 7025051, 7024505, 7025090, 7024736, 7024917, 7024676, 7024666, 7025439, 7024479, 7025492, 7024398, 7025063, 7024794, 7024885, 9909913, 7024639, 7024836, 7024928, 7024592, 7024776, 7024589, 7025410, 11183309, 7024682, 7024762, 7024548, 7024415, 7024344, 7024993, 7024420, 7025036, 7024634, 7025010, 7024816, 7024774, 7024490, 7882417, 7024994, 7025434, 7025465, 7024503, 7024427, 7024587, 7025535, 7025429, 7025405, 7025174, 7024659, 7025305, 7025514, 7024672, 7025318, 7025482, 7024578, 7025360, 7910847, 7024704, 7025173, 7024894, 7025380, 7911537, 7024617, 7025372, 7025256, 7024701, 7025247, 7025486, 7024353, 7024695, 7025044, 7024979, 7025529, 7024342, 7024781, 7996884, 7024686, 7025391, 7025383, 7024337, 7024669, 7954234, 7024870, 7025008, 7025539, 7024679, 7024656, 7025026, 7025098, 7024399, 7024597, 7024968, 7025437, 7024677, 7961013, 7025187, 7024453, 7024356, 7025546, 7024621, 7025160, 7025447, 7024778, 7025266, 7024562, 8985957, 7024309, 7025491, 7024980, 7025473, 7025190, 7025134, 7024358, 7975069, 7024591, 7025431, 7025357, 7025135, 7024823, 7025355, 7024729, 7025298, 7025194, 7025074, 7024833, 7896102, 7024678, 7025171, 7024839, 7025155, 7025004, 7910474, 7025328, 9825649, 7025480, 7025137, 11183358, 7024419, 7024977, 7025254, 7024544, 7024999, 7025331, 7025385, 7961001, 7024504, 7025207, 7025019, 8028532, 7025153, 7025349, 7025081, 7024663, 7910459, 7024828, 7025361, 7024430, 7024535, 7025244, 7024681, 7024943, 7025219, 7024982, 7025103, 7024698, 7024951, 7025265, 7025339, 7024707, 7025131, 7024995, 7024876, 7024786, 7024630, 7902191, 7975318, 7024719, 7024815, 7025526, 7918563, 7024888);


select * from usr where usr_status = 'Disabled' and usr_update between (sysdate-8 and sysdate-39) ;
-------------Fusion Apps Stage

select * from ud_faps_u where UD_FAPS_U_ITRESOURCE=11426;

desc ud_faps_u;

select * from svr where svr_name like 'Fusion Apps CRM%';
select * from svr where svr_key in (11426);

--------------Bulk load


select * from OIM_BLKLD_LOG
--where msg like '%WHERE%TABLE_NAME%'
where log_level ='PROGRESS_MSG'
order by msg_seq_no desc;
------------powerbroker

select * from UD_PBKR_U where UD_PBKR_U_username='gobrown';

select * from UD_PBKR_p  where orc_key=14060025;

Update Orc Orc
set orc_tos_instance_key = (select UD_PBKR_U_username ud from UD_PBKR_U ud where ud.orc_key=orc.orc_key)
WHERE ORC_KEY IN (14060025) ;

select * from orc where orc_key in (14060025);
select UD_PBKR_U_username ud from UD_PBKR_U ud where ud.orc_key=14060025;

-------------------Telephony 
select * from ud_tele_u where request_key =20502174  ;

select ud_tele_u_username, ud_tele_u_phone_number from ud_tele_u where ud_tele_u_username in ('ROBERT.PRENTISS@ORACLE.COM');
select * from ud_tele_u where ud_tele_u_username in ('ROBERT.PRENTISS@ORACLE.COM','MONICA.LEE@ORACLE.COM');

update ud_tele_u set ud_tele_u_work_country='SG',ud_tele_u_support_notes=ud_tele_u_support_notes||'SR#190610-000021' where request_key =20502174  ;

----ICSA
select * from ud_icsa_usr where orc_key in (17809656,
17801905,
17801253,
17801130);

select * from ud_icsa_usr where request_key =11061808   ;

select * from UD_ICSA_UGP where orc_key =18487154;

select * from ud_icsa_usr where ud_icsa_usr_email ='viswanatha.basavalingappa@oracle.com'   ;
select * from ud_icsa_usr where ud_icsa_usr_email ='george.xie@oracle.com'   ;

select * from ud_icsa_ugp where orc_key=17681162;

update ud_icsa_usr set ud_icsa_usr_unique_id='8289dbce316e4835a8629f05ee2a900f'  where request_key =17503259;

-----CIAP---


SELECT * FROM UD_CIAP_U;
SELECT * FROM UD_CIAP_P WHERE UD_CIAP_P_PRIVILEGE IN ('2794~303','2794~502');
SELECT * FROM UD_CIAP_R;

desc UD_CIAP_P;

select OST_KEY,orc_key from OIU where  ORC_KEY in (11326458, 11339405, 11328685, 11230329, 11169128, 11242805, 11280577, 11311329, 11311238, 11297175, 11299371, 11297176, 11238218, 11205772, 11205589, 11204804, 11205773, 11204965, 11179277, 11204582, 11281652, 11272741, 11240679, 10731798, 10728828, 11230328, 11276264, 11228415, 11159305, 11238486, 11238487, 11225770, 11178831, 11208872, 11208702, 11162510, 11200895, 11169439, 11162513, 11156787, 11190028, 11169731, 11178237, 11178836, 11179278, 11179630, 11178238, 11158419, 11171981, 11172691, 11173985, 11169731, 11173699, 11172412, 11174561, 11171977, 11173988, 11172688, 11173702, 11174718, 11169439, 11165948, 11173698, 11140509, 11148757, 11140936, 11141292, 11140994, 11140934, 11140508, 11141077, 11140509)  ;
SELECT * FROM OST WHERE OST_KEY IN (2875);
select * from OST where obj_key in (1427);

<table_name>_seq.nextval

select * from  apsoim.BEEHIVEGRP_BULKMEM_ADDREMOVE bh, usr usr
where
usr.usr_key=bh.beneficiary_usr_key
and request_key= 2046968
AND REQUEST_KEY IS NOT NULL AND
batch_key in (114361,114404,114405,114358,114357,114410,114402,114360,114408,114355,114359,114411,114406,114403,114356,114409,114407);

---------------------------

select * from ud_gcca_usr;
----------------------------------
select * from UD_LSYP_USR order by ORC_KEY desc;
SELECT * FROM UD_LSYP_USR where UD_LSYP_USR_USERID='adfbuild';
adfbuild
SELECT * FROM UD_LSYP_USR where ud_lsyp_usr_email='amarinder.bindra@oracle.com' order by orc_key desc;

SELECT * FROM UD_LSYP_USR where ud_lsyp_usr_unique_id is not null order by orc_key desc;

--REJECTED TASKS

SELECT OSI.ORC_KEY,
  mil.mil_name,
  SCH.SCH_STATUS,
  --OSI.OSI_ASSIGNED_DATE ,
  to_char(OSI.OSI_ASSIGNED_DATE, 'Dy DD-Mon-YYYY HH24:MI:SS'),
  SCH.SCH_DATA,
  SCH.SCH_key,
  AI.APP_INSTANCE_DISPLAY_NAME,
  usr.usr_login,usr.usr_status,
  SUBM.USR_LOGIN,
  SUBM.USR_DISPLAY_NAME
  --ur.usr_
FROM osi,
  sch,
  mil,
  OIU OIU ,
  app_instance ai,
  usr usr,
  usr subm
WHERE osi.sch_key               = sch.sch_key
AND sch.SCH_CREATEBY            =subm.usr_key
AND OSI.MIL_KEY                 = MIL.MIL_KEY
AND OIU.ORC_KEY                 =OSI.ORC_KEY
AND AI.APP_INSTANCE_KEY         =OIU.APP_INSTANCE_KEY
and oiu.usr_key                 =usr.usr_key
--AND USR.USR_STATUS             ='Disabled'
--and USR.USR_UDF_EMPLOYEE_SUBTYPE  ='CONTRACTOR-BILLABLE'
--AND USR.USR_LOGIN  IN ('AITDB_DBL_TBUREG@ORACLE.COM')
--and ai.app_instance_display_name like  ('Kerberos%')
AND MIL.MIL_NAME   like 'Add Privilege or Grant%'
AND SCH.SCH_STATUS in ('R')
AND SCH.SCH_DATA in ('10')
--AND SCH.SCH_REASON in ('ERROR')
and osi.osi_assigned_date > sysdate-1/2
and OSI.ORC_KEY in (11346597, 11543049, 19320764, 19320758, 19320809, 19320796, 19320767, 19320804, 19320760, 19320842, 19320768, 19320771, 19320807, 19320765, 19320800, 19320845, 19320762, 19320763, 19320773, 19320801, 19320813, 19320839, 19320844, 19320846, 19320769, 19320838, 19320841, 19320798, 19320805, 19320808, 19320797, 19320766, 19320806, 19320840, 19320810, 19320811, 19320836, 19320802, 19320761, 19320772, 19320799, 19320759, 19320835, 19320843, 19320774, 19320812, 19320837, 19320757, 19320770, 19320847, 19320795, 19320803, 19320814, 19320789, 19320791, 19320784, 19320790, 19320781, 19320783, 19320748, 19320855, 19320786, 19320778, 19320782, 19320792, 19320780, 19320775, 19320754, 19320745, 19320751, 19320785, 19320787, 19320749, 19320794, 19320752, 19320856, 19320750, 19320753, 19320788, 19320777, 19320776, 19320746, 19320779, 19320744, 19320747, 19320793, 19320704, 19320820, 19320708, 19320875, 19320705, 19320816, 19320823, 19320713, 19320725, 19320723, 19320724, 19320706, 19320710, 19320817, 19320815, 19320821, 19320827, 19320818, 19320829, 19320830, 19320832, 19320709, 19320714, 19320834, 19320819, 19320702, 19320707, 19320711, 19320822, 19320826, 19320824, 19320831, 19320703, 19320712, 19320833, 19320825, 19320828)
--and osi.orc_key in (14651181, 14651227, 14651232, 14651281, 14651100, 14651140, 14651141, 14651146, 14651175, 14651178, 14651217, 14651230, 14651144, 14651182, 14651189, 14651222, 14651231, 14651273, 14651274, 14651277, 14651278, 14651283, 14651284, 14651287, 14651291, 14651357, 14651358, 14651361, 14651362, 14651367, 14651184, 14651276, 14651289, 14651413, 14651414, 14651415, 14651417, 14651421, 14651422, 14651423, 14651363, 14651366, 14843187, 14888743, 14975418, 14651096, 14651098, 14651109, 14651133, 14651138, 14651139, 14651148, 14651176, 14651187, 14651419, 14651420, 14651104, 14651147, 14651177, 14651188, 14651213, 14651221, 14651226, 14651279, 14651280, 18762163, 16585159, 16660448, 18973286, 19006653, 19318150, 19318278, 16498192, 17776211, 19317987, 19318147, 19245652, 19317979, 17090459, 19318139, 19318446, 19318453, 19317806, 19317811, 19317975, 19318285, 19318436, 17763522, 19317809, 19318290, 15754014, 16276819, 17115310, 19317669, 17610552, 15872908, 16921667, 19311364, 19318292, 19318442, 15867512, 18813745, 19317978, 19318283, 19317989, 19318151, 19318449, 15726221, 17559651, 17768322, 15726001, 16822197, 16706583, 19317977, 19318284, 19318441, 19318448, 17861477, 18962732, 19318143, 15545124, 16524803, 18861097, 18860909, 19297922, 17844813, 18583080, 18963787, 19317993, 19318145, 19318287, 16803553, 17045389, 19041493, 17700761, 18978071, 19281396, 19317981, 16703927, 19317984, 19317990, 19317994, 19318277, 19317992, 19318140, 17909852, 18860880, 19318438, 19318447, 19318450, 19318137, 19318152, 19318288, 19317988, 19318138, 19318144, 17672108, 19317808, 19317810, 19317976, 19317983, 19317986, 19318135, 19318142, 19318443, 19318451, 17050576, 17159736, 17689400, 18818535, 19317985, 19317991, 15708329, 16716372, 17683333, 19251783, 19317895, 19317812, 19317980, 19318286, 19318294, 19318445, 19318452, 16703113, 17682602, 17701465, 16411900, 16668723, 19317596, 19317287, 19318141, 19318282, 15421393, 17160149, 17403932, 15475827, 16346022, 17843455, 19317833, 19317807, 19317813, 19317982, 16603760, 19317834, 16471226, 19317918, 19317929, 19318040, 19318090, 19318161, 19318198, 19318237, 19318397, 15424561, 19317876, 19317943, 19318012, 19318014, 19318093, 19318170, 19318209, 19318238, 19318251, 19318266, 19318274, 19318309, 19318310, 19318378, 16588929, 19318002, 17690151, 17864724, 19318043, 19318129, 19318195, 19318262, 19318295, 19318335, 19318428, 19318520, 17438843, 19318158, 19318306, 19318345, 19317886, 19317928, 19318131, 19318245, 19318380, 19318423, 19318496, 19318522, 19318524, 19318547, 16345656, 17119021, 17469591, 19317873, 19317892, 19317926, 19318077, 19318214, 19318243, 19318386, 19318431, 19318516, 19318536, 17810394, 19318124, 17682456, 19317884, 19317939, 19317998, 19318011, 19318052, 19318081, 19318118, 19318133, 19318173, 19318273, 19318303, 19318376, 17825761, 19240429, 19318058, 19318076, 19318123, 19318157, 16445578, 19317999, 17290151, 18779969, 19317680, 19317880, 19317942, 19318013, 19318160, 19318312, 19318354, 19318416, 19318499, 17489031, 19317888, 19317944, 19318038, 19318055, 19318210, 19318244, 19318296, 19318427, 19318507, 19318512, 19318535, 19318553, 19318554, 16587113, 19318037, 19318056, 19318125, 19318269, 19318298, 19318302, 19318340, 19318346, 19317916, 19318036, 19318050, 19318080, 19318155, 19318299, 19318341, 19318353, 19318432, 19318509, 19318534, 19318545, 19318575, 19317698, 17451231, 19317954, 19318054, 19318088, 19318159, 19318393, 17584353, 18950166, 19318047, 19318067, 19318082, 19318117, 19318130, 19318164, 19318171, 16276786, 17584408, 17693909, 19317921, 19318066, 19318115, 16284364, 19317920, 19317945, 19318383, 19318424, 19317882, 19317931, 19317947, 19318041, 19318068, 19318211, 19318213, 19318248, 19318307, 19318472, 19317874, 19317889, 19317934, 19317997, 19318003, 19318006, 19318086, 19317779, 19317879, 19317951, 19318044, 19318069, 19318120, 19318126, 19318166, 19318174, 19318240, 19318500, 19318527, 19318548, 18972977, 19317919, 19317941, 19318009, 19318035, 19318242, 19318308, 16927332, 19317923, 19318387, 19318433, 19318497, 19318518, 18030050, 18030053, 19317927, 19318311, 19318539, 15486946, 15719249, 17686357, 19317881, 19318049, 19318060, 19318075, 19318199, 19317893, 19318039, 19317878, 19317925, 19317936, 19318010, 19318062, 19318083, 19318168, 19318201, 19318236, 19318078, 19318471, 19318537, 19317890, 19317930, 19317949, 19318206, 19318389, 16363427, 19317935, 19318000, 19318045, 19318064, 19318085, 19318132, 19318172, 19318419, 19318501, 19318541, 19318544, 16276834, 18030093, 19317996, 19318305, 19318344, 19318425, 19318498, 19318525, 19317883, 19317894, 19318059, 19318506, 19318529, 19318552, 19318578, 17507461, 17568697, 19297071, 19318457, 19318546, 19041385, 19318514, 19318549, 17844687, 19317933, 19317953, 18779824, 16564126, 19317887, 18030054, 19004323, 19072852, 19318134, 19318167, 19318576, 19318415, 19318502, 19318528, 19318538, 19318550, 17263971, 18978197, 19318063, 19318079, 19318119, 19318128, 19318165, 19318169, 19318417, 19318434, 19318473, 19318515, 19318517, 19318526, 18769627, 19318127, 19318532, 19318551, 19318004, 19318048, 19318071, 19318116, 19318429, 16740070, 19318121, 17263947, 16490686, 17575116, 19318005, 19318007, 19318053, 19318074, 19318246, 19318313, 19318337, 19318377, 19318430, 19318513, 17348875, 19318089, 19318241, 19318057, 19318249, 19318301, 19318347, 17668182, 19317877, 19317995, 19318046, 19318073, 19318122, 19318239, 19318314, 19318381, 19317891, 19317948, 19318510, 19317885, 19317937, 19318051, 19318072, 19318270, 19318304, 19318343, 19317875, 19317915, 19317952, 19318065, 19318087, 19318163, 19318196, 19318390, 19318464, 19318521, 19318542, 15456510, 19317924, 19318092, 19318162, 19318200, 19318339, 19318402, 19318495, 19318523, 16743004, 18774683, 19317938, 19317940, 19318001, 19318008, 19318070, 19318265, 19318297, 19318336, 19318091, 19318300, 19318348, 19318084, 19318156, 19318250, 19318531, 19318519, 18818571, 18818572, 19318392, 19318460, 19318530, 19317917, 19317922, 19317932, 19317946, 19318338, 17274072, 19318094, 19318197, 19318176, 19318184, 19318188, 19318358, 19318365, 19318371, 19318374, 19317840, 19317848, 19318359, 19318367, 19318555, 19318559, 19317845, 19318558, 19317850, 19317959, 19318190, 19318372, 19318556, 19317956, 19317962, 19317957, 19317965, 19317908, 19318016, 19318329, 19318477, 19318481, 19318100, 19318224, 19318234, 19318486, 19318493, 19317903, 19318028, 19318095, 19318099, 19318215, 19318218, 19318219, 19318323, 19318331, 19318334, 19318492, 19318029, 19318096, 19318105, 19318110, 19317912, 19318024, 19318034, 19318104, 19318226, 19318228, 19318232, 19317910, 19317913, 19318023, 19318031, 19318102, 19318233, 19318321, 19318328, 19318480, 19318485, 19317911, 19318017, 19317898, 19317906, 19318021, 19318316, 19318325, 19318476, 19318482, 19318483, 19318489, 19317909, 19318015, 19318025, 19318030, 19318315, 19317902, 19318097, 19318106, 19318112, 19318027, 19318033, 19318103, 19318022, 19318020, 19318317, 19317907, 19317914, 19318026, 19318032, 19318107, 19318113, 19317900, 19317904, 19318019, 19318114, 19318223, 19318229, 19317896, 19318101, 19318111, 19318217, 19318225, 19318230, 19318490, 19317899, 19318491, 19317897, 19317905, 19318018, 19318098, 19318108, 19318231, 19318319, 19318332, 19318484, 19318487, 19317901, 19318479, 19318488, 19317972, 19317849, 19317955, 19317966, 19317971, 19318183, 19318175, 19318182, 19317970, 19318189, 19318194, 19318364, 19318369, 19318373, 19318557, 19317846, 19317851, 19317958, 19317968, 19317973, 19318177, 19317841, 19317853, 19317960, 19317854, 19317964, 19318355, 19317842, 19317852, 19317961, 19317844, 19317847, 19318357, 19317839, 19317967, 19317969, 19317843, 19317963, 19318356)
--and sch.sch_data ='INVALID_CREDENTIAL'
--and SCH.SCH_key in (113772095)
order by OSI_ASSIGNED_DATE desc
;

select * from oim_support.user_accounts where app_instance_display_name in ('OPC Cloud Server Account') 
and ost_status in ('Provisioned','Enabled','Provisioning','Revoked')
--and usr_login in ('RATNA.MANOGNYA.MANDAVA@ORACLE.COM')
;

update sch set sch_status='X' where sch_key in (112684344);

select * from oim_support.user_ent where ent_display_name in ('Oracle Click2Chat Service Cloud Tier 1 Agent') and usr_udf_management_chain like '%CHIRAG.ANDANI@ORACLE.COM%'
and ent_status in ('Provisioned','Enabled','Disabled');

select * from oim_support.user_ent where  ent_status in ('In Progress')
and ent_description in ('Global Enterprise Cloud - Production')
and usr_login in ('DEEPAK.SH.SHARMA@ORACLE.COM')
;

select * from oim_support.user_accounts where app_instance_display_name in ('SAML IDCS Stage') 
and ost_status in ('Provisioned','Enabled','Disabled')
and usr_login in ('ANALUISA.GOMEZ@ORACLE.COM', 'ANNA.HUNTER@ORACLE.COM', 'CARLA.DILEO@ORACLE.COM', 'DANIELA.CASTRO@ORACLE.COM', 'DIEGO.CASTANEDA@ORACLE.COM', 'JAMES.KEESE@ORACLE.COM', 'JESSICA.STENGER@ORACLE.COM', 'KAREN.ADDEZIO@ORACLE.COM', 'KATHLEEN.LAWRENCE@ORACLE.COM', 'LEIGHANE.CREWSE@ORACLE.COM', 'RUI.BRANCO@ORACLE.COM');
;



select * from UD_ECFX_USR where orc_key in (17012183, 16250712, 16416205, 16416206, 16251393, 16251267, 16291331, 16236824, 16063290, 16065184, 16062949, 16062897, 16062758, 14813832, 16524971, 16470696, 16401442, 16416239, 16416526, 16538698, 16279615, 16554202, 16264256, 16807166, 16553364, 16280898, 16416151, 16593750, 16561943, 16300527, 16738459, 16740036, 16720318, 16740034, 15996624, 15996620, 15996067, 15997325, 15998045, 15997258, 15996714, 16061802, 15866559, 14896638, 14933801, 16280006, 16295473, 16022305, 16021743, 16018104, 16029472, 16017978, 16026144, 16026081, 16026043, 16024360, 16022128, 16014529, 16020345, 16015615, 16025324, 16024260, 16023120, 16017725, 16021285, 16026866, 16019008, 16018970, 16026718, 16022871, 16028909, 16018821, 16027707, 16027701, 16024959, 16020945, 16018775, 16028767, 16022644, 16028641, 16025801, 16020758, 16027450, 16024680, 16014835, 16028494, 16022394, 16001036, 16003144, 16005320, 15998710, 15998687, 16013826, 16004108, 16008739, 16005122, 16002912, 16013687, 16001757, 16013634, 16008611, 16011542, 16011495, 16011471, 16006202, 16002671, 16000498, 16001488, 16007214, 16004754, 16003636, 16000371, 15999263, 16007180, 16003539, 16011212, 16010129, 16010037, 16013318, 16014072, 16003311, 15999972, 16051510, 16060750, 16055721, 16046143, 16060659, 16049177, 16058895, 16058875, 16058858, 16053603, 16047126, 16058814, 16056563, 16059353, 16052364, 16051145, 16050061, 16050044, 16046981, 16060426, 16057580, 16058579, 16058534, 16060168, 16058486, 16060157, 16060110, 16058355, 16053119, 16045540, 16051829, 16049652, 16056045, 16054146, 16049537, 16048399, 16052788, 16055767, 16055019, 16043929, 16037177, 16042785, 16043784, 16037727, 16035892, 16031890, 16041456, 16037639, 16035804, 16033899, 16032867, 16032853, 16033785, 16030053, 16043392, 16033664, 16042222, 16039161, 16035431, 16035415, 16033469, 16044542, 16035293, 16038942, 16044870, 16045391, 16044752, 16036219, 16034348, 16042882, 16041788, 16036123, 15986550, 15979317, 15986468, 15984472, 15979887, 15986214, 15985355, 15986677, 15981403, 15980376, 15979741, 15983973, 15980247, 15983935, 15983932, 15987432, 15984845, 15983139, 15987550, 15978676, 15976336, 15976754, 15976230, 15974264, 15978343, 15974248, 15973793, 15977426, 15840187, 15973573, 15977195, 15993230, 15995289, 15995287, 15988997, 15988428, 15989904, 15988840, 15995094, 15989758, 15990597, 15990594, 15990989, 15989431, 15989379, 15994217, 15995405, 14981356, 15020529, 14916462, 14648899, 14591526, 14606305, 14663986, 13924802, 13924787, 13924030, 13923501, 13924605, 13925059, 13923747, 13923704, 13924977, 13924975, 13930281, 13930382, 13930381, 15142008, 14152395, 13926775, 13929833, 13928055, 13929672, 13926211, 13929455, 13929454, 13929424, 13929355, 13928624, 13928400, 13928377, 13928374, 13927901, 13929272, 13928581, 13927767, 13927752, 13927751, 13927750, 13929200, 13928778, 13927208, 13929094, 13927147, 13927067, 13928937, 13927544, 13927038, 13927463, 13926613, 13926486, 13927403, 13927331, 14065918, 14188326, 14147000, 14243502, 14387028, 14389300, 15530940, 14381507, 14435580);
update UD_ECFX_USR set UD_ECFX_USR_supportnotes=UD_ECFX_USR_supportnotes||'SR#181102-000157' where orc_key in (17012183, 16250712, 16416205, 16416206, 16251393, 16251267, 16291331, 16236824, 16063290, 16065184, 16062949, 16062897, 16062758, 14813832, 16524971, 16470696, 16401442, 16416239, 16416526, 16538698, 16279615, 16554202, 16264256, 16807166, 16553364, 16280898, 16416151, 16593750, 16561943, 16300527, 16738459, 16740036, 16720318, 16740034, 15996624, 15996620, 15996067, 15997325, 15998045, 15997258, 15996714, 16061802, 15866559, 14896638, 14933801, 16280006, 16295473, 16022305, 16021743, 16018104, 16029472, 16017978, 16026144, 16026081, 16026043, 16024360, 16022128, 16014529, 16020345, 16015615, 16025324, 16024260, 16023120, 16017725, 16021285, 16026866, 16019008, 16018970, 16026718, 16022871, 16028909, 16018821, 16027707, 16027701, 16024959, 16020945, 16018775, 16028767, 16022644, 16028641, 16025801, 16020758, 16027450, 16024680, 16014835, 16028494, 16022394, 16001036, 16003144, 16005320, 15998710, 15998687, 16013826, 16004108, 16008739, 16005122, 16002912, 16013687, 16001757, 16013634, 16008611, 16011542, 16011495, 16011471, 16006202, 16002671, 16000498, 16001488, 16007214, 16004754, 16003636, 16000371, 15999263, 16007180, 16003539, 16011212, 16010129, 16010037, 16013318, 16014072, 16003311, 15999972, 16051510, 16060750, 16055721, 16046143, 16060659, 16049177, 16058895, 16058875, 16058858, 16053603, 16047126, 16058814, 16056563, 16059353, 16052364, 16051145, 16050061, 16050044, 16046981, 16060426, 16057580, 16058579, 16058534, 16060168, 16058486, 16060157, 16060110, 16058355, 16053119, 16045540, 16051829, 16049652, 16056045, 16054146, 16049537, 16048399, 16052788, 16055767, 16055019, 16043929, 16037177, 16042785, 16043784, 16037727, 16035892, 16031890, 16041456, 16037639, 16035804, 16033899, 16032867, 16032853, 16033785, 16030053, 16043392, 16033664, 16042222, 16039161, 16035431, 16035415, 16033469, 16044542, 16035293, 16038942, 16044870, 16045391, 16044752, 16036219, 16034348, 16042882, 16041788, 16036123, 15986550, 15979317, 15986468, 15984472, 15979887, 15986214, 15985355, 15986677, 15981403, 15980376, 15979741, 15983973, 15980247, 15983935, 15983932, 15987432, 15984845, 15983139, 15987550, 15978676, 15976336, 15976754, 15976230, 15974264, 15978343, 15974248, 15973793, 15977426, 15840187, 15973573, 15977195, 15993230, 15995289, 15995287, 15988997, 15988428, 15989904, 15988840, 15995094, 15989758, 15990597, 15990594, 15990989, 15989431, 15989379, 15994217, 15995405, 14981356, 15020529, 14916462, 14648899, 14591526, 14606305, 14663986, 13924802, 13924787, 13924030, 13923501, 13924605, 13925059, 13923747, 13923704, 13924977, 13924975, 13930281, 13930382, 13930381, 15142008, 14152395, 13926775, 13929833, 13928055, 13929672, 13926211, 13929455, 13929454, 13929424, 13929355, 13928624, 13928400, 13928377, 13928374, 13927901, 13929272, 13928581, 13927767, 13927752, 13927751, 13927750, 13929200, 13928778, 13927208, 13929094, 13927147, 13927067, 13928937, 13927544, 13927038, 13927463, 13926613, 13926486, 13927403, 13927331, 14065918, 14188326, 14147000, 14243502, 14387028, 14389300, 15530940, 14381507, 14435580);

SELECT 
  mil.mil_name,
  AI.APP_INSTANCE_DISPLAY_NAME,
  usr.usr_login
FROM osi,
  sch,
  mil,
  OIU OIU ,
  app_instance ai,
  usr usr,
  usr subm
WHERE osi.sch_key               = sch.sch_key
AND sch.SCH_CREATEBY            =subm.usr_key
AND OSI.MIL_KEY                 = MIL.MIL_KEY
AND OIU.ORC_KEY                 =OSI.ORC_KEY
AND AI.APP_INSTANCE_KEY         =OIU.APP_INSTANCE_KEY
AND OIU.USR_KEY                 =USR.USR_KEY
AND MIL.MIL_NAME = 'Create User'
and sch.sch_status = 'R'
AND AI.APP_INSTANCE_DISPLAY_NAME LIKE 'Incentivecompensation OSVC User'
minus
SELECT mil.mil_name,
  AI.APP_INSTANCE_DISPLAY_NAME,
  usr.usr_login
FROM osi,
  sch,
  mil,
  OIU OIU ,
  app_instance ai,
  usr usr,
  usr subm
WHERE osi.sch_key               = sch.sch_key
AND sch.SCH_CREATEBY            =subm.usr_key
AND OSI.MIL_KEY                 = MIL.MIL_KEY
AND OIU.ORC_KEY                 =OSI.ORC_KEY
AND AI.APP_INSTANCE_KEY         =OIU.APP_INSTANCE_KEY
AND OIU.USR_KEY                 =USR.USR_KEY
and usr.usr_login in ('MAREN.WILLIAMS@ORACLE.COM')
--AND MIL.MIL_NAME = 'Disable User'
and SCH.SCH_STATUS in ('R')
AND AI.APP_INSTANCE_DISPLAY_NAME LIKE 'PDIT Confluence';

select * from PDIT_USER_NAME_CHANGE_HISTORY where support_notes in ('International Transfer job') order by creation_date desc;

select * from PDIT_USER_NAME_CHANGE_HISTORY where usr_key in (766855) order by creation_date desc;
select * from PDIT_USER_NAME_CHANGE_HISTORY where usr_emp_no like '892519';
desc PDIT_USER_NAME_CHANGE_HISTORY;
select usr_key,usr_login ,usr_emp_type from usr where usr_login in ('DANIEL.CRISMARU@ORACLE.COM');
---ENT ASSIGN
select * from ent_Assign where usr_key = 49135 and ent_list_key = (select ent_list_key from ent_list where ent_display_name = 'FACT');

--EMCP CloudEM for PDIT Account

select * from ud_emcp_u where ud_emcp_u_name in ('DEBORAH.PEGRAM@ORACLE.COM') ;
select * from ud_emcp_u where  request_key in (3413340);

select * from ud_emcp_u where ud_emcp_u_create <sysdate-20 order by orc_key desc;
select * from ud_emcp_u where orc_key in (13343042, 12731421, 13197348, 10640667, 16816630, 16816613, 16816611, 16816579, 16816610, 16816592, 16816578, 16816591, 15819017, 16816590, 16816529, 16816528, 16816549, 16816577, 16791325, 16808748, 16808795);

select * from ud_emcp_u where ud_emcp_u_response like '%ERROR%' order by ud_emcp_u_create desc;

SELECT B.REQUEST_KEY, B.BENEFICIARY_KEY ,u.usr_login FROM REQUEST_BENEFICIARY B , USR U WHERE B.REQUEST_KEY IN (1956596)
AND U.USR_KEY =  B.BENEFICIARY_KEY
;

---MYHE

select * from ud_myhe_u where request_key =2199015;


--update usr set usr_manager_key=(select usr_key from usr where usr_login='SUNGHUN.KIM@ORACLE.COM') where usr_login='BYUNGHWA.PARK@ORACLE.COM';

--update ud_Naxs_usr set UD_NAXS_USR_NOTF_RELEASE_DATE=sysdate ; 

select UD_NAXS_USR_UPDATE from UD_NAXS_USR;
--IDMITAppInstanceRandomPasswordValuePrepopulate
--idmit.request.plugin.validation.idsl.IDMITIDSLReqDataValidationHandler;
SELECT * FROM PLUGINS WHERE NAME LIKE '%IDMITUserTransfersC2CHRSync%' ;
SELECT * FROM PLUGINS WHERE TYPE = 'oracle.iam.platform.kernel.spi.EventHandler' ;
SELECT * FROM PLUGINS WHERE id like 'idmit.plugins.eventhandler.validation.password.IDMITPasswordValidation' ;

SELECT * FROM PLUGIN_zip WHERE zipid =11787 ;
select distinct ud_idsl_usr_itresource from ud_idsl_usr where ud_idsl_usr_itresource=13867;
desc ud_idsl_usr;
select * from svr where svr_key in (13827,13867,13808);

select * from ud_idsl_usr order by ud_idsl_usr_itresource;
select * from ud_idsl_usr where request_key in (20000876);


select * from ud_idsl_usr where ud_idsl_usr_filename like '%2019-04-11_11_31_30_eeho-dev4.cert%';
select * from ud_idsl_usr where orc_key = 18192104;
select * from ud_idsl_usr where ud_idsl_usr_itresource = '13827';

desc ud_idsl_usr;

select * from oimhome_jars where oj_name='IDMITDSEEServerOperations.jar';
select * from oimhome_jars where oj_name like '%IDMITCROLInsertStagingTable.jar%';

select * from oimhome_jars where created_on >sysdate-3;

select * from ud_orna_u where orc_key =11140509;
select * from ud_orna_u where ud_orna_u_route_id ='oci_account' and lower (ud_orna_u_email) ='vikram.barkataky@oracle.com';
select * from ud_ssa_p where orc_key =9810512;

select * from  ud_asel_u order by orc_key desc;\


---
select * from ud_bugd_u where ud_bugd_u_username='SHIVAKUMAR.MARULAPPA@ORACLE.COM';



-------------------------SSO PAssword reset

select usr_status,USR_CHANGE_PWD_AT_NEXT_LOGON,USR_LOGIN_ATTEMPTS_CTR, USR_LOCKED,USR_PWD_EXPIRED, USR_PWD_WARNED, USR_LOGIN, USR_CREATE, USR_UPDATE   from USR 
where --USR_UDF_GLOBALUID =''
usr_login in  ('steve.haworth@oracle.com');

select usr_login,usr_password,usr_locked from usr where usr_login in  ('XELSYSADM','PRASHANTH.VUDUTHALA@ORACLE.COM');;


update usr 
SET USR_PWD_WARNED=NULL,USR_PWD_EXPIRED=NULL,
USR_LOCKED=0,USR_LOGIN_ATTEMPTS_CTR=0,
Usr_Change_Pwd_At_Next_Logon='0'
where usr_login in upper ('RAM.ENCARNACION@ORACLE.COM');


-------------------ACCOUNT PROVISIONED FOR USERs


 SELECT USR.USR_LOGIN,usr.usr_status,usr.USR_UDF_GLOBALUID,
  APP.APP_INSTANCE_DISPLAY_NAME,
  OST.OST_STATUS,
  OIU_UPDATE
FROM OIU,
  OST,
  USR,
  APP_INSTANCE APP
WHERE OIU.APP_INSTANCE_KEY        = APP.APP_INSTANCE_KEY
AND oiu.ost_key                   = ost.ost_key
AND ost.obj_key                   = app.object_key
and OIU.USR_KEY                   = USR.USR_KEY
and OST.OST_STATUS               in ('Provisioned','Enabled')
--and USR.USR_STATUS ='Active'
AND USR.USR_LDAP_GUID IS NOT NULL
AND (APP.APP_INSTANCE_DISPLAY_NAME) LIKE '%Network Access Account%'
--AND (APP.APP_INSTANCE_DISPLAY_NAME) IN ('Oracle Social Network','Corporate SSO Account','PDIT Confluence','Email','Fusion FIN Production','Self Service Applications')
--AND USR_LOGIN IN ('SVEN.PEPER@ORACLE.COM')
order by USR_LOGIN, OST.OST_STATUS
;
----ENTITLEMENT PROVISIONED FOR USERs

--
--select USR_LOGIN from USR where USR_LOGIN in ('ABDULMAJID.ABOUZAANOONAH@ORACLE.COM', 'ACHIM.REINHARD@ORACLE.COM', 'ADAM.LEVIN@ORACLE.COM', 'ADITYA.SONAKIA@ORACLE.COM', 'ADRIAN.ALEXANDRU@ORACLE.COM', 'ADRIAN.DAN.NOJE@ORACLE.COM', 'ADRIENNE.WILDE@ORACLE.COM', 'AHMAD.ASHA@ORACLE.COM', 'AHMED.AMEIRA@ORACLE.COM', 'AHMED.OUCHAN@ORACLE.COM', 'AJITESH.MUKHERJEE@ORACLE.COM', 'AJITH.DANIEL@ORACLE.COM', 'AKIKO.UENO@ORACLE.COM', 'AKSHITH.HEGDE@ORACLE.COM', 'ALAIN.MAFFON@ORACLE.COM', 'ALASTAIR.JOHNSON@ORACLE.COM', 'ALBERT.L.ISTELLE@ORACLE.COM', 'ALEN.FERNANDEZ.BARRADO@ORACLE.COM', 'ALESSANDRA.NEGRO@ORACLE.COM', 'ALEX.ARMAS@ORACLE.COM', 'ALEX.TOSO@ORACLE.COM', 'ALEXANDER.BRIERLEY@ORACLE.COM', 'ALEXANDRE.RIANI@ORACLE.COM', 'ALFREDO.VALENZUELA@ORACLE.COM', 'ALKIS.NIKOLAIDIS@ORACLE.COM', 'ALVARO.ESTEVEZ.RODRIGUEZ@ORACLE.COM', 'ANA.BEATRIZ.ISEA@ORACLE.COM', 'ANA.MOREIRA@ORACLE.COM', 'ANAND.G.RAO@ORACLE.COM', 'ANAND.PHANSE@ORACLE.COM', 'ANANT.THAPA@ORACLE.COM', 'ANANTH.J@ORACLE.COM', 'ANDRE.BOURGEACQ@ORACLE.COM', 'ANDREAS.BAENA@ORACLE.COM', 'ANDREAS.WEBER@ORACLE.COM', 'ANDREW.FRANCIS@ORACLE.COM', 'ANDREW.HARVEY@ORACLE.COM', 'ANDREY.STULENKOV@ORACLE.COM', 'ANDY.BIRCH@ORACLE.COM', 'ANDY.HIGGINS@ORACLE.COM', 'ANGEL.SANTODOMINGO@ORACLE.COM', 'ANIL.X.ALMEIDA@ORACLE.COM', 'ANINDITA.SARKAR@ORACLE.COM', 'ANISH.RAJAN@ORACLE.COM', 'ANKUR.MEHTA@ORACLE.COM', 'ANNE.MARIE.VAN.HEIJNINGEN@ORACLE.COM', 'ANNETTE.BALL@ORACLE.COM', 'ANTHONY.LIMOLI@ORACLE.COM', 'ANTOINE.JUHASZ@ORACLE.COM', 'ANTONIO.FROES@ORACLE.COM', 'ARAVIND.LOGANATHAN@ORACLE.COM', 'ARIC.ELLIS@ORACLE.COM', 'ARIF.JAMEEL@ORACLE.COM', 'ARMSTRONG.REBECCA@ORACLE.COM', 'ARSALAN.SHEIKH@ORACLE.COM', 'ARTHUR.BILLINGSLEY@ORACLE.COM', 'ARUN.CHOPRA@ORACLE.COM', 'ARUNA.MUNSHI@ORACLE.COM', 'ASHA.NANJUNDAPPA@ORACLE.COM', 'ASHLEY.STOCKBRIDGE@ORACLE.COM', 'ASHOK.PANDYA@ORACLE.COM', 'ASHWIN.RAJ@ORACLE.COM', 'ATSUO.MASHIMO@ORACLE.COM', 'ATTIE.TALJAARD@ORACLE.COM', 'ATUL.KARYAKARTE@ORACLE.COM', 'AYMEN.DAOUD@ORACLE.COM', 'B.ANAND.IYER@ORACLE.COM', 'BABU.PARAKHADAN@ORACLE.COM', 'BALAJI.SANKAR@ORACLE.COM', 'BALAJI.X.RANGACHARI@ORACLE.COM', 'BARBARA.MAGHELLA@ORACLE.COM', 'BARBARA.VEGA@ORACLE.COM', 'BARRY.TURNER@ORACLE.COM', 'BART.ALBRONDA@ORACLE.COM', 'BECKY.JONES@ORACLE.COM', 'BEN.CROITOR@ORACLE.COM', 'BENJAMIN.BROWN@ORACLE.COM', 'BENJAMIN.SEWARD@ORACLE.COM', 'BENJAMIN.SISSON@ORACLE.COM', 'BENNO.WINDHOEVEL@ORACLE.COM', 'BERND.MATSCHULAT@ORACLE.COM', 'BHARAT.CHADHA@ORACLE.COM', 'BHARAT.R.PATEL@ORACLE.COM', 'BHARAT.S.V@ORACLE.COM', 'BILL.SCHELLHARDT@ORACLE.COM', 'BILL.SILKETT@ORACLE.COM', 'BJ.FISHMAN@ORACLE.COM', 'BOB.GEORGE@ORACLE.COM', 'BOB.KVEDARAS@ORACLE.COM', 'BOOBALAN.VEERABADRAN@ORACLE.COM', 'BRAD.MYERS@ORACLE.COM', 'BRENNAN.HILL@ORACLE.COM', 'BRETT.DEININGER@ORACLE.COM', 'BRIAN.ISHII@ORACLE.COM', 'BRIAN.J.LEONARD@ORACLE.COM', 'BRIAN.SHAW@ORACLE.COM', 'BRINTHA.SHANMUGALINGAM@ORACLE.COM', 'BRUCE.D.RANDALL@ORACLE.COM', 'BRYAN.HOWELL@ORACLE.COM', 'BRYAN.J.TAYLOR@ORACLE.COM', 'BRYAN.PENNER@ORACLE.COM', 'BURKHARD.MOLITOR@ORACLE.COM', 'CAMILLE.VINET@ORACLE.COM', 'CARL.WILSON@ORACLE.COM', 'CARLOS.GAONA@ORACLE.COM', 'CAROL.GIBSON@ORACLE.COM', 'CASEY.QUILLEN@ORACLE.COM', 'CATHARINE.MANDARINO@ORACLE.COM', 'CATHERINE.VERMILLION@ORACLE.COM', 'CESAR.BRITO@ORACLE.COM', 'CHANDRAMOHAN.JAGANATHAN@ORACLE.COM', 'CHARAN.ALEMBLASERIL@ORACLE.COM', 'CHARLES.SHIH@ORACLE.COM', 'CHARLETTE.GRAY@ORACLE.COM', 'CHARLIE.KATZ@ORACLE.COM', 'CHARLIE.ONOLFO@ORACLE.COM', 'CHARLSA.KNEELAND@ORACLE.COM', 'CHRIS.BENENATI@ORACLE.COM', 'CHRIS.CORTEZ@ORACLE.COM', 'CHRIS.DAWSON@ORACLE.COM', 'CHRIS.LOVETT@ORACLE.COM', 'CHRIS.MINTON@ORACLE.COM', 'CHRIS.NETZBAND@ORACLE.COM', 'CHRIS.P.RUSSELL@ORACLE.COM', 'CHRIS.W.BAKER@ORACLE.COM', 'CHRISTIAN.DOMINGUEZ@ORACLE.COM', 'CHRISTIAN.MOUSCARDES@ORACLE.COM', 'CHRISTINE.PADLEY@ORACLE.COM', 'CHRISTOFOROS.PETRIDIS@ORACLE.COM', 'CHRISTOPHE.CHAMBELLAN@ORACLE.COM', 'CHUCK.STILES@ORACLE.COM', 'CINDY.COLLOT@ORACLE.COM', 'CINTHYA.GUTIERREZ.MENDOZA@ORACLE.COM', 'CLARKE.PICH@ORACLE.COM', 'CLAUDE.ZULIANI@ORACLE.COM', 'CLAUDIA.JOHNSON@ORACLE.COM', 'CLAUDIO.BORASIO@ORACLE.COM', 'COCO.LIN@ORACLE.COM', 'COLIN.FEDERLE@ORACLE.COM', 'CONAL.HIGGINS@ORACLE.COM', 'CORY.DAVIS@ORACLE.COM', 'CRAIG.FRAMPTON@ORACLE.COM', 'CRISTIANE.PAVAN@ORACLE.COM', 'CYNTHIA.TIMMONS@ORACLE.COM', 'DALIA.G.GARCIA@ORACLE.COM', 'DAMLA.NAMIDAR@ORACLE.COM', 'DAN.BINNS@ORACLE.COM', 'DAN.BURLAS@ORACLE.COM', 'DAN.LOPEZ@ORACLE.COM', 'DAN.SALTER@ORACLE.COM', 'DANIEL.BRANDI@ORACLE.COM', 'DANIEL.CHERNG@ORACLE.COM', 'DANIEL.ELANGO.T@ORACLE.COM', 'DANIEL.HADI@ORACLE.COM', 'DANITA.LEWIS@ORACLE.COM', 'DANNY.SCHUT@ORACLE.COM', 'DANYA.SCELTA@ORACLE.COM', 'DARREN.KING@ORACLE.COM', 'DARYL.EVERETT@ORACLE.COM', 'DAVE.BACHARACH@ORACLE.COM', 'DAVE.BUNTEN@ORACLE.COM', 'DAVID.HO@ORACLE.COM', 'DAVID.LINDEMAN@ORACLE.COM', 'DAVID.MAROSSY@ORACLE.COM', 'DAVID.OFARRELL@ORACLE.COM', 'DAVID.PRINCE@ORACLE.COM', 'DAVID.TEJEDA@ORACLE.COM', 'DAVID.URBAN@ORACLE.COM', 'DAVID.VOLIN@ORACLE.COM', 'DEAN.CUNNANE@ORACLE.COM', 'DEAN.KAGAWA@ORACLE.COM', 'DENNIS.SCHERF@ORACLE.COM', 'DEREK.M.TAYLOR@ORACLE.COM', 'DESIREE.CAMPBELL@ORACLE.COM', 'DEVIKIRAN.HEGDE@ORACLE.COM', 'DHANANJAY.BENDRE@ORACLE.COM', 'DHIRAJ.X.BHANDARI@ORACLE.COM', 'DIANA.INGRAM@ORACLE.COM', 'DIANA.STREIT@ORACLE.COM', 'DINDI.GATRAM@ORACLE.COM', 'DIRK.RAUPACH@ORACLE.COM', 'DIVYA.DWIVEDI@ORACLE.COM', 'DIVYA.SASIDHARAN@ORACLE.COM', 'DON.PIMPLETON.JR@ORACLE.COM', 'DONGHYU.LEE@ORACLE.COM', 'DOROTHY.LOH@ORACLE.COM', 'DREW.BLOCZYNSKI@ORACLE.COM', 'DUSTIN.STRAYER@ORACLE.COM', 'DWAYNE.ALLEYNE@ORACLE.COM', 'EDUARDO.STANICH@ORACLE.COM', 'EDWARD.HENRICH@ORACLE.COM', 'EHAB.SHEHATA@ORACLE.COM', 'EIRA.HELLING@ORACLE.COM', 'ELAINE.SUPPLE@ORACLE.COM', 'ELIE.WAZEN@ORACLE.COM', 'ELIOT.JARDINES@ORACLE.COM', 'ELIZABETH.BATES@ORACLE.COM', 'ELIZABETH.DASSLER@ORACLE.COM', 'ELLEN.SAMUELSEN@ORACLE.COM', 'EMANUELA.MURENU@ORACLE.COM', 'EMMA.PRIOR@ORACLE.COM', 'ENRIC.GARCIA@ORACLE.COM', 'ERAN.SINGER@ORACLE.COM', 'ERIC.DUMONT@ORACLE.COM', 'ERIC.MARTINET@ORACLE.COM', 'ERIC.RODRIGUEZ@ORACLE.COM', 'ERIC.STERN@ORACLE.COM', 'ERKAN.YALCIN@ORACLE.COM', 'ERNESTO.DELLA.CORTE@ORACLE.COM', 'ERWIN.PONG@ORACLE.COM', 'ESRA.BILGIN@ORACLE.COM', 'EUDES.DE.GRIVEL@ORACLE.COM', 'EZANN.CHEN@ORACLE.COM', 'FAB.TONI@ORACLE.COM', 'FABIAN.LIM@ORACLE.COM', 'FABRIZIO.CAPPELLI@ORACLE.COM', 'FABRIZIO.FASCIA@ORACLE.COM', 'FANG.NAN@ORACLE.COM', 'FEDERICO.FERNANDEZ.FEIJOO@ORACLE.COM', 'FELIPE.MARTINS@ORACLE.COM', 'FERNANDO.CORDEROH@ORACLE.COM', 'FILIP.KAZNOWSKI@ORACLE.COM', 'FILOMENA.TOTO@ORACLE.COM', 'FLAVIO.ROIAS@ORACLE.COM', 'FRANCE.GERMAIN@ORACLE.COM', 'FRANCES.MACHOWSKI-BAILEY@ORACLE.COM', 'FRANCIS.BATTAGLINI@ORACLE.COM', 'FRANK.CRUSING@ORACLE.COM', 'FRED.LUDD@ORACLE.COM', 'FREDERICO.WIENER@ORACLE.COM', 'FREDRIC.GYLLENSTIERNA@ORACLE.COM', 'FRIDA.OSTLUND@ORACLE.COM', 'GANESH.KRISTIPATI@ORACLE.COM', 'GARFIELD.CHOW@ORACLE.COM', 'GARRETH.HIPPE@ORACLE.COM', 'GARRY.KUPECZ@ORACLE.COM', 'GARY.BLAIR@ORACLE.COM', 'GARY.KIRKWOOD@ORACLE.COM', 'GAURAV.M.SHARMA@ORACLE.COM', 'GEORGE.DOWNING@ORACLE.COM', 'GERARD.BOVAIRD@ORACLE.COM', 'GERD.SOLDANSKI@ORACLE.COM', 'GERGELY.TOLMAR@ORACLE.COM', 'GHISLAIN.BOUFFANDEAU@ORACLE.COM', 'GIANNI.SARI@ORACLE.COM', 'GIOVANNI.NUBILE@ORACLE.COM', 'GITA.AGRELLAS@ORACLE.COM', 'GLENN.HABIB@ORACLE.COM', 'GOKHAN.KIS@ORACLE.COM', 'GONZALO.CONTRERAS.DEL.SOLAR@ORACLE.COM', 'GONZALO.VICENCIO@ORACLE.COM', 'GREG.FARRAR@ORACLE.COM', 'GREG.FOSTER@ORACLE.COM', 'GREG.KARABIN@ORACLE.COM', 'GREG.MILLER@ORACLE.COM', 'GREG.X.JONES@ORACLE.COM', 'GRIFFIN.COYLE@ORACLE.COM', 'GRZEGORZ.PIETRON@ORACLE.COM', 'GUIDO.VERRESEN@ORACLE.COM', 'GUILLERMO.NERIO@ORACLE.COM', 'GURO.MCCREA@ORACLE.COM', 'HANS.FERNHOUT@ORACLE.COM', 'HANS.MONFILS@ORACLE.COM', 'HECTOR.MONJE.COCCOLO@ORACLE.COM', 'HELEN.COAN@ORACLE.COM', 'HELENE.TAPPER@ORACLE.COM', 'HIROSHI.MOGI@ORACLE.COM', 'HIROYUKI.ONOGUCHI@ORACLE.COM', 'HUMA.QADRI@ORACLE.COM', 'HUSSAIN.VIRANI@ORACLE.COM', 'HUW.J.JONES@ORACLE.COM', 'IAN.X.PARSONS@ORACLE.COM', 'IMTIAZ.REHMAN@ORACLE.COM', 'INES.CASTRO.VALLEJO@ORACLE.COM', 'INGRID.THORPE@ORACLE.COM', 'IONUT.MIRON@ORACLE.COM', 'ISTVAN.MOCZO@ORACLE.COM', 'ITALO.NESI@ORACLE.COM', 'IVONNE.S.SOMMER@ORACLE.COM', 'J.SALAFIA@ORACLE.COM', 'JACK.WATSON@ORACLE.COM', 'JACKIE.NOEL@ORACLE.COM', 'JACKLINE.GITARI@ORACLE.COM', 'JAIME.ARMESTO.CANO@ORACLE.COM', 'JAKE.PEPLOWSKI@ORACLE.COM', 'JAKOB.ENGFELDT@ORACLE.COM', 'JAMES.COOKE@ORACLE.COM', 'JAMES.GREEN@ORACLE.COM', 'JAMES.X.MCCABE@ORACLE.COM', 'JAMIE.DAVIDSON@ORACLE.COM', 'JAN.PIJPERS@ORACLE.COM', 'JAN.ZAKRZEWSKI@ORACLE.COM', 'JANNE.INNANEN@ORACLE.COM', 'JASON.CHIA@ORACLE.COM', 'JEAN-PIERRE.BEAULIEU@ORACLE.COM', 'JEAN-SEBASTIEN.DORAIS@ORACLE.COM', 'JEAN.DUPUIS@ORACLE.COM', 'JEANIE.WOLSLAGEL@ORACLE.COM', 'JEFF.FLETT@ORACLE.COM', 'JEFF.HUNTER@ORACLE.COM', 'JEFF.KANE@ORACLE.COM', 'JEFF.MELROSE@ORACLE.COM', 'JEFFERY.MCCULLOCK@ORACLE.COM', 'JEFFRY.LANGE@ORACLE.COM', 'JEFFRY.ULLMAN@ORACLE.COM', 'JENNIFER.ROMANO@ORACLE.COM', 'JENNY.HO@ORACLE.COM', 'JEROME.BOUVET@ORACLE.COM', 'JESPER.LERRIN@ORACLE.COM', 'JESSICA.LEAR@ORACLE.COM', 'JESUS.PALACIOS@ORACLE.COM', 'JIM.FINNEGAN@ORACLE.COM', 'JIM.SANBORN@ORACLE.COM', 'JIM.SCHOFIELD@ORACLE.COM', 'JIRI.FRUHBAUER@ORACLE.COM', 'JOAKIM.COKER@ORACLE.COM', 'JODY.ROBINSON@ORACLE.COM', 'JOE.JOHNSON@ORACLE.COM', 'JOE.NORRIS@ORACLE.COM', 'JOE.PEREIRA@ORACLE.COM', 'JOHN.D.FORD@ORACLE.COM', 'JOHN.GARTSIDE@ORACLE.COM', 'JOHN.K.MCLAUGHLIN@ORACLE.COM', 'JOHN.KAROL@ORACLE.COM', 'JOHN.KIRUBAKARAN@ORACLE.COM', 'JOHN.MARSHALL@ORACLE.COM', 'JOHN.NEITA@ORACLE.COM', 'JOHN.SLAWINSKI@ORACLE.COM', 'JONATHAN.ESQUIER@ORACLE.COM', 'JONG-SEUB.KIM@ORACLE.COM', 'JORGE.MUNOZ@ORACLE.COM', 'JOSE.GUARDADO@ORACLE.COM', 'JOSEPH.COLLINS@ORACLE.COM', 'JOSEPH.HERNANDEZ@ORACLE.COM', 'JOSEPH.MINICHINI@ORACLE.COM', 'JOY.BRIDGES@ORACLE.COM', 'JUAN.COLON@ORACLE.COM', 'JUAN.MANUEL.BELMONTE.GARCIA@ORACLE.COM', 'JUERGEN.FAKLER@ORACLE.COM', 'JULIE.BROOKES@ORACLE.COM', 'JULIE.HARKER@ORACLE.COM', 'JUMGUN.JUNG@ORACLE.COM', 'JUN.TOKUYAMA@ORACLE.COM', 'JUSTIN.LAFEEN@ORACLE.COM', 'K.S.RAMPRASATH@ORACLE.COM', 'KAILYN.MARRIOTT@ORACLE.COM', 'KAMIL.WROBLEWSKI@ORACLE.COM', 'KAMRON.AHMADYAR@ORACLE.COM', 'KAPIL.DEO@ORACLE.COM', 'KAPIL.KAPUR@ORACLE.COM', 'KAPIL.X.SONI@ORACLE.COM', 'KAREN.LESAK@ORACLE.COM', 'KARIM.KANJI@ORACLE.COM', 'KARIN.IONESCU@ORACLE.COM', 'KARINA.PEREZ@ORACLE.COM', 'KARLEE.SCOTT-MURPHY@ORACLE.COM', 'KATHERINE.KRAUS@ORACLE.COM', 'KATHLEEN.EDWARDS@ORACLE.COM', 'KATIE.SAPIENZA@ORACLE.COM', 'KAVYA.S.SHETTY@ORACLE.COM', 'KEDAR.DEVAL@ORACLE.COM', 'KEN.FREE@ORACLE.COM', 'KENT.MITCHELL@ORACLE.COM', 'KEVIN.DAWE@ORACLE.COM', 'KIM.WAH.ANG@ORACLE.COM', 'KRAJESH.KUMAR@ORACLE.COM', 'KRISTAN.WATSON@ORACLE.COM', 'KRISTINA.EMMELOVA@ORACLE.COM', 'KRZYSZTOF.WYSOCKI@ORACLE.COM', 'LAJOS.HODI@ORACLE.COM', 'LANCE.RICHTER@ORACLE.COM', 'LANESE.TURNER@ORACLE.COM', 'LARS.MOOIJ@ORACLE.COM', 'LAURA.FEROLETO@ORACLE.COM', 'LAURA.LEE.MARSIGLIO@ORACLE.COM', 'LAURA.MARTELLA@ORACLE.COM', 'LAVENIA.SIMMONS@ORACLE.COM', 'LEAH.CHURCH@ORACLE.COM', 'LEONOR.CORREIA@ORACLE.COM', 'LESLIE.CHAVEZ@ORACLE.COM', 'LESLIE.WILLIAMS@ORACLE.COM', 'LIAT.SHABAT@ORACLE.COM', 'LINDA.JONES@ORACLE.COM', 'LISA.JANOVEC@ORACLE.COM', 'LISA.PARKER@ORACLE.COM', 'LISA.REAVES@ORACLE.COM', 'LOGAN.RABE@ORACLE.COM', 'LOUISE.BRIGHT@ORACLE.COM', 'LUCAS.OUAZIR@ORACLE.COM', 'LUIS.BERNAL@ORACLE.COM', 'LUIS.DI.LAURO@ORACLE.COM', 'LULA.MILLER-MAYS@ORACLE.COM', 'LYNDA.BARNES@ORACLE.COM', 'LYNN.NERIO@ORACLE.COM', 'LYUDMYLA.PLOTNIKOVA@ORACLE.COM', 'M.BUTTIGLIERO@ORACLE.COM', 'M.MURUGANANDAM@ORACLE.COM', 'MADHUR.KRIPAL@ORACLE.COM', 'MADHUSOODHANAN.S@ORACLE.COM', 'MAHESH.RAO@ORACLE.COM', 'MAJID.ED-DBALI@ORACLE.COM', 'MALCOLM.J.HEWLETT@ORACLE.COM', 'MALINA.GHAZALI@ORACLE.COM', 'MANDY.LEE@ORACLE.COM', 'MANI.S@ORACLE.COM', 'MANISHA.DHURE@ORACLE.COM', 'MANJA.CECILIE.SCHONECK@ORACLE.COM', 'MANLIO.PIPITONE@ORACLE.COM', 'MANUEL.QUINTANA@ORACLE.COM', 'MARC.DOBBELS@ORACLE.COM', 'MARC.FOUQUET@ORACLE.COM', 'MARC.MARSHALL@ORACLE.COM', 'MARCEL.CASTRO@ORACLE.COM', 'MARCIO.PIVATELLI@ORACLE.COM', 'MARCO.PANCERI@ORACLE.COM', 'MARCUS.KENNEDY@ORACLE.COM', 'MARIA.BERGQVIST@ORACLE.COM', 'MARIA.KOUROUSI@ORACLE.COM', 'MARIA.LAURA.ETCHEVERRY@ORACLE.COM', 'MARIAN.GUIDRY@ORACLE.COM', 'MARIANA.A.RUIZ@ORACLE.COM', 'MARIANNE.ZAZZERA@ORACLE.COM', 'MARIE.SHAFER@ORACLE.COM', 'MARIO.CANTIN@ORACLE.COM', 'MARIUS.VAN.DRENTH@ORACLE.COM', 'MARJORIE.LANDRY@ORACLE.COM', 'MARK.BAGOZZI@ORACLE.COM', 'MARK.BEJAKIAN@ORACLE.COM', 'MARK.HEFFERNAN@ORACLE.COM', 'MARK.MOORE@ORACLE.COM', 'MARK.PIPER@ORACLE.COM', 'MARLON.NORRIS@ORACLE.COM', 'MARSHALL.GLENN@ORACLE.COM', 'MARTIN.SABYE@ORACLE.COM', 'MARY.BETH.TRUSS@ORACLE.COM', 'MARY.BETH.VAN.DERPLUYM@ORACLE.COM', 'MARYANN.LONG@ORACLE.COM', 'MARYANN.TACKETT@ORACLE.COM', 'MARZENA.JANICKA@ORACLE.COM', 'MASAYUKI.INOUE@ORACLE.COM', 'MASSIMILIANO.CANTARINI@ORACLE.COM', 'MATT.LALLY@ORACLE.COM', 'MATTHEW.BURNS@ORACLE.COM', 'MATTHEW.CANNAVO@ORACLE.COM', 'MATTHEW.GEARY@ORACLE.COM', 'MATTHEW.IORFINO@ORACLE.COM', 'MATTHEW.J.GREGORY@ORACLE.COM', 'MATTHEW.SIMMONS@ORACLE.COM', 'MAURO.FASANO@ORACLE.COM', 'MAX.LANGENFELD@ORACLE.COM', 'MEGAN.SEXTON@ORACLE.COM', 'MELANI.THOMAS@ORACLE.COM', 'MERIMA.SULEJMANOVIC@ORACLE.COM', 'MERYL.ROBIN@ORACLE.COM', 'MICHAEL.A.FERRIS@ORACLE.COM', 'MICHAEL.ANASTASIO@ORACLE.COM', 'MICHAEL.BENNETT@ORACLE.COM', 'MICHAEL.MANNA@ORACLE.COM', 'MICHAEL.MERRIGAN@ORACLE.COM', 'MICHAEL.MORAVEC@ORACLE.COM', 'MICHAEL.R.TURNER@ORACLE.COM', 'MICHAEL.RENAUD@ORACLE.COM', 'MICHEL.BOURRET@ORACLE.COM', 'MICHEL.THOLEN@ORACLE.COM', 'MICHELLE.COX@ORACLE.COM', 'MICHELLE.EHRLICH@ORACLE.COM', 'MICHELLE.NUSS@ORACLE.COM', 'MICK.GRAATSMA@ORACLE.COM', 'MIHAI.POPESCU@ORACLE.COM', 'MIKAKO.YOSHIKANE@ORACLE.COM', 'MILENKO.JOLDZIC@ORACLE.COM', 'MILOS.MATUS@ORACLE.COM', 'MIRIAM.GALLARDO@ORACLE.COM', 'MISSY.LOW@ORACLE.COM', 'MITSURU.X.NIHEI@ORACLE.COM', 'MOHAMED.MTIMET@ORACLE.COM', 'MOLLY.JAVES@ORACLE.COM', 'MONIKA.ADAMSKA@ORACLE.COM', 'MORTEN.RYESBERG@ORACLE.COM', 'MU-YONG.JEON@ORACLE.COM', 'MUHAMMAD.SHERIF@ORACLE.COM', 'MURALI.BEESETTY@ORACLE.COM', 'MUSIDORA.JORGENSEN@ORACLE.COM', 'NADEEM.RAHMAN@ORACLE.COM', 'NAGENDRA.ARKALGUD@ORACLE.COM', 'NALAMALAPU.SUBBA.REDDY@ORACLE.COM', 'NANDEESH.REDDY@ORACLE.COM', 'NAOKI.KURITA@ORACLE.COM', 'NAOMI.MATSUISHI@ORACLE.COM', 'NATALIE.FOLAND@ORACLE.COM', 'NATHALIE.LECHABLE@ORACLE.COM', 'NAVANEETHA.RAJAMOHAN@ORACLE.COM', 'NEVA.JONES@ORACLE.COM', 'NIAMH.MINNOCK@ORACLE.COM', 'NICK.RUEHL@ORACLE.COM', 'NICOLA.HUGHES@ORACLE.COM', 'NICOLA.TOZZI@ORACLE.COM', 'NICOLAS.DE.PLACE@ORACLE.COM', 'NICOLE.DUTERTE@ORACLE.COM', 'NIKHIL.KUVELKER@ORACLE.COM', 'NILO.MORITA@ORACLE.COM', 'NILS.LUGNER@ORACLE.COM', 'NIMMY.APPAJI@ORACLE.COM', 'NINETTE.PEREIRA@ORACLE.COM', 'NIRAJ.VAIDYA@ORACLE.COM', 'NIRAV.PATEL@ORACLE.COM', 'NOBUO.ONO@ORACLE.COM', 'NORIKO.JIHIRA@ORACLE.COM', 'OLLIE.RICE@ORACLE.COM', 'PABLO.VAHOS.PINEDA@ORACLE.COM', 'PABLO.VERRASTRO@ORACLE.COM', 'PARTHA.RANGARAJ@ORACLE.COM', 'PAT.BROADY@ORACLE.COM', 'PATRICIA.HAMMER@ORACLE.COM', 'PATRICK.CHEAIB@ORACLE.COM', 'PATRICK.CLANCY@ORACLE.COM', 'PATRICK.COLL@ORACLE.COM', 'PATRICK.DAWSON@ORACLE.COM', 'PATRICK.HALCOMB@ORACLE.COM', 'PATRICK.MACENTEE@ORACLE.COM', 'PATRICK.ONEIL@ORACLE.COM', 'PATRICK.SWORDS@ORACLE.COM', 'PATRICK.WARREN@ORACLE.COM', 'PAUL.MAGSON@ORACLE.COM', 'PAUL.OSULLIVAN@ORACLE.COM', 'PAUL.SHAW@ORACLE.COM', 'PAUL.WEBER@ORACLE.COM', 'PAUL.X.GARVEY@ORACLE.COM', 'PAULA.BARISICH@ORACLE.COM', 'PAULINE.WALTON@ORACLE.COM', 'PAYMAN.PADIDAR@ORACLE.COM', 'PEDRO.GRANCHO@ORACLE.COM', 'PEDRO.PRATS@ORACLE.COM', 'PETER.BERG@ORACLE.COM', 'PETER.H.DAVIES@ORACLE.COM', 'PETER.MCDOWELL@ORACLE.COM', 'PETER.NICOLOIS@ORACLE.COM', 'PETER.SCHAFFER@ORACLE.COM', 'PETER.SIDERIS@ORACLE.COM', 'PETER.SODHI@ORACLE.COM', 'PETER.VESZPREMI@ORACLE.COM', 'PETR.HOSEK@ORACLE.COM', 'PHILIP.FILETTO@ORACLE.COM', 'PIM.X.VAN.DEN.BOGAARD@ORACLE.COM', 'PIOTR.JUSZKIEWICZ@ORACLE.COM', 'PIYUSH.KAPOOR@ORACLE.COM', 'POH.SIM.CHAN@ORACLE.COM', 'PRAKASH.HOSALLI@ORACLE.COM', 'PRASAD.KHAMBALIKAR@ORACLE.COM', 'PRATHAM.RAI@ORACLE.COM', 'PUNEET.PM.MEHTA@ORACLE.COM', 'PUNEET.RANJAN@ORACLE.COM', 'PUNEETH.ANANDAREDDY@ORACLE.COM', 'RACHEL.WANG@ORACLE.COM', 'RAJIV.SAMPAT@ORACLE.COM', 'RAKSHIT.RAI@ORACLE.COM', 'RAMESH.SADASIVAM@ORACLE.COM', 'RAMESH.SARDA@ORACLE.COM', 'RAMON.CARDENAS@ORACLE.COM', 'RAND.FRANKLIN@ORACLE.COM', 'RANDOL.TUCKER@ORACLE.COM', 'RANDY.CERYAN@ORACLE.COM', 'RANDY.DEAN@ORACLE.COM', 'RAVINDER.S.SHEKHAWAT@ORACLE.COM', 'RAY.SAM@ORACLE.COM', 'REDA.EL.MESSAOUDI-AUBERT@ORACLE.COM', 'REGINE.ARMOUET@ORACLE.COM', 'REZA.MOKRANI@ORACLE.COM', 'RICCARDO.BELLESIA@ORACLE.COM', 'RICHARD.BYRNE@ORACLE.COM', 'RICHARD.FENNER@ORACLE.COM', 'RICHARD.PERKS@ORACLE.COM', 'RICK.BILL@ORACLE.COM', 'RICK.CIMINA@ORACLE.COM', 'RICK.GUNN@ORACLE.COM', 'RICK.LIPMAN@ORACLE.COM', 'RIFAT.KIBRIA@ORACLE.COM', 'RINA.MADLANI@ORACLE.COM', 'ROB.ZANDER@ORACLE.COM', 'ROBERT.CLENDENNING@ORACLE.COM', 'ROBERT.ROSENBERGER@ORACLE.COM', 'ROBERT.SZADEK@ORACLE.COM', 'ROBERTA.SALVATORE@ORACLE.COM', 'ROBIN.LAHZ@ORACLE.COM', 'RON.TAYEBI@ORACLE.COM', 'ROXY.XIONG@ORACLE.COM', 'ROYA.ALBORZI@ORACLE.COM', 'SACHIN.SHUKLA@ORACLE.COM', 'SADAF.X.SYED@ORACLE.COM', 'SAHI.CAMACHO@ORACLE.COM', 'SAIRAMAN.KALPATHI@ORACLE.COM', 'SAJID.K.KHAN@ORACLE.COM', 'SAM.WOLFENDEN@ORACLE.COM', 'SAMIR.MEHROTRA@ORACLE.COM', 'SAMMY.ABDELRAHMAN@ORACLE.COM', 'SANJAY.MUKHERJEE@ORACLE.COM', 'SANJAY.X.SINHA@ORACLE.COM', 'SANTIAGO.GUZMAN@ORACLE.COM', 'SANTOSH.FERNANDES@ORACLE.COM', 'SARA.FULTON@ORACLE.COM', 'SARAH.HAIDER@ORACLE.COM', 'SARAVANAN.P@ORACLE.COM', 'SASHA.BROWN@ORACLE.COM', 'SATOSHI.KAMEGAI@ORACLE.COM', 'SATYANANDA.BHANDARY@ORACLE.COM', 'SAVITRI.SAVITRI@ORACLE.COM', 'SCOTT.FRENDT@ORACLE.COM', 'SCOTT.OBERLIES@ORACLE.COM', 'SCOTT.SHENK@ORACLE.COM', 'SEAN.PFIFER@ORACLE.COM', 'SEVGI.KAYIRAN@ORACLE.COM', 'SHAANSA.KISTNEN@ORACLE.COM', 'SHAJU.KAMARUDEEN@ORACLE.COM', 'SHASHI.ADVANI@ORACLE.COM', 'SHAUN.DAVIES@ORACLE.COM', 'SHAWN.DALCOUR@ORACLE.COM', 'SHAWN.MURPHY@ORACLE.COM', 'SHELLE.FUCE@ORACLE.COM', 'SHIVALI.HARIBHAKTI@ORACLE.COM', 'SHUICHIRO.KAMITAKE@ORACLE.COM', 'SIDDHARTH.YEDUR@ORACLE.COM', 'SIGRUN.BICHLMEIER@ORACLE.COM', 'SIMON.CHELL@ORACLE.COM', 'SIMON.DOUGALL@ORACLE.COM', 'SIMON.WOOLRYCH@ORACLE.COM', 'SOEREN.FEUERBOETHER-DEGELE@ORACLE.COM', 'SOICHI.MASUDA@ORACLE.COM', 'SONIYA.KANG@ORACLE.COM', 'SOUMEN.NATH@ORACLE.COM', 'SOVAN.GHOSH@ORACLE.COM', 'SOWJANYA.SHETTY@ORACLE.COM', 'SRINI.DARBHA@ORACLE.COM', 'SRINIVAS.BHATTIPROLU@ORACLE.COM', 'SRINIVASAN.KANNAIYAN@ORACLE.COM', 'STAVROS.TARAVIRAS@ORACLE.COM', 'STELIOS.LAZAKIS@ORACLE.COM', 'STEPHANE.ZERBINI@ORACLE.COM', 'STEVE.BROOKS@ORACLE.COM', 'STEVE.GOULDSTONE@ORACLE.COM', 'STEVE.KARSCH@ORACLE.COM', 'STEVEN.PILEGGI@ORACLE.COM', 'STIAN.ARE.OLSEN@ORACLE.COM', 'STUART.WELLS@ORACLE.COM', 'STUART.X.GLOBE@ORACLE.COM', 'SUE.RATNAM@ORACLE.COM', 'SUGANTH.SUBRAMANIAN@ORACLE.COM', 'SUHAIB.OSMAN@ORACLE.COM', 'SUJITH.J.VERGHESE@ORACLE.COM', 'SUNIL.DUA@ORACLE.COM', 'SUNIL.JHA@ORACLE.COM', 'SUNNY.WONG@ORACLE.COM', 'SUPRIYA.SHENOY@ORACLE.COM', 'SURAJ.HN@ORACLE.COM', 'SUREKHA.C@ORACLE.COM', 'SURENDRANATH.BIYAPPA@ORACLE.COM', 'SURESH.WACHHE@ORACLE.COM', 'SUSAN.LIM@ORACLE.COM', 'SUZANN.DODDS@ORACLE.COM', 'SUZANNE.LAWRENCE@ORACLE.COM', 'SYED.H.HASEEB@ORACLE.COM', 'SYLVIE.RENGARD@ORACLE.COM', 'TAKASHI.NAGAFUCHI@ORACLE.COM', 'TAKESHI.TAKAMURA@ORACLE.COM', 'TAMAS.BESENYOI@ORACLE.COM', 'TAMER.RAGAB@ORACLE.COM', 'TAMMARA.COX@ORACLE.COM', 'TANIA.RUSSAKOV@ORACLE.COM', 'TAO.T.LI@ORACLE.COM', 'TARA.HAMBY@ORACLE.COM', 'TARA.NOLAN@ORACLE.COM', 'TAZE.MILLER@ORACLE.COM', 'TC.OHARA@ORACLE.COM', 'TED.LESZCYNSKI@ORACLE.COM', 'TERENCE.LAU@ORACLE.COM', 'TERESA.BORDIN@ORACLE.COM', 'TERESA.MOSES@ORACLE.COM', 'THELMA.MEZZALIRA@ORACLE.COM', 'THEO.KYRIAKIDIS@ORACLE.COM', 'THOMAS.WUERTH@ORACLE.COM', 'THUY.CAO@ORACLE.COM', 'TIM.MORIARTY@ORACLE.COM', 'TIMO.KERANEN@ORACLE.COM', 'TIMOTHY.HARMON@ORACLE.COM', 'TINA.JOHNSON@ORACLE.COM', 'TJALKO.RIEMENS@ORACLE.COM', 'TOHRU.SUGIBAYASHI@ORACLE.COM', 'TOM.BACA@ORACLE.COM', 'TOM.DELEONE@ORACLE.COM', 'TOMAS.VRSANSKY@ORACLE.COM', 'TOMISLAV.JUKIC@ORACLE.COM', 'TOMMY.SOENDERGAARD@ORACLE.COM', 'TOMOAKI.MARUYAMA@ORACLE.COM', 'TON.FRANCISSEN@ORACLE.COM', 'TONJA.STOTT@ORACLE.COM', 'TONY.SICILIANO@ORACLE.COM', 'TORBJORN.TRELSMO@ORACLE.COM', 'TOSHIMITSU.NAGASAWA@ORACLE.COM', 'TRESSA.FERRELL@ORACLE.COM', 'TREVOR.NUNN@ORACLE.COM', 'TROY.SOWERS@ORACLE.COM', 'TUSHAR.MANDRE@ORACLE.COM', 'UDAYAN.KELKAR@ORACLE.COM', 'URSZULA.KONSKA@ORACLE.COM', 'USMAN.ALI@ORACLE.COM', 'VALERIA.RAGUSA@ORACLE.COM', 'VALTER.ARAUJO@ORACLE.COM', 'VARGHESE.X.MATHEW@ORACLE.COM', 'VENU.GOPALA.NAGA.VARMA@ORACLE.COM', 'VICKY.PASENKO@ORACLE.COM', 'VIDYUT.CHATTY@ORACLE.COM', 'VIJAY.JASSAL@ORACLE.COM', 'VINITKUMAR.GANDHI@ORACLE.COM', 'VIRENDER.V.KUMAR@ORACLE.COM', 'VIRGINIA.FERNANDEZ@ORACLE.COM', 'VISHAKHA.MOHILE@ORACLE.COM', 'VISHVADITYA.GOLLERKERI@ORACLE.COM', 'VISHWAS.BATHEJA@ORACLE.COM', 'VIVEK.RAINA@ORACLE.COM', 'VIVEK.SYLAS@ORACLE.COM', 'VLAD.NICOLAU@ORACLE.COM', 'VLAD.STOIA@ORACLE.COM', 'VLADIMIR.P.MARTINEZ@ORACLE.COM', 'VLADISLAV.KOCHKARIN@ORACLE.COM', 'WANDA.NILAIGHIN@ORACLE.COM', 'WENDI.MONAHAN@ORACLE.COM', 'WILFRIED.DUVOUX@ORACLE.COM', 'WILL.ELLIOTT@ORACLE.COM', 'WILLIAM.NEWMAN@ORACLE.COM', 'WILLIAM.STEGEMAN@ORACLE.COM', 'WING.SZE.LI@ORACLE.COM', 'XIAOGAN.TAN@ORACLE.COM', 'YASUHIKO.MIYAZAWA@ORACLE.COM', 'YEHIEL.SCHINDELHAIM@ORACLE.COM', 'YOGESH.KAMAT@ORACLE.COM', 'YONGZHE.ZHANG@ORACLE.COM', 'YOSHIFUMI.FUTAMURA@ORACLE.COM', 'YOSHIHIRO.IGARASHI@ORACLE.COM', 'YUHONG.JING@ORACLE.COM', 'YUJI.SODA@ORACLE.COM', 'YUSHAA.MATTHEWS@ORACLE.COM', 'YUTAO.SHEN@ORACLE.COM', 'ZBYNEK.KUBINA@ORACLE.COM', 'ZHAOHUI.YUAN@ORACLE.COM', 'ZHIPENG.SUN@ORACLE.COM', 'ZOE.ORNSTEIN@ORACLE.COM') and USR_STATUS = 'Active'
--minus;
select USR.USR_LOGIN ,ent_display_name,ent_description,ea.ent_assign_create,ea.ent_status  from ENT_LIST ENT, ENT_ASSIGN EA, USR 
  where ent.ent_list_key  = ea.ent_list_key and ea.usr_key   = usr.usr_key 
    --and ea.ent_status   in  ('Provisioned','Enabled') --and ent.ent_description = 'OMCS Server Account' 
    and ENT_DISPLAY_NAME like '%OPCEBS_Prod_Configuration%' 
    --and ENT_Description like 'Global Enterprise Cloud - Production%' 
    and USR.USR_LOGIN in ('SIVARAJ.MUTHUSAMY@ORACLE.COM', 'AVANISH.RACHAKATLA@ORACLE.COM', 'SIVARAMA.KRISHNA.BEZAWADA@ORACLE.COM', 'GOURAB.MONDAL@ORACLE.COM', 'PRABHATA.RANJAN.PRADHAN@ORACLE.COM') 
    and usr.usr_status = 'Active';
    
    SELECT  USR.USR_LOGIN  ,ent.ent_display_name,ent.ent_description  ,EA.ENT_STATUS,ea.ent_assign_create,ea.ent_assign_update ,ea.valid_to_date,ent.ent_code FROM ENT_LIST ENT, ENT_ASSIGN EA, USR 
    WHERE ENT.ENT_LIST_KEY  = EA.ENT_LIST_KEY AND EA.USR_KEY   = USR.USR_KEY 
    AND EA.ENT_STATUS   IN  ('Provisioned') 
    --AND ENT.ENT_DESCRIPTION LIKE 'Subscription Plan Management' 
    AND ENT_DISPLAY_NAME LIKE 'apac_saas_escalation_au_grp' 
    --and USR.USR_LOGIN in ('LAURA.TURCU@ORACLE.COM','MIHAI.POPIRDA@ORACLE.COM') 
    and USR.USR_STATUS = 'Active'
    --and ea.ent_assign_create >= sysdate-10 --and ea.ent_assign_create < sysdate-1/2 
    ;
   select * from ENT_LIST;
   
   ----ENTITLEMENT history FOR USERs
select l.ent_display_name,l.ent_description,h.valid_to_date,h.valid_from_date
from ENT_ASSIGN_HIST h, ent_list l, usr u where 
h.ent_list_key= l.ent_list_key
and h.usr_key=u.usr_key 
--and l.ent_display_name=''
--and l.ent_description=''
and u.usr_login in ('OIM-GENTEST45_IN@ORACLE.COM')
and h.valid_to_date <sysdate;
   
   select * from ENT_ASSIGN;


   ----roles provisoned to user
   
select usr.usr_key, usr_login, usr_status, ugp_display_name, usg_create, ugp_rolename, ugp_namespace, ugp_ldap_dn, usr_udf_person_id, usr.*
from usg usg, ugp ugp, usr usr
WHERE USG.UGP_KEY= UGP.UGP_KEY
--and usr_create > sysdate -2
--and usr_login like 'GAURAV.NIGAM@ORACLE.COM'
and usr.usr_key  = usg.usr_key and ugp_name like 'Default-HRIT-JP-401K-Employee';
   
   
----ORION MOS

SELECT * FROM OIM_ILEARN_COURSES_V WHERE UPPER(USERNAME)='RAMESH.MEESALA@ORACLE.COM' and RCO_ID = '2034509183';

select * from UD_ORIP_USR where UD_ORIP_USR_LOGIN ='F.FAHMI@ORACLE.COM' ;

select * from UD_ORIU_USR where UD_ORIU_USR_LOGIN ='BHARGAV.REDDY.GUNREDDY@ORACLE.COM';
select * from UD_ORIU_USR where ORC_KEY=13003853;
update UD_ORIU_USR set UD_ORIU_USR_SUPPORTNOTES=UD_ORIU_USR_SUPPORTNOTES||'SR#160503-000558',UD_ORIU_USR_UNIQUE_ID='BHARGAV.REDDY.GUNREDDY@ORACLE.COM' where ORC_KEY=13003853 and UD_ORIU_USR_LOGIN ='BHARGAV.REDDY.GUNREDDY@ORACLE.COM';
UD_ORIU_USR

SELECT * FROM UD_ORIP_CH WHERE ORC_KEY =11343352;
SELECT * FROM UD_ORIP_USR WHERE request_key=1925048;

select usr_status,usr_login,  usr_last_name,usr_first_name from usr where usr_login in ('SUBBARAO.KANAGALA@ORACLE.COM','SABINA.KOUSER@ORACLE.COM','SUMAN.PATNAIK@ORACLE.COM');

-----APPLICATION details

select ai.app_instance_display_name,AI.APP_INSTANCE_NAME, svr_name it_resource, obj_name object_name, pkg_name process_def, sdk_name ud_table, app_instance_key , app_instance_name,svd_svr_type It_Resource_type
from app_instance ai, pkg, sdk,tos, obj, svr,svd
where itresource_key = svr_key
and svd.svd_key=svr.svd_key
and pkg.obj_key = obj.obj_key 
and object_key = pkg.obj_key 
and pkg.pkg_key = tos.pkg_key 
and tos.sdk_key = sdk.sdk_key 
and ai.app_instance_display_name like '%Oracle Advanced Support Portal (ASP)%';


select * from OIM_BLKLD_TMP_ORNAO2;

select ud_orna_u_name ud from ud_orna_u ud where ud.orc_key=orc.orc_key where ud.ud_orna_u_route_id='oci_account';


desc ud_wuduser;

select UD_WUDUSER_EMAIL,UD_WUDUSER_ORGNAME,UD_WUDUSER_AD,UD_WUDUSER_LNAME,UD_WUDUSER_NEVER,UD_WUDUSER_FNAME,UD_WUDUSER_USERPRINCIPALNAME,UD_WUDUSER_FULLNAME,
UD_WUDUSER_MNAME,UD_WUDUSER_UID,UD_WUDUSER_LOCKED,UD_WUDUSER_SUPPORTNOTES,UD_WUDUSER_OBJECTGUID
from  ud_wuduser where  orc_key =16451486;

select * from ud_wuduser where ud_wuduser_uid in ('DHILLMAN');
select * from ud_wuduser where orc_key =14200419;
select * from ud_wuduser where request_key =	12359981;
select * from UD_WUDUSRC where request_key =5160207;
select * from UD_WUDGRP where orc_key =16451486;
select * from ud_wuduser where ud_wuduser_commonname in ('mshussai','pvudutha');
select * from ud_wuduser where upper(ud_wuduser_email) in ('dean.hillman@oracle.com');

desc ud_wuduser;
select * from usr where usr_login='DEAN.HILLMAN@ORACLE.COM';

update ud_wuduser set ud_wuduser_objectguid ='fca20cd49180ac4f911a0e474bc5f83a' where orc_key in (17829757;

UD_WUDUSRC_GROUPNAME
update ud_wuduser set ud_wuduser_supportnotes=ud_wuduser_supportnotes||'SR#190120-000156' where request_key =	12359981;
update ud_wuduser set ud_wuduser_supportnotes=ud_wuduser_supportnotes||'SR#TERMALERT20JAN19' where ud_wuduser_uid in ('nbadyal');

update 

select distinct UD_WUDUSER_ORGNAME from ud_wuduser ;

select * from ud_wuduser where UD_WUDUSER_ORGNAME not in ('165~CN=Users,DC=oradev,DC=oraclecorp,DC=com');

select * from ud_wudou;

----------

select * from UD_WARE_U where request_key =	17112607;
select * from UD_WARE_U where UD_WARE_U_NAME =	'SWATHI.NAVALGUND@ORACLE.COM';


-------ACS ePact
select * from UD_AEP where UPPER(UD_AEP_USERID) in ('CHULJUNG.KIM@ORACLE.COM');

Select * From Ud_Aep Where Orc_Key In  (9905805,8724254,8217203,8176851,8029412,1042525);

delete from ud_aep_r where Orc_Key In  (9845378) and ud_aep_r_supportnotes ='SR#497386-938295546';

select * from ud_aep_r where ud_aep_r_supportnotes ='SR#497386-938295546';

select distinct ud_aep_r_flag from ud_aep_r;

select lkv.*--, substr(lkv_encoded,instr(lkv_encoded,'~')+1) as lkv_encoded 
from lkv lkv, lku lku
where LKV.LKU_KEY=LKU.LKU_KEY
and lku.lku_type_string_key='Lookup.Siebel.Position.AEP' 
--and lkv_encoded like '%645~1-2IN8F%'
--and length (lkv_encoded)>13;
and lower(lkv_decoded) like lower('%JAYKRISHNA%');



select * from ud_aep where orc_key in (11339639, 10938838, 11384683, 11361793, 11339695, 11386966, 11339654, 11320623, 11354929, 11350107, 11346427, 11384746, 11329297, 10946664, 11385140, 11346448, 11355985, 11342961, 11364261, 11356237, 11365114, 11386991, 11316763, 11361775, 11384755, 11343014, 11359036, 11348562, 11386997, 10943237, 10348304, 10355264, 10364358, 10586060, 10357197, 11381683, 11382270, 11382206, 10798285, 10592046, 9905796, 9897881, 938416, 938625, 11375029, 927315);

update ud_aep set ud_aep_supportnotes=ud_aep_supportnotes||'SR#497386-938295546', ud_aep_unique_id=UD_AEP_USERID where orc_key in (11339639, 10938838, 11384683, 11361793, 11339695, 11386966, 11339654, 11320623, 11354929, 11350107, 11346427, 11384746, 11329297, 10946664, 11385140, 11346448, 11355985, 11342961, 11364261, 11356237, 11365114, 11386991, 11316763, 11361775, 11384755, 11343014, 11359036, 11348562, 11386997, 10943237, 10348304, 10355264, 10364358, 10586060, 10357197, 11381683, 11382270, 11382206, 10798285, 10592046, 9905796, 9897881, 938416, 938625, 11375029, 927315);




select orc_key from ud_aep 
minus
select orc_key from oiu ;




select * from OIM_BLKLD_TMP_UDAEP1;
select * from OIM_BLKLD_EX_UDAEP1;


Insert Into Ud_Aep_R
Select  UD_aep_r_SEQ.NEXTVAL,  A.Orc_Key, Null,1,Sysdate,1,Sysdate,Empty_Clob(),'0000000000000000',Null,0,Null,Null,Udout.ud_aep_key,null,a.ent_code,'SR#497386-938295546'
From Oim_Support.Ornatmp A
, Ud_Aep Udout
Where A.Lastname Is   Null And A.Firstname Is Null And A.Orc_Key Is Not Null
And Udout.Orc_Key =  A.Orc_Key
;

select usr_first_name, usr_last_name, usr_login from usr where usr_login in  ('DAVID.AHCHONG@ORACLE.COM', 'KRISTINA.ZANE@ORACLE.COM', 'CHARLENE.MARTINEZ@ORACLE.COM', 'DEREK.CHOI@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'DAVID.AHCHONG@ORACLE.COM', 'LEIGHTON.CHONG@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'DEREK.CHOI@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'DEREK.CHOI@ORACLE.COM', 'LEIGHTON.CHONG@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'MANOJ.DEVASARMA@ORACLE.COM', 'KATE.WASHLICK@ORACLE.COM', 'PETER.WALLS@ORACLE.COM', 'KATHERINE.GREANEY@ORACLE.COM', 'MADALINA.PASTRAVEANU@ORACLE.COM', 'CARLOS.MURILLO@ORACLE.COM', 'RAGHAVENDRA.BANDLA@ORACLE.COM', 'SRIHARSHA.KS@ORACLE.COM', 'KRISTINA.ZANE@ORACLE.COM', 'LEIGHTON.CHONG@ORACLE.COM', 'DEEPA.SHUKLA@ORACLE.COM', 'MANOJ.DEVASARMA@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'DEREK.CHOI@ORACLE.COM', 'KEVEN.CHAN@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'LEIGHTON.CHONG@ORACLE.COM', 'MANOJ.DEVASARMA@ORACLE.COM', 'KISHAN.AGRAWAL@ORACLE.COM', 'KRISTINA.ZANE@ORACLE.COM', 'DEREK.CHOI@ORACLE.COM', 'DAVID.AHCHONG@ORACLE.COM', 'LARRY.WANG@ORACLE.COM');

SELECT * FROM UD_DAPS_U WHERE UD_DAPS_U_USERNAME IN ('DAVID.AHCHONG@ORACLE.COM', 'KRISTINA.ZANE@ORACLE.COM', 'CHARLENE.MARTINEZ@ORACLE.COM', 'DEREK.CHOI@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'DAVID.AHCHONG@ORACLE.COM', 'LEIGHTON.CHONG@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'DEREK.CHOI@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'DEREK.CHOI@ORACLE.COM', 'LEIGHTON.CHONG@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'MANOJ.DEVASARMA@ORACLE.COM', 'KATE.WASHLICK@ORACLE.COM', 'PETER.WALLS@ORACLE.COM', 'KATHERINE.GREANEY@ORACLE.COM', 'MADALINA.PASTRAVEANU@ORACLE.COM', 'CARLOS.MURILLO@ORACLE.COM', 'RAGHAVENDRA.BANDLA@ORACLE.COM', 'SRIHARSHA.KS@ORACLE.COM', 'KRISTINA.ZANE@ORACLE.COM', 'LEIGHTON.CHONG@ORACLE.COM', 'DEEPA.SHUKLA@ORACLE.COM', 'MANOJ.DEVASARMA@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'DEREK.CHOI@ORACLE.COM', 'KEVEN.CHAN@ORACLE.COM', 'LARRY.WANG@ORACLE.COM', 'LEIGHTON.CHONG@ORACLE.COM', 'MANOJ.DEVASARMA@ORACLE.COM', 'KISHAN.AGRAWAL@ORACLE.COM', 'KRISTINA.ZANE@ORACLE.COM', 'DEREK.CHOI@ORACLE.COM', 'DAVID.AHCHONG@ORACLE.COM', 'LARRY.WANG@ORACLE.COM');
SELECT * FROM UD_DAPS_P WHERE ORC_KEY IN (3811949);

desc UD_DAPS_P;

select * from OIM_BLKLD_TMP_UDDAP2;

-------------NGCC
desc prod_oim.ud_ngcc_usr;
Select * from prod_oim.ud_ngcc_usr;
select * from prod_oim.svr where svr_key in (13067,13127,13167,13107);

-------------Global IDC

UD_GLDC_USR
SELECT * FROM UD_GLDC_USR WHERE REQUEST_KEY ='2620065';

-------------------Oracle University Application 

SELECT * FROM UD_OUA_U WHERE UPPER(UD_OUA_U_USERNAME) IN ('ANIL.K.DESU@ORACLE.COM');
Select O.Ost_Status, U.Orc_Key From Ost O, Oiu U Where O.Ost_Key =U.Ost_Key And U.Orc_Key In (SELECT orc_key FROM UD_OUA_u where upper(ud_oua_u_username) in ('ANNE.HAAGENSEN@ORACLE.COM'));

------------
SELECT usr_status,usr_login,USR_LDAP_DN,usr_emp_type,USR_UDF_DISABLED_DATE FROM USR WHERE upper(USR_LOGIN) LIKE upper('%NEW.HIRE.EBN.TEST@ORACLE.COM%');

select USR_STATUS,USR_LOGIN,USR_LDAP_DN,USR_EMP_TYPE,USR_UDF_DISABLED_DATE from USR where USR_LOGIN like '%ZAPZAPZAPZAPZAPZAPZAPZAP.TEST@ORACLE.COM';
update  USR set USR_UPDATE=sysdate-32 WHERE USR_LOGIN LIKE '%HARISH.GRANDHI@ORACLE.COM';

desc usr;

select USR_UDF_ACCOUNTS_REVOKED, USR_KEY,USR_MANAGER_KEY,USR_UDF_DISABLED_DATE,USR_LDAP_ORGANIZATION_UNIT,USR_LDAP_ORGANIZATION_UNIT,USR_STATUS,USR_LOGIN,USR_UPDATE,USR_LDAP_DN,USR_EMP_TYPE from USR where USR_LOGIN like '%HARISH.GRANDHI@ORACLE.COM';
SELECT * FROM USR WHERE USR_LOGIN LIKE '%HARISH.GRANDHI@ORACLE.COM';

select * from act;



 
 select usr.usr_key,usr_login,ost_status,  ud.*
from oiu, ost, ud_orna_u ud, usr usr, svr
where ud.orc_key = oiu.orc_key
and oiu.ost_key = ost.ost_key
and oiu.usr_key=usr.usr_key
and USR_STATUS='Active'
and svr_name like '%PDIT Confluence%'
and svr_key = ud_orna_u_server
and ost_status in ('Provisioning')
and usr.usr_login in (
select usr.usr_login
from oiu, ost, ud_orna_u ud, usr usr, svr
where ud.orc_key = oiu.orc_key
and oiu.ost_key = ost.ost_key
and oiu.usr_key=usr.usr_key
and ost_status in ('Provisioning')
and usr_status='Active'
and svr_name like '%PDIT Confluence%'
and svr_key = ud_orna_u_server
minus
select usr.usr_login
from oiu, ost, ud_orna_u ud, usr usr, svr
where ud.orc_key = oiu.orc_key
and oiu.ost_key = ost.ost_key
and oiu.usr_key=usr.usr_key
and ost_status in ('Provisioned','Enabled','Disabled')
and usr_status='Active'
and svr_name like '%PDIT Confluence%'
and svr_key = ud_orna_u_server) order by ud_orna_u_create desc; 

select * from act;

SELECT * FROM UD_PU_USERS WHERE UD_PU_USERS_EMAIL IN ('andrew.kennedy@oracle.com');

 select USR_LOGIN from USR start with USR_LOGIN='SAKET.S.RANJAN@ORACLE.COM'
connect by prior usr_key=usr_manager_key and usr_status='Active' and usr_udf_employee_subtype in ('EMPLOYEE', 'CONTRACTOR-BILLABLE', 'CONTRACTOR-CLEATS', 'CONTRACTOR-MAA');

select * from ud_orna_u  ;




SELECT USR_KEY FROM USR START WITH USR_KEY IN (97429) CONNECT BY PRIOR USR_KEY=USR_MANAGER_KEY;

select * from ud_bdna_u order by ud_bdna_u_create desc; where request_key = 2874736;


select * from ENT_ASSIGN_HIST;

select * from ud_emcp_u where request_key =2935587;

------ENTITLEMENT REJECTED TASKS 
select * from UD_SSA_P where UD_SSA_P_KEY in ((select OSI.OSI_CHILD_TABLE_KEY from OSI, SCH where OSI.SCH_KEY = SCH.SCH_KEY and SCH.SCH_STATUS = 'C' and ORC_KEY = 11162264));
select * from ud_ssa_p where  request_key like '3056618';

select * from ud_daps_u;


SELECT * FROM request WHERE request_justification LIKE '%497386-1011424740%' AND request_status IN ('Request Awaiting Dependent Request Completion','Request Awaiting Approval');
select * from request where request_justification like '%497386-1011424740%' and request_status like 'Request Approved Fulfillment Failed%';

select * from request where request_key like '3056618';

select * from REQUEST R, REQUEST_BENEFICIARY RB where R.REQUEST_KEY = RB.REQUEST_KEY and 
RB.BENEFICIARY_KEY in (select USR_KEY from USR where USR_LOGIN in ('VEDA.KUPPASWAMY@ORACLE.COM')) and R.REQUEST_JUSTIFICATION like '%497386-989016818%'
and r.request_status != 'Request Completed'
;

----------CAPL QMON

select * from ud_capl_usr where request_key=		4329367	;

--Resource History
select osi.sch_key, osi.orc_key, osi.mil_key, 
to_char(osi.osi_assigned_date,'dd-mon-rrrr hh24:mi:ss') ,to_char(OSI.OSI_UPDATE,'dd-mon-rrrr hh24:mi:ss')
,osi.rsc_key, sch.sch_status, sch.sch_data, mil.mil_name, SCH.sch_update,to_char(sysdate,'dd-mon-rrrr hh24:mi:ss')
from osi, sch, mil
where osi.sch_key = sch.sch_key
and OSI.MIL_KEY = MIL.MIL_KEY
and OSI.ORC_KEY in (11162264)
order by sch.sch_update desc;



select usr_key, usr_login from usr where usr_login in ('CHRIS.GAVIN@ORACLE.COM','CAMPBELL.WEBB@ORACLE.COM','SAFRA.CATZ@ORACLE.COM','PAOLO.JUVARA@ORACLE.COM');




ea32bfe846e5e94687944eab0549b76e
select * from ud_wuduser where lower(ud_wuduser_commonname)=lower('pvudutha');

select * from ud_wudusrc;

SELECT * FROM UD_OFSA_USR WHERE REQUEST_KEY=55449  ;
SELECT * FROM UD_OFSA_CH;
desc UD_OFSA_CH;

update usr set usr_udf_disabled_date=sysdate-20 where usr_login in ('CORPOIMTEST.USER1@ORACLE.COM');

select usr_key,usr_udf_disabled_date,usr_login,usr_status,usr_emp_type from usr where usr_login in ('CORPOIMTEST.USER1@ORACLE.COM');

select * from usr where usr_login in ('CORPOIMTEST.USER1@ORACLE.COM','PRASHANTH.VUDUTHALA@ORACLE.COM');

----webex

select * from UD_WEBX_USR where orc_key in (11707278);
select * from UD_WEBX_USR where request_key in (11000921);
update UD_WEBX_USR set UD_WEBX_USR_supportnotes=UD_WEBX_USR_supportnotes||'SR#171006-000626' where orc_key in (11707278);

-----EMEA HR APES

select * from ud_AEHR_u where ud_AEHR_u_application_id=154;

select * from ud_AEHR_p where orc_key in (select orc_key from ud_AEHR_u where ud_AEHR_u_application_id=154);

desc ud_AEHR_p;

select * from OIM_BLKLD_TMP_UDEME2;

select * from UD_ORNA_U where ORC_KEY in ();
select * from ud_ssoa_usr WHERE UPPER(UD_SSOA_USR_EMAIL) IN  ('HRUPDATES_GR@ORACLE.COM');

select * from ud_ssoa_usr order by 1 desc;

SELECT UD_SSOA_USR_ORG_DN, UD_SSOA_USR_COM_NAME FROM UD_SSOA_USR WHERE UD_SSOA_USR_EMAIL = 'jacky.qin@oracle.com';
desc ud_ssoa_usr;

update ORC ORC
set ORC_TOS_INSTANCE_KEY = (select ud_ssoa_usr_LOGIN UD from ud_ssoa_usr UD where UD.ORC_KEY=ORC.ORC_KEY)
WHERE ORC_KEY IN (SELECT ORC_KEY FROM ud_ssoa_usr where ORC_KEY='12094520' ) ;

select * from UD_EMCP_U;
select * from ud_emcp_P;

desc UD_EMCP_P;

select * from UD_REFP_U where REQUEST_KEY=3413579;
update UD_REFP_U set UD_REFP_U_SUPPORTNOTES=UD_REFP_U_SUPPORTNOTES||'SR#497386-1034122958' where REQUEST_KEY=3413579;

Update oiu set ost_key = (select OST_KEY from ost where ost_status ='Provisioned' and obj_key in 
(SELECT OBJ_KEY  FROM OST WHERE OST_KEY IN(SELECT OST_KEY FROM OIU WHERE ORC_KEY IN (12061271)  )) ) 
where ORC_KEY in(12061271);


select * from usg;

select * from ugp where ugp_display_name like '%User Viewer%';

select * from OUG;

select * from PUG;

Select * from fug;

select * from ud_aduc_usr;
update ud_aduc_usr set ud_aduc_usr_name=lower(ud_aduc_usr_name) ; 
desc ud_aduc_usr;
 SELECT * FROM apsoim.NOTIFICATION_RECEIVERS where entity_key = 490910;
 ---------------------MIL TASK
 
 select m.mil_name, adv.adv_name, mav.mav_map_to, mav.mav_map_qualifier, mav.mav_map_value ,adv.adv_desc from mav  
join mil m on mav.mil_key = m.mil_key 
join tos t on t.tos_key = m.tos_key
join pkg p on t.pkg_key = p.pkg_key
JOIN ADV ADV ON ADV.ADV_KEY = MAV.ADV_KEY
WHERE M.MIL_NAME LIKE '%Password Updated'
--and m.mil_name not like 'Create%'
AND P.PKG_NAME  like  '%NGCC%'
--and mav_map_value ='Eclipse1'
order by mil_name;
 desc UD_CSCG_USR;
 
select adp.adp_key, p.pkg_name || '------' || m.mil_name, M.MIL_KEY, adv.adv_name, mav.mav_key, mav.mav_map_to, mav.mav_map_qualifier, mav.mav_map_value from mav  
join mil m on mav.mil_key = m.mil_key 
join tos t on t.tos_key = m.tos_key
join pkg p on t.pkg_key = p.pkg_key
join ADV ADV on ADV.ADV_KEY = MAV.ADV_KEY
join adp on adp.adp_key=adv.adp_key
where m.mil_name like '%FileName Updated%' --************************************
--and m.mil_name not like 'Create%'

and p.pkg_name like ('%AcquiredLegacyApplicationsNew%') -- ******************************************
 ;
 
 select p.pkg_name || '  ', m.mil_name, m.mil_key, adv.adv_name, mav.mav_key, mav.mav_map_to, 
 mav.mav_map_qualifier, mav.mav_map_value from mav
join mil m on mav.mil_key = m.mil_key
join tos t on t.tos_key = m.tos_key
join pkg p on t.pkg_key = p.pkg_key
join ADV ADV on ADV.ADV_KEY = MAV.ADV_KEY
--where  m.mil_name like 'Aged Pass%'
--and m.mil_name like 'Create User'
and p.pkg_name like  '%SAML%'
and adv.adv_name ='successResponseLookup'
--and mav.mav_map_to ='IT Resources'
--where m.mil_key in (75585)
order by adv_name;

update mav set mav_map_to ='Literal' ,mav_map_qualifier='String',mav_map_value='Welcome1'
where mav_key in (112275, 112272, 112282, 112288, 112290, 112580, 112286, 112284, 112273, 112267, 112269, 112285, 112270, 112559, 112289, 112291, 112278, 112558, 112271, 112274, 112279, 112268, 112283, 112276, 112607, 112281)
;
 
 
 select * from mav where mav_key = 71238;
update mav set mav_map_value = ? where mav_key = 75455;
 
 SELECT * FROM UD_OCSA_ROL;
 SELECT * FROM UD_OCSA_USR;
 SELECT * FROM UD_OCSA_SVR;
 select * from UD_OCSA_Sud;
 
 SELECT * FROM UD_OCSA_USR where request_key = 464982 ;
 select * from UD_AQLN_CH where orc_key=4765513;
 desc UD_AQLN_CH;
 
 desc ud_omcs_usr;
 select * from ud_omcs_usr where UD_OMCS_USR_USERID ='ravsahu' ; 
 
  select m.mil_name, adv.adv_name, mav.mav_map_to, mav.mav_map_qualifier, mav.mav_map_value, P.PKG_NAME from mav  
join mil m on mav.mil_key = m.mil_key 
join tos t on t.tos_key = m.tos_key
join pkg p on t.pkg_key = p.pkg_key
join ADV ADV on ADV.ADV_KEY = MAV.ADV_KEY
where m.mil_name like '%Revoke Privilege%'
--and m.mil_name not like 'Create%'
and P.PKG_NAME =  'AD For OnDemand'
--and  adv.adv_name like 'requestHeaderLookup'
order by mil_name;
 
 select * from UD_CLMA_USR where request_key = 8760227;
 update UD_CLMA_USR set UD_CLMA_USR_SUPPORTNOTES=UD_CLMA_USR_SUPPORTNOTES||'SR#180130-000050' where request_key = 8297392;
 select * from ud_clma_P;
 
 desc UD_CLMA_USR;
 desc ud_clma_p;
 
 -----------------TERM ALERT
SELECT USR.USR_KEY,USR.USR_LOGIN,USR.USR_UDF_GLOBALUID, USR.USR_STATUS,USR.USR_EMP_NO,USR.USR_UDF_BUSINESS_GRP,
  APP.APP_INSTANCE_DISPLAY_NAME,
  OST.OST_STATUS AS ACCOUNT_STATUS,USR.USR_UDF_DISABLED_DATE,
  OIU_UPDATE,oiu.orc_key
FROM OIU,
  OST,
  USR,
  APP_INSTANCE APP
WHERE OIU.APP_INSTANCE_KEY        = APP.APP_INSTANCE_KEY
AND oiu.ost_key                   = ost.ost_key
AND ost.obj_key                   = app.object_key
AND OIU.USR_KEY                   = USR.USR_KEY
--AND OST.OST_STATUS               IN ('Provisioned')
AND APP.APP_INSTANCE_DISPLAY_NAME like '%Corp%SSO%'
 --AND APP.APP_INSTANCE_DISPLAY_NAME IN ('ABHILASH.KALA@ORACLE.COM', 'ABHINAV.X.KUMAR@ORACLE.COM', 'ABRAHAM.FAERSTEIN@ORACLE.COM', 'ADIL.X.AKHUNJI@ORACLE.COM', 'ADRIANA.CHIROMATZO@ORACLE.COM', 'AI.YAMAOKA@ORACLE.COM', 'AJIT.VASISTA@ORACLE.COM', 'AKSHAYA.MURTHY@ORACLE.COM', 'ALDRIN.VIEGAS@ORACLE.COM', 'ALEJANDRA.SCOWEN@ORACLE.COM', 'ALEJANDRO.MORA@ORACLE.COM', 'ALEXANDRA.DULGHERU@ORACLE.COM', 'ALEXANDRA.MOISE@ORACLE.COM', 'ALYONA.A.DOUBROVINA@ORACLE.COM', 'AMY.CRAWLEY@ORACLE.COM', 'ANA-MARIA.CATRINA@ORACLE.COM', 'ANAND.KOTHARI@ORACLE.COM', 'ANAND.UV@ORACLE.COM', 'ANCA.TOMA@ORACLE.COM', 'ANDERS.RENDTORFF@ORACLE.COM', 'ANDREEA.BANARU@ORACLE.COM', 'ANDREI.SEMEN@ORACLE.COM', 'ANDREW.ELLIOTT@ORACLE.COM', 'ANDREW.R.HANSEN@ORACLE.COM', 'ANDY.SCUTT@ORACLE.COM', 'ANIL.BILLAPATI@ORACLE.COM', 'ANNE.THERIAULT@ORACLE.COM', 'APOORVA.KUMARI@ORACLE.COM', 'ARJUN.T@ORACLE.COM', 'ARPITHA.SURYAPRAKASH@ORACLE.COM', 'ARUN.GOVINDARAJU@ORACLE.COM', 'ARYA.VAZHAMPATTA@ORACLE.COM', 'ATTILA.VASSY@ORACLE.COM', 'AUSTIN.STODDARD@ORACLE.COM', 'BASHA.SAYED@ORACLE.COM', 'BEN.DE.MORA@ORACLE.COM', 'BHARATH.SOMISETTY@ORACLE.COM', 'BIJAN.HAGHIGHI@ORACLE.COM', 'BILL.LO@ORACLE.COM', 'BOB.WILLEFORD@ORACLE.COM', 'BOGDAN.B.IONITA@ORACLE.COM', 'BRAD.COATES@ORACLE.COM', 'BRADLEY.STROSSMAN@ORACLE.COM', 'BRANO.MODROVSKY@ORACLE.COM', 'BRET.FRASER@ORACLE.COM', 'BRIAN.CRANE@ORACLE.COM', 'BRIAN.VELTMAN@ORACLE.COM', 'BRUNO.BORGES@ORACLE.COM', 'BRYAN.BURR@ORACLE.COM', 'CAMERON.CUTHBERT@ORACLE.COM', 'CARLOEMANUELE.CAVO@ORACLE.COM', 'CARROLL.BROWN@ORACLE.COM', 'CATHERINE.BUI@ORACLE.COM', 'CATHERINE.GUNN@ORACLE.COM', 'CHANDRAKALA.L@ORACLE.COM', 'CHOY-YOKE.CHAN@ORACLE.COM', 'CHUNLAI.PEI@ORACLE.COM', 'CLAIRE.FARRELL@ORACLE.COM', 'CONSTANTIN.CONDRITCHI@ORACLE.COM', 'CORA.PARKER@ORACLE.COM', 'CORNELIA.ALDEA@ORACLE.COM', 'CRISTIAN.TARAU@ORACLE.COM', 'CRISTINA.POSTOLACHE@ORACLE.COM', 'DANIEL.L.TEIXEIRA@ORACLE.COM', 'DANIEL.PAVELIUC@ORACLE.COM', 'DANIELA.BADESCU@ORACLE.COM', 'DANIELA.OANCEA@ORACLE.COM', 'DANNA.DAVIS@ORACLE.COM', 'DAPO.OSOBA@ORACLE.COM', 'DARRIN.WILLIAMS@ORACLE.COM', 'DAVE.VANDENBERG@ORACLE.COM', 'DAVID.MALICH@ORACLE.COM', 'DAVID.SYLVESTER@ORACLE.COM', 'DAVID.ZAHALAN@ORACLE.COM', 'DEEPAK.RAJANNA@ORACLE.COM', 'DELLA.D.DSOUZA@ORACLE.COM', 'DIANA.ANDREEA.DINA@ORACLE.COM', 'DIANA.GRAY@ORACLE.COM', 'DINA.ORTIZ@ORACLE.COM', 'DINA.SCHUMAKER@ORACLE.COM', 'DIVYESH.SHAH@ORACLE.COM', 'DJAMEL.MANSOURI@ORACLE.COM', 'DOMINIC.QUAZI@ORACLE.COM', 'EIJIRO.TAKI@ORACLE.COM', 'EIRA.HELLING@ORACLE.COM', 'ELENA.ONESTI@ORACLE.COM', 'ELENI.PEZA@ORACLE.COM', 'ELIZABETH.LOPEZ@ORACLE.COM', 'ELLE.SANPEDRO@ORACLE.COM', 'ELLEN.GROOT@ORACLE.COM', 'ELOISA.VEGA@ORACLE.COM', 'EOIN.KING@ORACLE.COM', 'ERIC.STEPHENS@ORACLE.COM', 'ERICK.TOVAR@ORACLE.COM', 'EUGENE.IMURA@ORACLE.COM', 'FAYAS.MK@ORACLE.COM', 'FELIPE.B.BARBOSA@ORACLE.COM', 'FLORIAN.SCHLECHT@ORACLE.COM', 'FLORIN.STOICESCU@ORACLE.COM', 'FRANCIS.CHANG@ORACLE.COM', 'FRED.COOK@ORACLE.COM', 'FUMIKO.ISHII@ORACLE.COM', 'GAURAV.J.KUMAR@ORACLE.COM', 'GEETANJALI.RANE@ORACLE.COM', 'GEORGIANA.DRAGHICI@ORACLE.COM', 'GERALD.SOO@ORACLE.COM', 'GERMAN.ESCUELA.YEPEZ@ORACLE.COM', 'GOUTAM.PATRA@ORACLE.COM', 'GOVINDAN.AK.MENON@ORACLE.COM', 'GRACEMARIE.THAMES@ORACLE.COM', 'GREG.STACHNICK@ORACLE.COM', 'GURUPRASAD.DEVADIGA@ORACLE.COM', 'H.HYEYOUNG.KIM@ORACLE.COM', 'HEATHER.CAMPBELL@ORACLE.COM', 'HEBATALLAH.SAID@ORACLE.COM', 'HELEN.REILLY@ORACLE.COM', 'INGE.BORGMANN@ORACLE.COM', 'ION.CRISTIAN@ORACLE.COM', 'JACK.BERKOWITZ@ORACLE.COM', 'JAMES.OHALLORAN@ORACLE.COM', 'JAY.S.BELUR@ORACLE.COM', 'JAYASHREE.T@ORACLE.COM', 'JEAN-FRANCOIS.TESSIER@ORACLE.COM', 'JEFFREY.RICHARDSON@ORACLE.COM', 'JEFFRY.DAVIS@ORACLE.COM', 'JENNA.BANKS@ORACLE.COM', 'JENNIFER.CLIFFORD@ORACLE.COM', 'JENNIFER.ZOLLNER@ORACLE.COM', 'JESSE.PETERSON@ORACLE.COM', 'JESUS.GARZA@ORACLE.COM', 'JIAYI.YANG@ORACLE.COM', 'JILL.BURROUGHS@ORACLE.COM', 'JIM.BEARNS@ORACLE.COM', 'JINYU.WANG@ORACLE.COM', 'JOANNE.COLANGELO@ORACLE.COM', 'JOAO.VASCONCELLOS@ORACLE.COM', 'JOHN.IMERZEL@ORACLE.COM', 'JOHN.J.BROWN@ORACLE.COM', 'JOSEPH.PREGENT@ORACLE.COM', 'JOSHUA.GOULD@ORACLE.COM', 'JUAN.MANUEL.BELMONTE.GARCIA@ORACLE.COM', 'JULIE.LIERMAN@ORACLE.COM', 'KADIRI.MADHU.SUDHAN@ORACLE.COM', 'KAREN.BITRAN@ORACLE.COM', 'KAREN.MOLINA@ORACLE.COM', 'KAREN.MURRAY@ORACLE.COM', 'KARIN.BAI@ORACLE.COM', 'KATIE.HARPER@ORACLE.COM', 'KEERTHANA.RAVINDRAN@ORACLE.COM', 'KEVIN.FAULKNER@ORACLE.COM', 'KRISHNA.SONAR@ORACLE.COM', 'LACHLAN.WILLIAMS@ORACLE.COM', 'LARRY.CALLAGHAN@ORACLE.COM', 'LAURA.BOUFFORD@ORACLE.COM', 'LAURA.SANDU@ORACLE.COM', 'LAVANYA.SILIVERI@ORACLE.COM', 'LAWRENCE.CLARK@ORACLE.COM', 'LEN.WOLFENSTEIN@ORACLE.COM', 'LIGIA.MARTINI@ORACLE.COM', 'LILIANA.A.ACUNA@ORACLE.COM', 'LOIS.PRICE@ORACLE.COM', 'LORAINE.CAULFIELD@ORACLE.COM', 'LUCIA.X.MANGOVA@ORACLE.COM', 'MADOKA.OGAWA@ORACLE.COM', 'MANOJ.KUMAR.SINGH@ORACLE.COM', 'MARCO.LANDRY@ORACLE.COM', 'MARCOS.PINHEIRO@ORACLE.COM', 'MARIANA.GALVAN@ORACLE.COM', 'MARIANA.SANDU@ORACLE.COM', 'MARIE-CHRISTINE.DEBAUCHE@ORACLE.COM', 'MARK.CAVAGE@ORACLE.COM', 'MARK.KELLY@ORACLE.COM', 'MARTIN.TULIK@ORACLE.COM', 'MATHEW.LOWE@ORACLE.COM', 'MATTHEW.TAFOYA@ORACLE.COM', 'MAURICIO.GOEZ@ORACLE.COM', 'MAXIM.VAVELSCHI@ORACLE.COM', 'MAY.CHAU@ORACLE.COM', 'MEIHUA.LI@ORACLE.COM', 'MEIK.LANGWALD@ORACLE.COM', 'MESHENCHU.RENGMA@ORACLE.COM', 'MIHAI.L.IORDACHE@ORACLE.COM', 'MINAL.SATAM@ORACLE.COM', 'MOHAMMAD.JAMIL@ORACLE.COM', 'MOHAMMAD.SOHAIL@ORACLE.COM', 'MOUSHMI.BANERJEE@ORACLE.COM', 'MUNTAZ.ALI@ORACLE.COM', 'NATALIA.POIATA@ORACLE.COM', 'NAVEEN.MANDAKKI@ORACLE.COM', 'NEERAJ.GU.GUPTA@ORACLE.COM', 'NICOLAE.PUSOIU@ORACLE.COM', 'NICOLAS.SCHILLING@ORACLE.COM', 'NIKHIL.CHOPRA@ORACLE.COM', 'NITHIN.RAJ@ORACLE.COM', 'NIVEDITHA.DINAKAR@ORACLE.COM', 'NOELIA.VICO@ORACLE.COM', 'PARVEZ.K.KHAN@ORACLE.COM', 'PATRICK.VANDESCHEUR@ORACLE.COM', 'PAUL.MACURA@ORACLE.COM', 'PEDRO.BAEZ.BUSTILLO@ORACLE.COM', 'PETER.S.LI@ORACLE.COM', 'PETRU.ELENA@ORACLE.COM', 'PHIL.JONES@ORACLE.COM', 'PHILOMENA.OGBAH@ORACLE.COM', 'PRADEEP.SIRIKI@ORACLE.COM', 'PRAJANI.KC@ORACLE.COM', 'PRAKASHA.MS@ORACLE.COM', 'PRASAD.PARIGI@ORACLE.COM', 'PRIYALEKSHMI.S@ORACLE.COM', 'PRIYANKA.VAIBHAV@ORACLE.COM', 'PUSHPA.YADAV@ORACLE.COM', 'RAAGHUL.KRISHNAKUMAR@ORACLE.COM', 'RAHUL.K.PATEL@ORACLE.COM', 'RAJEEV.BHATIA@ORACLE.COM', 'RAJESH.CHOWDARY.BODDULURI@ORACLE.COM', 'RAJESH.RAMU@ORACLE.COM', 'RALUCA.MITROI@ORACLE.COM', 'RAMKANNAN.SETHURAM@ORACLE.COM', 'RAMMOHAN.KAKKUZHI@ORACLE.COM', 'RAMONA.GIUREA@ORACLE.COM', 'RAMYA.R.REDDY@ORACLE.COM', 'RANJEEV.CHOPRA@ORACLE.COM', 'RATNA.SRIVASTAVA@ORACLE.COM', 'RAVI.KELEGIRI@ORACLE.COM', 'RAY.ALLEN.HOU@ORACLE.COM', 'RAZVAN.MANOLE@ORACLE.COM', 'REINIER.MOUTON@ORACLE.COM', 'RESHMI.KURUP@ORACLE.COM', 'ROB.WALD@ORACLE.COM', 'ROBERT.E.ROPER@ORACLE.COM', 'ROBERTA.PERONI@ORACLE.COM', 'RODRIGO.OYARZUN.GUTIERREZ@ORACLE.COM', 'ROGER.GILMARTIN@ORACLE.COM', 'ROSHNI.PANIGRAHI@ORACLE.COM', 'ROXANA.ANICAI@ORACLE.COM', 'RUDOLF.PAUL@ORACLE.COM', 'SADHANA.VERMA@ORACLE.COM', 'SAI.ABHISHEK@ORACLE.COM', 'SALLY.PIAO@ORACLE.COM', 'SAMEER.KHETARPAL@ORACLE.COM', 'SAMUEL.STEVEN.TWINAM@ORACLE.COM', 'SANDEEP.X.SOOD@ORACLE.COM', 'SANTOSH.SHETGAR@ORACLE.COM', 'SARAWAK.NGUYEN@ORACLE.COM', 'SEANGEAN.WEE@ORACLE.COM', 'SHARAD.SINHA@ORACLE.COM', 'SHARION.WEI@ORACLE.COM', 'SHIVAPRASAD.BP@ORACLE.COM', 'SHRUTHI.UMESH@ORACLE.COM', 'SHUNJI.ZHENG@ORACLE.COM', 'SIEWFONG.LIEW@ORACLE.COM', 'SKIP.MOREHEAD@ORACLE.COM', 'SMITHA.X.RAO@ORACLE.COM', 'SMRITHI.RAJ.PULI@ORACLE.COM', 'SONNY.WILLIS@ORACLE.COM', 'SOPHIA.QIU@ORACLE.COM', 'SORA.MUROFUSHI@ORACLE.COM', 'SREENIVASASARMA.NEMANI@ORACLE.COM', 'SRINIVAS.GANNAVARAM@ORACLE.COM', 'SRIVIDYA.PAROLAMADAM.HARIHARA@ORACLE.COM', 'STEVEN.JANCZY@ORACLE.COM', 'SUBHADEEP.X.SENGUPTA@ORACLE.COM', 'SUBHRAJIT.PURKAYASTHA@ORACLE.COM', 'SUDHANSHU.KUMAR@ORACLE.COM', 'SUDHEER.VALLUMCHETLA@ORACLE.COM', 'SUJATA.SHAH@ORACLE.COM', 'SUMY.PAULRAJ@ORACLE.COM', 'SURESH.X.SHANKAR@ORACLE.COM', 'SUSHREE.SUPKAR@ORACLE.COM', 'TABREZ.AHMAD@ORACLE.COM', 'TANAY.BAWEJA@ORACLE.COM', 'TAPAS.SAMAL@ORACLE.COM', 'TARIQUE.HABIBULLAH@ORACLE.COM', 'TAUSEEF.HUSAIN@ORACLE.COM', 'THERESA.RUGGIERI@ORACLE.COM', 'TIBOR.BARANOVIC@ORACLE.COM', 'TIM.MCCANDLESS@ORACLE.COM', 'TNC.RAVI@ORACLE.COM', 'TODD.THOMPSON@ORACLE.COM', 'TRENT.DESPAIN@ORACLE.COM', 'UNNI.KONGOT@ORACLE.COM', 'VENKAT.RAJ@ORACLE.COM', 'VENU.INDANA@ORACLE.COM', 'VICKY.PASENKO@ORACLE.COM', 'VIDYADHAR.T.R@ORACLE.COM', 'VIKTOR.HOMOLKA@ORACLE.COM', 'VIKTORIA.HONIGH@ORACLE.COM', 'VIMMY.TULSIYAN@ORACLE.COM', 'VIVEK.C.SINGH@ORACLE.COM', 'WALTER.KERSZULIS@ORACLE.COM', 'WENDY.MCGARRY@ORACLE.COM', 'WES.BARNES@ORACLE.COM', 'WESTON.MAY@ORACLE.COM', 'WILLIAM.SCHUMANN@ORACLE.COM', 'WILLIAM.SIMPSON@ORACLE.COM', 'WILLIE.VU@ORACLE.COM', 'WINIFRED.SONG@ORACLE.COM', 'WOLFGANG.LEY@ORACLE.COM', 'YASUHIRO.KITAHAMA@ORACLE.COM', 'YEDIDA.AKKAYYA.RAJU@ORACLE.COM', 'YING.CICI.WANG@ORACLE.COM', 'YIYI.PAN@ORACLE.COM', 'YOSUKE.ARAI@ORACLE.COM', 'YURIKO.OKA@ORACLE.COM', 'YUXUAN.WANG@ORACLE.COM', 'ZACHARY.DAVIDSON@ORACLE.COM')
AND USR.USR_LOGIN  IN ('KAMAKSHI.SHENOY@ORACLE.COM')
and USR.USR_STATUS ='Active'
order by USR_LOGIN, APP_INSTANCE_DISPLAY_NAME
;
--and USR.USR_KEY in (select USR_KEY  from USR where USR_KEY in (176503, 11135, 167508, 228999, 213979, 195001, 219575, 47212, 142231, 197149, 134469, 180623, 166271, 180427, 58904, 405802, 15792, 216484, 215942, 233353));


select * from upa where usr_key=412271 order by 1 desc;

SELECT APPROVAL_MASTER_ID||'#'||nvl(CONDITION_ID,'-1')||'#'||APPROVAL_LEVEL as ApproverDetails
                FROM apsoim.OIM_APPROVAL_DETAILS AD
                WHERE APPROVAL_MASTER_ID||'#'||nvl(CONDITION_ID,'-1')||'#'||APPROVAL_LEVEL IN
                (SELECT APPROVAL_MASTER_ID||'#'||nvl(CONDITION_ID,'-1')||'#'||APPROVAL_LEVEL
                  FROM apsoim.OIM_APPROVAL_DETAILS
                  WHERE USER_ID=577534
                  AND(EXPIRATION_DATE IS NULL   OR EXPIRATION_DATE > SYSDATE)
                )
                GROUP BY APPROVAL_MASTER_ID||'#'||nvl(CONDITION_ID,'-1')||'#'||APPROVAL_LEVEL having count(*)=1;
                
                
                
---------------Beehive GRoup
select * from ud_bgsu_usr where ud_bgsu_usr_userid like 'MOON.MOON.PATHAK%';
                
--update ud_bgsu_usr set ud_bgsu_usr_orclguid='0AACFF794ABD6C11E050E60A8D7F7045' where ud_b

gsu_usr_userid like 'MOON.MOON.PATHAK@ORACLE.COM';

select * from ud_bgrp_usr where ud_bgrp_usr_group_dn='cn=apac_saas_escalation_au_grp,cn=beehive_groups,cn=groups,dc=oracle,dc=com';

select * from ud_bgsu_usr where ud_bgsu_usr_group_dn='cn=apac_saas_escalation_au_grp,cn=beehive_groups,cn=groups,dc=oracle,dc=com';

select * from ud_bgps_u where ud_bgps_u_groupname='cn=apac_saas_escalation_au_grp,cn=beehive_groups,cn=groups,dc=oracle,dc=com';

select * from ud_bgap_usr where ud_bgap_usr_group='cn=apac_saas_escalation_au_grp,cn=beehive_groups,cn=groups,dc=oracle,dc=com';--
                
select * from act;                
                
                
                select * from local_intl_trans_data where upper(n_orcl_email_address)=upper('SUKUMAR.RAIGURU@ORACLE.COM');
                
                select * FROM HR_EMP_EXEMP_PEOPLE_L3_L4_V@GSIAP;
                
                select * from local_intl_trans_data where upper(n_orcl_email_address)=upper('DANIELLE.ONEILL@ORACLE.COM');
                
                SELECT  ppl.user_person_type as e_old_user_person_type     FROM HR_EMP_EXEMP_PEOPLE_L3_L4_V@GSIAP  ppl      ,hr_aps_terms_l3_l4_data_v@GSIAP    term      WHERE ppl.person_id = term.person_id      AND term.actual_termination_date between ppl.effective_start_date and ppl.effective_end_date  AND UPPER(ppl.user_person_type) NOT IN ('PLACEHOLDER','EX-APPLICANT','APPLICANT')      AND ppl.person_id = ?;
                
                
                select * from act;
                
                desc usr;
                
                
                
select USR_UDF_EMPLOYEE_SUBTYPE, usr_status,usr_login,usr_emp_no from usr where usr_emp_no in ('172519','172523','172520','172527','172518','172522','172530','172521','172528','172529','172531'); 

desc usr;

select * from APSOIM.PDIT_GENERIC_MAIL_NOTIFICATION;


the NAMES of the TMP tables USED DURING the LOAD:
select * from OIM_BLKLD_TMP_ORNAP1;
OIM_BLKLD_TMP_ORNAP2


the NAMES of the EXCEPTION tables USED DURING the LOAD:
select * from OIM_BLKLD_EX_ORNAP1;
OIM_BLKLD_EX_ORNAP2



update ORC ORC
set ORC_TOS_INSTANCE_KEY = (select UD_ORNA_U_NAME UD from UD_ORNA_U UD where UD.ORC_KEY=ORC.ORC_KEY)
WHERE ORC_KEY IN (SELECT ORC_KEY FROM UD_ORNA_U where UD_ORNA_U_ROUTE_ID='pdit_admin' ) ;

select * from ACT;

-----JOB HISTORY
select * from PROD_OIM.job_history where job_start_time > sysdate - 1/24 and status = 6 order by job_start_time desc;

desc usr;

select * from UD_OSCQ_p where UD_OSCQ_p_supportnotes ='SR#497386-1089345348';

--drop database link APSOIM_DBLINK.US.ORACLE.COM;
--create database link APSOIM_DBLINK.US.ORACLE.COM connect to PROD_OIM identified by "BdSPV7Kb"   
--using '(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0101.us.oracle.com)(PORT = 1521))(ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0102.us.oracle.com)(PORT = 1521))(ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0103.us.oracle.com)(PORT = 1521))(ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0104.us.oracle.com)(PORT = 1521))(FAIL_OVER=ON)(CONNECT_DATA = (SERVER = DEDICATED) (SERVICE_NAME = ainoimpa.us.oracle.com)))'
--
--
--drop database link OIM_PROD.US.ORACLE.COM;
--create database link OIM_PROD.US.ORACLE.COM connect to PROD_OIM identified by "BdSPV7Kb"   
--using '(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0101.us.oracle.com)(PORT = 1521))(ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0102.us.oracle.com)(PORT = 1521))(ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0103.us.oracle.com)(PORT = 1521))(ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0104.us.oracle.com)(PORT = 1521))(FAIL_OVER=ON)(CONNECT_DATA = (SERVER = DEDICATED) (SERVICE_NAME = ainoimpa.us.oracle.com)))'
--
--
--

--drop database link PROD_OIM.US.ORACLE.COM;
--create database link PROD_OIM.US.ORACLE.COM connect to PROD_OIM identified by "BdSPV7Kb"   
--using '(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0101.us.oracle.com)(PORT = 1521))(ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0102.us.oracle.com)(PORT = 1521))(ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0103.us.oracle.com)(PORT = 1521))(ADDRESS = (PROTOCOL = TCP)(HOST = aiddx0104.us.oracle.com)(PORT = 1521))(FAIL_OVER=ON)(CONNECT_DATA = (SERVER = DEDICATED) (SERVICE_NAME = ainoimpa.us.oracle.com)))'

select * from ud_gcem_u where ud_gcem_u_name ='ALLY.ABBOTT@ORACLE.COM';
select * from ud_gsem_u where ud_gcem_u_name ='ALLY.ABBOTT@ORACLE.COM';

select * from ud_EMCP_u where  request_key=7987292;
SELECT * FROM UD_CDZS_USR;
desc UD_CDZS_USR;

SELECT * FROM UD_CDZS_SVR;
SELECT * FROM UD_CDZS_USR;
desc USR;
desc OIM_SERVER_STAGING;
select * from OIM_SERVER_STAGING;
select * from OIM_SERVER_STAGING_processed;

----------------CROL
select * from ud_crol_u;
select * from ud_crol_p;
desc ud_crol_p;
UD_CROL_P_GRANTEXT_NOTICNT
UD_CROL_P_VALID_TO_DATE
--


SELECT USR_UDF_PERSON_ID,  USR_KEY,USR_EMP_TYPE,USR_UDF_EMPLOYEE_SUBTYPE,USR_LOGIN,USR_EMAIL,USR_STATUS,USR_UDF_RESPONSIBILITY_CODE,
USR_EMP_NO,USR_UDF_BUSINESS_GRP,USR_COUNTRY,USR_UDF_GLOBALUID,USR_MANAGER_KEY,USR_END_DATE,
USR_LDAP_GUID,USR_UDF_SUPPORTNOTES  ,USR_TIMEZONE,USR_UPDATE,USR_CREATE,USR_UDF_DISABLED_DATE,
USR_UDF_PREV_EMP_EMAIL,USR_UDF_CHANGE_REASON,USR_UDF_SUPPLIER_ID
FROM USR WHERE UPPER(USR_EMP_TYPE) IN ('CONTRACTOR') 
 and USR_STATUS='Active' and USR_UDF_SUPPLIER_ID is null
 and usr_update >Sysdate-3
  order by USR_LOGIN
 ;
 
 
 select u.usr_login,u.usr_status, mgr.usr_login  ,mgr.usr_status from usr u, usr mgr
where u.usr_status='Active' and u.usr_login like '%APPR@%'
and U.USR_MANAGER_KEY is null
and replace(u.usr_login,'_APPR@','@') = mgr.usr_login;

DESC USR;
SELECT DISTINCT USR_UDF_JOB FROM USR WHERE USR_UDF_JOB LIKE ('999%');
SELECT USR_FIRST_NAME AS FIRST_NAME,USR_LAST_NAME AS LAST_NAME,USR_DISPLAY_NAME AS DISPLAY_NAME,USR_EMP_TYPE AS EMPLOYEE_TYPE,
USR_UDF_EMPLOYEE_SUBTYPE AS EMPLOYEE_SUBTYPE,USR_LOGIN AS USERNAME ,USR_STATUS AS STATUS,USR_UDF_JOB AS JOB_CODE,
USR_EMP_NO as EMPLOYEE_NUMBER,USR_CREATE as CREATION_DATE,USR_UDF_SUPPLIER_ID as NAA
FROM USR WHERE
--USR_UDF_JOB in ('8888','9990','9999') 
upper(USR_EMP_TYPE) ='CONTRACTOR'
and USR_STATUS='Active';


select usr_login,app_instance.app_instance_display_name ACCOUNT_NAME, ost_status OIM_STATUS,oiu.oiu_create REQUEST_DATE
from oiu ,usr, app_instance ,ost, orc
where 
OIU.USR_KEY=USR.USR_KEY 
and orc.orc_key=oiu.orc_key
and orc.USR_KEY=USR.USR_KEY 
and app_instance.app_instance_key=oiu.app_instance_key
AND OIU.OST_KEY = OST.OST_KEY
AND OST_STATUS NOT IN ('Provisioning')
AND (APP_INSTANCE.APP_INSTANCE_DISPLAY_NAME) IN ('Corporate SSO Account') 
and usr_login IN (SELECT USR_LOGIN FROM USR WHERE
--USR_UDF_JOB in ('8888','9990','9999') 
UPPER(USR_EMP_TYPE) ='CONTRACTOR'
and USR_STATUS='Active');



select usr_login,app_instance.app_instance_display_name ACCOUNT_NAME, ost_status OIM_STATUS,oiu.oiu_create REQUEST_DATE,orc_tos_instance_key as USER_ID
from oiu ,usr, app_instance ,ost, orc
where 
OIU.USR_KEY=USR.USR_KEY 
and orc.orc_key=oiu.orc_key
and orc.USR_KEY=USR.USR_KEY 
and app_instance.app_instance_key=oiu.app_instance_key
AND OIU.OST_KEY = OST.OST_KEY
AND OST_STATUS NOT IN ('Provisioning')
AND (APP_INSTANCE.APP_INSTANCE_DISPLAY_NAME) IN ('OMCS Server Account') 
and usr_login IN ('AARON.BIEBER@ORACLE.COM', 'ANDY.WEST@ORACLE.COM', 'ASHISH.SWARN.SINGH@ORACLE.COM', 'DASTAGEER.DUDEKULA@ORACLE.COM', 'JOHN.COMENAT@ORACLE.COM', 'PATRICK.HUSH@ORACLE.COM', 'SANTOSH.SWARNKAR@ORACLE.COM', 'SHAIK.ABDULROUF@ORACLE.COM', 'UMESH.NIKUMBH@ORACLE.COM', 'VENKATESH.AITHA@ORACLE.COM') 
--UPPER(USR_EMP_TYPE) ='CONTRACTOR'
AND USR_STATUS='Active';



select  ai.app_instance_display_name,
  c.entity_display_name entitlement_name,
  USR.USR_LOGIN USER_NAME, 
  SUBSTR(C.ENTITY_NAME, (INSTR(C.ENTITY_NAME,  '~', 1, 1)+1))  ENTITLEMENT_CODE, 
  ent_status,  ENT_ASSIGN_CREATE, orc_tos_instance_key USER_ID--, orc.request_key, orc.orc_key
FROM usr,
  ENT_ASSIGN,
  oiu,
  ost,
  app_instance ai, 
  orc,
  catalog c
WHERE ent_assign.usr_key    = usr.usr_key
AND ent_assign.ent_list_key = c.entity_key
AND ent_assign.oiu_key      = oiu.oiu_key
AND oiu.ost_key             = ost.ost_key
and orc.orc_key=oiu.orc_key
and orc.USR_KEY=USR.USR_KEY
and ai.app_instance_key = nvl(c.udf_app_parent_application,(nvl(c.parent_entity_key, c.entity_key)))
and c.entity_type = 'Entitlement'
--and ost.ost_status in ('Provisioned','Enabled')
--and ent_status = 'Provisioned'
--AND upper(ai.app_instance_display_name) like nvl(upper('DRM (Hierarchy Management Tool)'),'%') ;
AND USR.USR_LOGIN in (SELECT USR_LOGIN FROM USR WHERE
--USR_UDF_JOB in ('8888','9990','9999') 
UPPER(USR_EMP_TYPE) ='CONTRACTOR'
AND USR_STATUS='Active')
and upper(c.entity_display_name) = 'VPN';

select * from UD_KERB_USR where request_key =	5156835;;
desc ud_aduc_usr;

desc UD_KERB_USR;

select * from UD_KERB_USR where UD_KERB_USR_kerbprincipalname='shrath@DEV.ORACLE.COM'; 

select * from UD_KERB_USR where UD_KERB_USR_name='pvudutha';

select * from UD_KERB_USR where UD_KERB_USR_pwd_locked=1;

SELECT * FROM UD_ADOD_USR where orc_key =4201125;
SELECT * FROM  UD_ADOD_P where UD_ADOD_P_COMMAND is not null;

SELECT * FROM  UD_ADOD_P where request_key in (64522);
SELECT * FROM  UD_ADOD_P WHERE orc_key IN (4201269,4201255);

select * from  UD_ADOD_USR where REQUEST_KEY in (445117);
SELECT * FROM UD_ADOD_USR order by orc_key desc;

select * from  UD_ADOD_USR where UD_ADOD_USR_name like '%adod%';

update UD_ADOD_USR set UD_ADOD_USR_name ='pvutesec' where  UD_ADOD_USR_name like '%fnl%';

select * from  UD_ADOD_USR where UD_ADOD_USR_LOGIN in ('NAGFN.NAGLN@GMAIL.COM');
UPDATE UD_ADOD_USR SET UD_ADOD_USR_COMPANY_ID='nil', UD_ADOD_USR_COMAPANY_TYPE='i' WHERE ORC_KEY =8547;

--UPDATE UD_ADOD_USR set UD_ADOD_USR_COMPANY_TYPE = UD_ADOD_USR_COMAPANY_TYPE;

update UD_ADOD_P set UD_ADOD_P_SUPPORTNOTES='c KEND c_schowl SODCUSTADMIN' where orc_key =8477;

DESC UD_ADOD_USR;
DESC UD_ADOD_P;

-------------ADUC

select * from UD_ADUC_USR where request_key in (13645888);
select * from UD_ADUC_P where request_key in (445132);

select * from apsoim.TP_COMPANY_MASTER;
desc TP_COMPANY_MASTER;
insert into apsoim.TP_COMPANY_MASTER values (17,'ADUC Test Company','ABCD','1234','N',sysdate,null,'ADUC TEST',sysdate,250994,null,250994);

select * from apsoim.TP_COMPANY_SDM;
insert into apsoim.TP_COMPANY_SDM values (41,17,504690,sysdate,null,'ADUC TEST',sysdate,504690,null,504690);

SELECT *
FROM apsoim.APS_OCP_THIRD_PARTY_ACCOUNTS
WHERE user_name = 'OIMNEWAD.OIMNEWAD@TEST.COM';

desc ud_ssoa_usr;

select * from adp where adp_name like '%ADOD%' and adp_note like '%ADODIDMITCHANGEUSERGUID%';

select * from ent_h;



update UD_SSOA_USR set UD_SSOA_USR_UPDATE_DATE= sysdate-178,UD_SSOA_USR_NOTIFICATION_CNT =2,
UD_SSOA_USR_PWD_LOCKED=0,UD_SSOA_USR_AGED_PASSWD= 'Lkasiashkh'
WHERE UPPER(UD_SSOA_USR_EMAIL) IN  ('TULASIRAM.YELESETTY@ORACLE.COM');

SELECT * FROM UD_ADOD_P;
desc UD_ADOD_P;


select * from temp;

select distinct email,TEMPLATE_NAME,IS_NON_OIM_USER ,expiration_date from apsoim.OIM_ENTITY_NOTIFICATIONS ;
select * from apsoim.OIM_ENTITY_NOTIFICATIONS ;

create table apsoim.OIM_ENTITY_NOTIFICATIONS (UD_TABLE varchar2(100), ENTITY_NAME varchar2(4000), EMAIL varchar2(1000), 
TEMPLATE_NAME VARCHAR2(100), CREATION_DATE DATE, CREATED_BY NUMBER, UPDATED_DATE DATE,UPDATED_BY NUMBER, SUPPORT_NOTES VARCHAR2(4000),
EXPIRATION_DATE DATE, IS_NON_OIM_USER varchar2(10));
ALTER TABLE apsoim.OIM_ENTITY_NOTIFICATIONS add IS_NON_OIM_USER varchar(10);
ALTER TABLE apsoim.OIM_ENTITY_NOTIFICATIONS drop COLUMN  IS_NON_ORACLE_USER ;

update apsoim.OIM_ENTITY_NOTIFICATIONS set IS_NON_OIM_USER=IS_NON_ORACLE_USER;
desc apsoim.OIM_ENTITY_NOTIFICATIONS;
update apsoim.OIM_ENTITY_NOTIFICATIONS set expiration_date=null;

--insert into apsoim.OIM_ENTITY_NOTIFICATIONS values('UD_AQLN_USR','Administrator','PRASHANTH.VUDUTHALA@ORACLE.COM','',sysdate,250994,sysdate,250994,'SR#OIMSTAGE',sysdate,'N');
--insert into apsoim.OIM_ENTITY_NOTIFICATIONS values('UD_AQLN_USR','Advanced Users','PRASHANT   H.VUDUTHALA@ORACLE.COM','',sysdate,250994,sysdate,250994,'SR#OIMSTAGE',sysdate,'N');
--insert into apsoim.OIM_ENTITY_NOTIFICATIONS values('UD_AQLN_USR','Basic Users','shanth.584@gmail.com','',sysdate,250994,sysdate,250994,'SR#OIMSTAGE',sysdate,'Y');


insert into apsoim.OIM_ENTITY_NOTIFICATIONS values('UD_AQLN_USR','Textura Legacy Quickbooks-Latista:  Read-Only','fin_ma_legacy_system_req_us_grp@oracle.com','IDMIT AQLN ENTITLEMENT',sysdate,250994,sysdate,250994,'SR#AQLATEST',sysdate,'Y');
insert into apsoim.OIM_ENTITY_NOTIFICATIONS values('UD_AQLN_USR','Textura Legacy Quickbooks-Latista:  Update','fin_ma_legacy_system_req_us_grp@oracle.com','IDMIT AQLN ENTITLEMENT',sysdate,250994,sysdate,250994,'SR#AQLATEST',sysdate,'Y');

--insert into apsoim.OIM_ENTITY_NOTIFICATIONS values('UD_AQLN_USR','AddThis Legacy MS Dynamics: Read-Only','fin_ma_records_systems_us_grp@oracle.com','IDMIT AQLN ENTITLEMENT',sysdate,250994,sysdate,250994,'SR#170720-000767',sysdate,'Y');
insert into apsoim.OIM_ENTITY_NOTIFICATIONS values('UD_AQLN_USR','TOA Legacy Quickbooks: Read-only','prashanth.vuduthala@oracle.com','IDMIT AQLN ENTITLEMENT',sysdate,250994,sysdate,250994,'SR#170720-000767',null,'N');

update apsoim.OIM_ENTITY_NOTIFICATIONS set expiration_date=sysdate,support_notes='SR#InitialTest' where  email='prashanth.vuduthala@oracle.com';
select * from apsoim.OIM_ENTITY_NOTIFICATIONS;
select * from UD_AQLN_CH;

select * from UD_AQLN_USR where UD_AQLN_USR_LOGIN='AJEESHA.SHAIK@ORACLE.COM';
select * from UD_AQLN_USR where orc_key=5036850;
update UD_AQLN_USR set UD_AQLN_USR_LOGIN='ZAPSTEST.KA0008@ORACLE.COM',UD_AQLN_USR_OLD_LOGIN='ZAPSTEST.KA0008@ORACLE.COM' where orc_key=4765513;

select * from UD_AQLN_CH where orc_key=4765513;
select * from apsoim.OIM_ENTITY_NOTIFICATIONS where entity_name in ('Textura Legacy Quickbooks-Latista:  Read-Only');

update UD_AQLN_USR set UD_AQLN_USR_LOGIN='AJEESHA.X.SHAIK@ORACLE.COM' where UD_AQLN_USR_LOGIN='AJEESHA.SHAIK@ORACLE.COM';

 select * from osi where orc_key = 4765513 and sch_key = 18647521;
 
 select ent_display_name from ent_list where ent_list_key in 
 (select ent_list_key from ent_assign_hist where oiu_key = (select oiu_key from oiu where orc_key = 7961196));
desc UD_AQLN_USR;

select * from oiu where orc_key = 7961196;
update oiu set oiu_serviceaccount =0 where orc_key = 7961196;

select * from apsoim.visu_local_term_data where country_code='US' and termination_date>sysdate-2;

select usr_login,usr_status from usr where usr_email in (select email_address from apsoim.visu_local_term_data where country_code='US' and termination_date>sysdate-2)
and usr_status='Disabled'
;

----Beehive group

select * from apsoim.BEEHIVEGRP_BULKMEM_ADDREMOVE where group_name='apac_saas_escalation_au_grp' and batch_key=255328  ;

update APSOIM.BEEHIVEGRP_BULKMEM_ADDREMOVE set SCH_TASK_STATUS ='Entitlement no longer valid'
where group_name ='apac_saas_escalation_au_grp' and creation_date > sysdate -1/2 and request_key is null;


------OCIA

select * from ud_OCIA_usr;
select * from ud_OCIA_grp where orc_key ='9834942';


---EMNA

select * from ud_emna_u where orc_key=4669598 order by request_key desc;
select * from ud_emna_u where request_key=772647 order by request_key desc;
select * from ud_emna_u  order by orc_key desc;

select * from ud_emna_u where ud_emna_u_user_login ='ZAPSTEST.KA2734@ORACLE.COM' order by request_key desc;


---  	iProjects-PMW-BASE  PMWB

select * from ud_pmwb_u where ud_pmwb_u_username in ('SHRADHA.SINHA@ORACLE.COM', 'SURESH.X.M@ORACLE.COM', 'NEHA.B.BHARTI@ORACLE.COM');

select * from ud_pmwb_u where request_key in (17598289 );

select * from ud_pmwb_p;

select u.ud_pmwb_u_username,p.ud_pmwb_p_privilege from ud_pmwb_u u, ud_pmwb_p p where u.orc_key=p.orc_key;



----    iProjects Deals PRT

select * from UD_IPRA_U where request_key in (17598289 );


select usr.usr_login,oiu.orc_key,oiu.account_type,ost.ost_status ,usr.usr_status 
from oiu oiu, ost ost,usr usr,app_instance ai
where oiu.app_instance_key=ai.app_instance_key
and oiu.ost_key=ost.ost_key
and ost.ost_status in ('Provisioned','Enabled','Disabled','provisioned')
and oiu.account_type in ('Primary','primary','Other','other')
and oiu.usr_key=usr.usr_key
and ai.app_instance_display_name='iProjects PMW'
order by usr.usr_login
;


----

select usr.usr_login,oiu.orc_key,oiu.account_type,ost.ost_status 
from prod_oim.oiu oiu, prod_oim.ost ost,usr usr,app_instance ai
where oiu.app_instance_key=ai.app_instance_key
and oiu.ost_key=ost.ost_key
and ost.ost_status in ('Provisioned','Enabled','provisioned')
and oiu.account_type in ('Primary','primary','Other','other')
and oiu.usr_key=usr.usr_key
and ai.app_instance_display_name='Oracle Service Cloud (OSvC)'
and usr.usr_status ='Active'
--group by usr.usr_login having count(usr.usr_login) > 1 ;

update  prod_oim.ud_orcc_u set UD_ORCC_U_SUPPORTNOTES=UD_ORCC_U_SUPPORTNOTES||'SR#170706-000134' where orc_key in (11182960, 11183048, 11182998,11183029, 11182958, 11183037, 11182962, 11183023, 11183043, 11183049, 11182959, 11182997, 11183035, 11183036);
desc ud_orcc_u ;

select * from prod_oim.ud_orcc_u where orc_key in (7024364,
7025006,
7024488,
11182913);

update prod_oim.ud_orcc_u set ud_orcc_u_name='' where ud_orcc_u_email='';

---

select * from Ent_List where Ent_List_Key=531388;

select * from oim_support.user_ent where ent_display_name like '%HRIT JP Commuting Allowance - Employee%' ;

select * from oim_support.user_ent where ent_code = '15607~JP_CA_EMPLOYEE' ;
select * from user_ent where ent_display_name like '%PEO Org Confluence User%' and ent_status != 'Provisioned';

select * from oim_support.user_ent where ent_description like 'Fusion CRMAS';
and usr_login in ('ANSHU.S.SHRIVASTAVA@ORACLE.COM', 'AMIT.S.GUPTA@ORACLE.COM', 'KASHINATH.MELINAMANI@ORACLE.COM', 'SUPRIYA.THAKUR@ORACLE.COM', 'HEATHER.LUCK@ORACLE.COM', 'SOWMYA.KUMARASWAMY@ORACLE.COM', 'CHARAN.HC@ORACLE.COM', 'TROY.FRAZIER@ORACLE.COM', 'GEORGETA.CEORNEI@ORACLE.COM', 'ERICA.YAN@ORACLE.COM', 'KEVIN.MANN@ORACLE.COM', 'NAGAVALLI.PATABALLA@ORACLE.COM', 'ROSHAN.SHERIGAR@ORACLE.COM', 'ROMULO.B.ETCHEBEHERE@ORACLE.COM', 'ISABELLE.CHELFAOUI@ORACLE.COM', 'RYAN.PRENDERGAST@ORACLE.COM', 'LOGAN.DOBBS@ORACLE.COM', 'HUMA.QADRI@ORACLE.COM', 'HARSHINI.PRAVINKUMAR@ORACLE.COM', 'DYLAN.CHENG@ORACLE.COM', 'PETER.ZAREMBA@ORACLE.COM', 'RUI.MIRANDA@ORACLE.COM', 'RANDHEER.SINGH@ORACLE.COM', 'VIJAY.K@ORACLE.COM', 'ALINA.MANEA@ORACLE.COM', 'OLIVIER.BOSSAERT@ORACLE.COM', 'SHARON.L.LIU@ORACLE.COM', 'NARENDRA.GADIPALLI@ORACLE.COM', 'ROB.M.ADAMS@ORACLE.COM', 'TJ.BOYD@ORACLE.COM', 'OLGA.RUMELIOTI@ORACLE.COM', 'PAUL.HIGHAM@ORACLE.COM', 'NEERAJ.OBERAI@ORACLE.COM', 'DEBANUJ.CHAKRABARTY@ORACLE.COM', 'DENISE.LAMONICA@ORACLE.COM', 'SVENJA.WILKEN@ORACLE.COM', 'BARBARA.BOYER@ORACLE.COM', 'SHASHANK.PANDEY@ORACLE.COM', 'SUSAN.BREWSTER@ORACLE.COM', 'RALUCA.IORGA@ORACLE.COM', 'EDUARDO.PIZARRO@ORACLE.COM', 'CATH.DUKES@ORACLE.COM', 'IULIAN.PIPOIU@ORACLE.COM', 'ARAVINDAN.V@ORACLE.COM', 'SAQEEB.KHAN@ORACLE.COM', 'JATIN.KAUSHIK@ORACLE.COM', 'FELIPE.MALDONADO@ORACLE.COM', 'TOM.BRYDGES@ORACLE.COM', 'PETER.VASILENKO@ORACLE.COM', 'MIKE.COLLIN@ORACLE.COM', 'ANNE.ELOI.BLEZES@ORACLE.COM', 'GEORGIANA.VOICU@ORACLE.COM', 'JULIAN.MACKEY@ORACLE.COM', 'KATHIRESAN.SIVAJI@ORACLE.COM', 'INDHU.SETHUMADHAVAN@ORACLE.COM', 'HARINI.SRINIVAS@ORACLE.COM', 'AMIT.RA.GUPTA@ORACLE.COM', 'TERRY.WICKS@ORACLE.COM', 'CHAD.MEADOWS@ORACLE.COM', 'JOHN.HADDOW@ORACLE.COM', 'SARANYA.RANGDALA@ORACLE.COM', 'VIJAYALAKSHMI.NAGANARASIMHA@ORACLE.COM', 'GEOVANA.BONEF@ORACLE.COM', 'SANTOSH.MAVANOOR@ORACLE.COM', 'SANDRA.SIU@ORACLE.COM', 'JESSE.MOTA@ORACLE.COM', 'ANNA.DORIGATTI@ORACLE.COM', 'HIRAM.VENIAR@ORACLE.COM', 'KIRSTEN.ERNST@ORACLE.COM', 'SHUBHAM.PATEL@ORACLE.COM', 'SHIVA.M.KUMAR@ORACLE.COM', 'RAMI.ELNASSER@ORACLE.COM', 'STEVE.S.MARTIN@ORACLE.COM', 'DARRIEN.STARLING@ORACLE.COM', 'CHRISTINE.LARSEN@ORACLE.COM', 'KELVIN.LAI@ORACLE.COM', 'SUSANNA.WILLERT@ORACLE.COM', 'ANA.MARIA.HORVAT@ORACLE.COM', 'PAUL.LONG@ORACLE.COM', 'SUMANA.KAMATH@ORACLE.COM', 'LAURA.PANAIT@ORACLE.COM', 'V.SAMPATHKUMAR@ORACLE.COM', 'AMBER.LASHLEY@ORACLE.COM', 'FUMIKO.RYUHO@ORACLE.COM', 'SHARON.HOLFORD@ORACLE.COM', 'COREY.KANON@ORACLE.COM', 'DANIELLA.PADRON@ORACLE.COM', 'LIANA.LARUE@ORACLE.COM', 'ANAMARIA.STEFANESCU.MEREI@ORACLE.COM', 'KAMAKSHI.NATARAJAN@ORACLE.COM', 'ANDRAS.GYENE@ORACLE.COM', 'KOMAL.KUMAR.VENKATESH@ORACLE.COM', 'SAISANDEEP.YELCHURI@ORACLE.COM', 'SANDEEP.SA.GUPTA@ORACLE.COM', 'SRINIVAS.PENUMUCHU@ORACLE.COM', 'CONOR.GLEESON@ORACLE.COM', 'STEPHANI.RUNYAN@ORACLE.COM', 'UMAKANT.KODMUR@ORACLE.COM', 'KRISHAN.K.KUMAR@ORACLE.COM', 'ROXANA.VANHALA@ORACLE.COM', 'LATEEF.ABDUL@ORACLE.COM', 'SACHIN.KAMAIAH@ORACLE.COM', 'ALEXANDRU.DINESCU@ORACLE.COM', 'WENDY.AO@ORACLE.COM', 'LENNIX.WHITEHEAD@ORACLE.COM', 'BERNARDO.MEJIA@ORACLE.COM', 'JYOTHI.GANGADHAR@ORACLE.COM', 'LIMMY.LEE@ORACLE.COM', 'SHAILAJA.BASAVA@ORACLE.COM', 'NICOL.TILLBROOK@ORACLE.COM', 'JULIE.HEATH@ORACLE.COM', 'JACOB.AGUILAR@ORACLE.COM', 'JORGE.CRUZ@ORACLE.COM', 'SIMO.MACUT@ORACLE.COM', 'CRISTINA.TEODOR@ORACLE.COM', 'PRATHAMESH.ASKAR@ORACLE.COM', 'PARTHA.X.MAJUMDAR@ORACLE.COM', 'UJJAL.ROY@ORACLE.COM', 'SHANN.RYAN@ORACLE.COM', 'MARYANN.BIANCO-PFEIFFER@ORACLE.COM', 'ANDREW.P.JOHNSON@ORACLE.COM', 'IRYNA.RICKER@ORACLE.COM', 'RANI.URBAS@ORACLE.COM', 'CHINNA.SANNABALAPPA@ORACLE.COM', 'ANTONY.PRAVEEN@ORACLE.COM', 'CLARE.ROACH@ORACLE.COM')
and ent_status = 'Provisioned';
;
select * from oim_support.user_ent where app_instance_name like 'ICSAUSGov';


select * from prod_oim.ud_icsa_ugp where orc_key in (16661514, 16618936, 17057724, 16724841, 16724153, 16452575, 16452638, 16450874, 16614499, 16738466, 16740097, 16614444, 17217078, 17098591, 17061371, 17018779, 16452525, 16471228, 16641910, 16700520, 16738443, 16799052);
select * from ud_icsa_usr;

select a.UD_ICSA_USR_Key,c.UD_ICSA_UGP_GROUP,c.UD_ICSA_UGP_VALID_TO_DATE,c.UD_ICSA_UGP_GRANTEXT_NOTICNT,'SR#180823-000120' as UD_ICSA_UGP_SUPPORTNOTES 
from ud_icsa_usr a, ud_icsa_ugp c, usr u 
where a.orc_key=c.orc_key and  lower(a.ud_icsa_usr_username)=lower(u.USR_UDF_GLOBALUID) and
a.orc_key in(select orc_key from oim_support.user_accounts where app_instance_display_name like 'OCI Server Account - US Gov' and ost_status='Provisioned');

select a.UD_ICSA_USR_USERNAME,a.UD_ICSA_USR_FAMILY_NAME,a.UD_ICSA_USR_ORGANIZATION,a.UD_ICSA_USR_CREATION_MECH ,a.UD_ICSA_USR_MIDDLE_NAME,a.UD_ICSA_USR_UNIQUE_ID,
a.UD_ICSA_USR_GIVEN_NAME,a.UD_ICSA_USR_EMP_NO,a.UD_ICSA_USR_EMAIL,a.UD_ICSA_USR_USER_TYPE,a.UD_ICSA_USR_UID_NUMBER,a.UD_ICSA_USR_GID_NUMBER,
a.UD_ICSA_USR_GECOS,a.UD_ICSA_USR_LOGIN_SHELL,a.UD_ICSA_USR_HOME_DIRECTORY,'SR#180823-000120' as UD_ICSA_USR_SUPPORTNOTES
from ud_icsa_usr a,  usr u 
where  lower(a.ud_icsa_usr_username)=lower(u.USR_UDF_GLOBALUID) and
a.orc_key in(select orc_key from oim_support.user_accounts where app_instance_display_name like 'OCI Server Account - US Gov' and ost_status='Provisioned');

select *  from oim_support.user_accounts where app_instance_display_name like 'OCI Stack%' 
and ost_status ='Provisioned'
and oiu_prov_mechanism = 'Request'
and usr_udf_management_chain like '%DON.JOHNSON%'
--and usr_login in ('AARIF.MOHAMMED@ORACLE.COM')
;
select * from ent_assign where ent_list_key=765915;

select * from oim_support.user_ent where  ent_display_name like 'OCI Stack-OCI Exception Approvers'
and ent_status='Provisioned'
and usr_login not  in ('ANDY.PIERCE@ORACLE.COM', 'BRUCE.NOWJACK@ORACLE.COM', 'PURVI.SARAIYA@ORACLE.COM', 'RHEA.FRONDOZO@ORACLE.COM');
;

select usr_login from  oim_support.USER_ACCOUNTS where APP_INSTANCE_DISPLAY_NAME='OCI Stack' and ost_status='Provisioned'
minus
select usr_login from  oim_support.USER_ENt where ent_display_name='IDMIT Default OCI Stack' and ent_status='Provisioned';

desc ud_icsa_ugp;

select * from oim_support.user_ent where usr_login in ('ABHILASH.KALA@ORACLE.COM', 'ABHINAV.X.KUMAR@ORACLE.COM', 'ABRAHAM.FAERSTEIN@ORACLE.COM', 'ADIL.X.AKHUNJI@ORACLE.COM', 'ADRIANA.CHIROMATZO@ORACLE.COM', 'AI.YAMAOKA@ORACLE.COM', 'AJIT.VASISTA@ORACLE.COM', 'AKSHAYA.MURTHY@ORACLE.COM', 'ALDRIN.VIEGAS@ORACLE.COM', 'ALEJANDRA.SCOWEN@ORACLE.COM', 'ALEJANDRO.MORA@ORACLE.COM', 'ALEXANDRA.DULGHERU@ORACLE.COM', 'ALEXANDRA.MOISE@ORACLE.COM', 'ALYONA.A.DOUBROVINA@ORACLE.COM', 'AMY.CRAWLEY@ORACLE.COM', 'ANA-MARIA.CATRINA@ORACLE.COM', 'ANAND.KOTHARI@ORACLE.COM', 'ANAND.UV@ORACLE.COM', 'ANCA.TOMA@ORACLE.COM', 'ANDERS.RENDTORFF@ORACLE.COM', 'ANDREEA.BANARU@ORACLE.COM', 'ANDREI.SEMEN@ORACLE.COM', 'ANDREW.ELLIOTT@ORACLE.COM', 'ANDREW.R.HANSEN@ORACLE.COM', 'ANDY.SCUTT@ORACLE.COM', 'ANIL.BILLAPATI@ORACLE.COM', 'ANNE.THERIAULT@ORACLE.COM', 'APOORVA.KUMARI@ORACLE.COM', 'ARJUN.T@ORACLE.COM', 'ARPITHA.SURYAPRAKASH@ORACLE.COM', 'ARUN.GOVINDARAJU@ORACLE.COM', 'ARYA.VAZHAMPATTA@ORACLE.COM', 'ATTILA.VASSY@ORACLE.COM', 'AUSTIN.STODDARD@ORACLE.COM', 'BASHA.SAYED@ORACLE.COM', 'BEN.DE.MORA@ORACLE.COM', 'BHARATH.SOMISETTY@ORACLE.COM', 'BIJAN.HAGHIGHI@ORACLE.COM', 'BILL.LO@ORACLE.COM', 'BOB.WILLEFORD@ORACLE.COM', 'BOGDAN.B.IONITA@ORACLE.COM', 'BRAD.COATES@ORACLE.COM', 'BRADLEY.STROSSMAN@ORACLE.COM', 'BRANO.MODROVSKY@ORACLE.COM', 'BRET.FRASER@ORACLE.COM', 'BRIAN.CRANE@ORACLE.COM', 'BRIAN.VELTMAN@ORACLE.COM', 'BRUNO.BORGES@ORACLE.COM', 'BRYAN.BURR@ORACLE.COM', 'CAMERON.CUTHBERT@ORACLE.COM', 'CARLOEMANUELE.CAVO@ORACLE.COM', 'CARROLL.BROWN@ORACLE.COM', 'CATHERINE.BUI@ORACLE.COM', 'CATHERINE.GUNN@ORACLE.COM', 'CHANDRAKALA.L@ORACLE.COM', 'CHOY-YOKE.CHAN@ORACLE.COM', 'CHUNLAI.PEI@ORACLE.COM', 'CLAIRE.FARRELL@ORACLE.COM', 'CONSTANTIN.CONDRITCHI@ORACLE.COM', 'CORA.PARKER@ORACLE.COM', 'CORNELIA.ALDEA@ORACLE.COM', 'CRISTIAN.TARAU@ORACLE.COM', 'CRISTINA.POSTOLACHE@ORACLE.COM', 'DANIEL.L.TEIXEIRA@ORACLE.COM', 'DANIEL.PAVELIUC@ORACLE.COM', 'DANIELA.BADESCU@ORACLE.COM', 'DANIELA.OANCEA@ORACLE.COM', 'DANNA.DAVIS@ORACLE.COM', 'DAPO.OSOBA@ORACLE.COM', 'DARRIN.WILLIAMS@ORACLE.COM', 'DAVE.VANDENBERG@ORACLE.COM', 'DAVID.MALICH@ORACLE.COM', 'DAVID.SYLVESTER@ORACLE.COM', 'DAVID.ZAHALAN@ORACLE.COM', 'DEEPAK.RAJANNA@ORACLE.COM', 'DELLA.D.DSOUZA@ORACLE.COM', 'DIANA.ANDREEA.DINA@ORACLE.COM', 'DIANA.GRAY@ORACLE.COM', 'DINA.ORTIZ@ORACLE.COM', 'DINA.SCHUMAKER@ORACLE.COM', 'DIVYESH.SHAH@ORACLE.COM', 'DJAMEL.MANSOURI@ORACLE.COM', 'DOMINIC.QUAZI@ORACLE.COM', 'EIJIRO.TAKI@ORACLE.COM', 'EIRA.HELLING@ORACLE.COM', 'ELENA.ONESTI@ORACLE.COM', 'ELENI.PEZA@ORACLE.COM', 'ELIZABETH.LOPEZ@ORACLE.COM', 'ELLE.SANPEDRO@ORACLE.COM', 'ELLEN.GROOT@ORACLE.COM', 'ELOISA.VEGA@ORACLE.COM', 'EOIN.KING@ORACLE.COM', 'ERIC.STEPHENS@ORACLE.COM', 'ERICK.TOVAR@ORACLE.COM', 'EUGENE.IMURA@ORACLE.COM', 'FAYAS.MK@ORACLE.COM', 'FELIPE.B.BARBOSA@ORACLE.COM', 'FLORIAN.SCHLECHT@ORACLE.COM', 'FLORIN.STOICESCU@ORACLE.COM', 'FRANCIS.CHANG@ORACLE.COM', 'FRED.COOK@ORACLE.COM', 'FUMIKO.ISHII@ORACLE.COM', 'GAURAV.J.KUMAR@ORACLE.COM', 'GEETANJALI.RANE@ORACLE.COM', 'GEORGIANA.DRAGHICI@ORACLE.COM', 'GERALD.SOO@ORACLE.COM', 'GERMAN.ESCUELA.YEPEZ@ORACLE.COM', 'GOUTAM.PATRA@ORACLE.COM', 'GOVINDAN.AK.MENON@ORACLE.COM', 'GRACEMARIE.THAMES@ORACLE.COM', 'GREG.STACHNICK@ORACLE.COM', 'GURUPRASAD.DEVADIGA@ORACLE.COM', 'H.HYEYOUNG.KIM@ORACLE.COM', 'HEATHER.CAMPBELL@ORACLE.COM', 'HEBATALLAH.SAID@ORACLE.COM', 'HELEN.REILLY@ORACLE.COM', 'INGE.BORGMANN@ORACLE.COM', 'ION.CRISTIAN@ORACLE.COM', 'JACK.BERKOWITZ@ORACLE.COM', 'JAMES.OHALLORAN@ORACLE.COM', 'JAY.S.BELUR@ORACLE.COM', 'JAYASHREE.T@ORACLE.COM', 'JEAN-FRANCOIS.TESSIER@ORACLE.COM', 'JEFFREY.RICHARDSON@ORACLE.COM', 'JEFFRY.DAVIS@ORACLE.COM', 'JENNA.BANKS@ORACLE.COM', 'JENNIFER.CLIFFORD@ORACLE.COM', 'JENNIFER.ZOLLNER@ORACLE.COM', 'JESSE.PETERSON@ORACLE.COM', 'JESUS.GARZA@ORACLE.COM', 'JIAYI.YANG@ORACLE.COM', 'JILL.BURROUGHS@ORACLE.COM', 'JIM.BEARNS@ORACLE.COM', 'JINYU.WANG@ORACLE.COM', 'JOANNE.COLANGELO@ORACLE.COM', 'JOAO.VASCONCELLOS@ORACLE.COM', 'JOHN.IMERZEL@ORACLE.COM', 'JOHN.J.BROWN@ORACLE.COM', 'JOSEPH.PREGENT@ORACLE.COM', 'JOSHUA.GOULD@ORACLE.COM', 'JUAN.MANUEL.BELMONTE.GARCIA@ORACLE.COM', 'JULIE.LIERMAN@ORACLE.COM', 'KADIRI.MADHU.SUDHAN@ORACLE.COM', 'KAREN.BITRAN@ORACLE.COM', 'KAREN.MOLINA@ORACLE.COM', 'KAREN.MURRAY@ORACLE.COM', 'KARIN.BAI@ORACLE.COM', 'KATIE.HARPER@ORACLE.COM', 'KEERTHANA.RAVINDRAN@ORACLE.COM', 'KEVIN.FAULKNER@ORACLE.COM', 'KRISHNA.SONAR@ORACLE.COM', 'LACHLAN.WILLIAMS@ORACLE.COM', 'LARRY.CALLAGHAN@ORACLE.COM', 'LAURA.BOUFFORD@ORACLE.COM', 'LAURA.SANDU@ORACLE.COM', 'LAVANYA.SILIVERI@ORACLE.COM', 'LAWRENCE.CLARK@ORACLE.COM', 'LEN.WOLFENSTEIN@ORACLE.COM', 'LIGIA.MARTINI@ORACLE.COM', 'LILIANA.A.ACUNA@ORACLE.COM', 'LOIS.PRICE@ORACLE.COM', 'LORAINE.CAULFIELD@ORACLE.COM', 'LUCIA.X.MANGOVA@ORACLE.COM', 'MADOKA.OGAWA@ORACLE.COM', 'MANOJ.KUMAR.SINGH@ORACLE.COM', 'MARCO.LANDRY@ORACLE.COM', 'MARCOS.PINHEIRO@ORACLE.COM', 'MARIANA.GALVAN@ORACLE.COM', 'MARIANA.SANDU@ORACLE.COM', 'MARIE-CHRISTINE.DEBAUCHE@ORACLE.COM', 'MARK.CAVAGE@ORACLE.COM', 'MARK.KELLY@ORACLE.COM', 'MARTIN.TULIK@ORACLE.COM', 'MATHEW.LOWE@ORACLE.COM', 'MATTHEW.TAFOYA@ORACLE.COM', 'MAURICIO.GOEZ@ORACLE.COM', 'MAXIM.VAVELSCHI@ORACLE.COM', 'MAY.CHAU@ORACLE.COM', 'MEIHUA.LI@ORACLE.COM', 'MEIK.LANGWALD@ORACLE.COM', 'MESHENCHU.RENGMA@ORACLE.COM', 'MIHAI.L.IORDACHE@ORACLE.COM', 'MINAL.SATAM@ORACLE.COM', 'MOHAMMAD.JAMIL@ORACLE.COM', 'MOHAMMAD.SOHAIL@ORACLE.COM', 'MOUSHMI.BANERJEE@ORACLE.COM', 'MUNTAZ.ALI@ORACLE.COM', 'NATALIA.POIATA@ORACLE.COM', 'NAVEEN.MANDAKKI@ORACLE.COM', 'NEERAJ.GU.GUPTA@ORACLE.COM', 'NICOLAE.PUSOIU@ORACLE.COM', 'NICOLAS.SCHILLING@ORACLE.COM', 'NIKHIL.CHOPRA@ORACLE.COM', 'NITHIN.RAJ@ORACLE.COM', 'NIVEDITHA.DINAKAR@ORACLE.COM', 'NOELIA.VICO@ORACLE.COM', 'PARVEZ.K.KHAN@ORACLE.COM', 'PATRICK.VANDESCHEUR@ORACLE.COM', 'PAUL.MACURA@ORACLE.COM', 'PEDRO.BAEZ.BUSTILLO@ORACLE.COM', 'PETER.S.LI@ORACLE.COM', 'PETRU.ELENA@ORACLE.COM', 'PHIL.JONES@ORACLE.COM', 'PHILOMENA.OGBAH@ORACLE.COM', 'PRADEEP.SIRIKI@ORACLE.COM', 'PRAJANI.KC@ORACLE.COM', 'PRAKASHA.MS@ORACLE.COM', 'PRASAD.PARIGI@ORACLE.COM', 'PRIYALEKSHMI.S@ORACLE.COM', 'PRIYANKA.VAIBHAV@ORACLE.COM', 'PUSHPA.YADAV@ORACLE.COM', 'RAAGHUL.KRISHNAKUMAR@ORACLE.COM', 'RAHUL.K.PATEL@ORACLE.COM', 'RAJEEV.BHATIA@ORACLE.COM', 'RAJESH.CHOWDARY.BODDULURI@ORACLE.COM', 'RAJESH.RAMU@ORACLE.COM', 'RALUCA.MITROI@ORACLE.COM', 'RAMKANNAN.SETHURAM@ORACLE.COM', 'RAMMOHAN.KAKKUZHI@ORACLE.COM', 'RAMONA.GIUREA@ORACLE.COM', 'RAMYA.R.REDDY@ORACLE.COM', 'RANJEEV.CHOPRA@ORACLE.COM', 'RATNA.SRIVASTAVA@ORACLE.COM', 'RAVI.KELEGIRI@ORACLE.COM', 'RAY.ALLEN.HOU@ORACLE.COM', 'RAZVAN.MANOLE@ORACLE.COM', 'REINIER.MOUTON@ORACLE.COM', 'RESHMI.KURUP@ORACLE.COM', 'ROB.WALD@ORACLE.COM', 'ROBERT.E.ROPER@ORACLE.COM', 'ROBERTA.PERONI@ORACLE.COM', 'RODRIGO.OYARZUN.GUTIERREZ@ORACLE.COM', 'ROGER.GILMARTIN@ORACLE.COM', 'ROSHNI.PANIGRAHI@ORACLE.COM', 'ROXANA.ANICAI@ORACLE.COM', 'RUDOLF.PAUL@ORACLE.COM', 'SADHANA.VERMA@ORACLE.COM', 'SAI.ABHISHEK@ORACLE.COM', 'SALLY.PIAO@ORACLE.COM', 'SAMEER.KHETARPAL@ORACLE.COM', 'SAMUEL.STEVEN.TWINAM@ORACLE.COM', 'SANDEEP.X.SOOD@ORACLE.COM', 'SANTOSH.SHETGAR@ORACLE.COM', 'SARAWAK.NGUYEN@ORACLE.COM', 'SEANGEAN.WEE@ORACLE.COM', 'SHARAD.SINHA@ORACLE.COM', 'SHARION.WEI@ORACLE.COM', 'SHIVAPRASAD.BP@ORACLE.COM', 'SHRUTHI.UMESH@ORACLE.COM', 'SHUNJI.ZHENG@ORACLE.COM', 'SIEWFONG.LIEW@ORACLE.COM', 'SKIP.MOREHEAD@ORACLE.COM', 'SMITHA.X.RAO@ORACLE.COM', 'SMRITHI.RAJ.PULI@ORACLE.COM', 'SONNY.WILLIS@ORACLE.COM', 'SOPHIA.QIU@ORACLE.COM', 'SORA.MUROFUSHI@ORACLE.COM', 'SREENIVASASARMA.NEMANI@ORACLE.COM', 'SRINIVAS.GANNAVARAM@ORACLE.COM', 'SRIVIDYA.PAROLAMADAM.HARIHARA@ORACLE.COM', 'STEVEN.JANCZY@ORACLE.COM', 'SUBHADEEP.X.SENGUPTA@ORACLE.COM', 'SUBHRAJIT.PURKAYASTHA@ORACLE.COM', 'SUDHANSHU.KUMAR@ORACLE.COM', 'SUDHEER.VALLUMCHETLA@ORACLE.COM', 'SUJATA.SHAH@ORACLE.COM', 'SUMY.PAULRAJ@ORACLE.COM', 'SURESH.X.SHANKAR@ORACLE.COM', 'SUSHREE.SUPKAR@ORACLE.COM', 'TABREZ.AHMAD@ORACLE.COM', 'TANAY.BAWEJA@ORACLE.COM', 'TAPAS.SAMAL@ORACLE.COM', 'TARIQUE.HABIBULLAH@ORACLE.COM', 'TAUSEEF.HUSAIN@ORACLE.COM', 'THERESA.RUGGIERI@ORACLE.COM', 'TIBOR.BARANOVIC@ORACLE.COM', 'TIM.MCCANDLESS@ORACLE.COM', 'TNC.RAVI@ORACLE.COM', 'TODD.THOMPSON@ORACLE.COM', 'TRENT.DESPAIN@ORACLE.COM', 'UNNI.KONGOT@ORACLE.COM', 'VENKAT.RAJ@ORACLE.COM', 'VENU.INDANA@ORACLE.COM', 'VICKY.PASENKO@ORACLE.COM', 'VIDYADHAR.T.R@ORACLE.COM', 'VIKTOR.HOMOLKA@ORACLE.COM', 'VIKTORIA.HONIGH@ORACLE.COM', 'VIMMY.TULSIYAN@ORACLE.COM', 'VIVEK.C.SINGH@ORACLE.COM', 'WALTER.KERSZULIS@ORACLE.COM', 'WENDY.MCGARRY@ORACLE.COM', 'WES.BARNES@ORACLE.COM', 'WESTON.MAY@ORACLE.COM', 'WILLIAM.SCHUMANN@ORACLE.COM', 'WILLIAM.SIMPSON@ORACLE.COM', 'WILLIE.VU@ORACLE.COM', 'WINIFRED.SONG@ORACLE.COM', 'WOLFGANG.LEY@ORACLE.COM', 'YASUHIRO.KITAHAMA@ORACLE.COM', 'YEDIDA.AKKAYYA.RAJU@ORACLE.COM', 'YING.CICI.WANG@ORACLE.COM', 'YIYI.PAN@ORACLE.COM', 'YOSUKE.ARAI@ORACLE.COM', 'YURIKO.OKA@ORACLE.COM', 'YUXUAN.WANG@ORACLE.COM', 'ZACHARY.DAVIDSON@ORACLE.COM')
and ent_description like 'Global Enterprise Cloud - Production%';

select * from oim_support.user_accounts where app_instance_display_name  like '%Catchpoint%'
and ost_status in ('Provisioned','Enabled') 
;

select 
usr_login
, APP_INSTANCE_DISPLAY_NAME
, OST_STATUS
, obj.obj_name
from OIU oiu, USR u, OST, APP_INSTANCE APP, ORC, obj
WHERE 
oiu.ost_key = ost.ost_key
and OIU.USR_KEY = U.USR_KEY
AND OIU.ORC_KEY = ORC.ORC_KEY
and APP.APP_INSTANCE_KEY = OIU.APP_INSTANCE_KEY
AND OST_STATUS IN ('Provisioned','Enabled')
and obj.obj_key=app.object_key
and APP_INSTANCE_DISPLAY_NAME in ('CSA Bastion Account','CSA VPN Account')
and USR_UDF_MANAGEMENT_CHAIN like '%ROBERT.X.PIERCE@ORACLE.COM%'
;
;

Create table tmp_ngcc_acc (email varchar2 (1024), guid varchar2 (1024), no varchar2 (1024)) ;
alter table tmp_ngcc_acc add (status varchar2 (1024));
Create table tmp_ngcc_ent (email varchar2 (1024), entitlement varchar2 (1024)) ;
alter table tmp_ngcc_ent add (orc_key number (20));

update tmp_ngcc_ent set orc_key =16401540 where email in 'TOM.HOWELL@ORACLE.COM';

update tmp_ngcc_acc set LASTNAME = (select USR_LAST_NAME from prod_oim.USR where USR_LOGIN = tmp_ngcc_acc.email);
update tmp_ngcc_acc set firstname = (select usr_first_name from  prod_oim.usr where usr_login = tmp_ngcc_acc.email);
update tmp_ngcc_acc set status = (select usr_status from  prod_oim.usr where usr_login = tmp_ngcc_acc.email);
update tmp_ngcc_acc set guid = trim(trim,'','');

select lower(email),firstname,lastname,'OIM_CLIENT',no,'SR#180301-000717',lower(email),lower(trim(guid))
from tmp_ngcc_acc  where email not in ('MATT.BANTZ@ORACLE.COM', 'SUSAN.MITCHELL@ORACLE.COM', 'TOM.HOWELL@ORACLE.COM', 'REED.MCCONNELL@ORACLE.COM', 'KRISTIN.LEVANOVICH@ORACLE.COM', 'ANDREW.MAGOD@ORACLE.COM', 'CLAIRE.PYATT@ORACLE.COM', 'YONI.COHEN@ORACLE.COM', 'PEDRO.ALFORQUE@ORACLE.COM', 'MITCH.SILVER@ORACLE.COM', 'MARGOT.DAIBER@ORACLE.COM');

select * from tmp_ngcc_ent where email in ('MATT.BANTZ@ORACLE.COM', 'SUSAN.MITCHELL@ORACLE.COM', 'TOM.HOWELL@ORACLE.COM', 'REED.MCCONNELL@ORACLE.COM', 'KRISTIN.LEVANOVICH@ORACLE.COM');

select  lower(email),'13067~'||entitlement,'SR#180301-000717' from tmp_ngcc_ent  where email not in ('MATT.BANTZ@ORACLE.COM', 'SUSAN.MITCHELL@ORACLE.COM', 'TOM.HOWELL@ORACLE.COM', 'REED.MCCONNELL@ORACLE.COM', 'KRISTIN.LEVANOVICH@ORACLE.COM', 'ANDREW.MAGOD@ORACLE.COM', 'CLAIRE.PYATT@ORACLE.COM', 'YONI.COHEN@ORACLE.COM', 'PEDRO.ALFORQUE@ORACLE.COM', 'MITCH.SILVER@ORACLE.COM', 'MARGOT.DAIBER@ORACLE.COM');
select * from tmp_ngcc_acc where email in (select distinct email from tmp_ngcc_ent);
select * from tmp_ngcc_acc;
select * from prod_oim.ud_ngcc_usr where ud_ngcc_usr_email in ('vivian.chang@oracle.com','romeo.garcia@oracle.com');
select * from prod_oim.ud_ngcc_p where UD_NGCC_P_SUPPORTNOTES='SR#180301-000717';

The names of the TMP tables used during the load:;
select * from OIM_BLKLD_TMP_UDNGC1;
select * from OIM_BLKLD_TMP_UDNGC2;


The names of the Exception tables used during the load:;
select * from OIM_BLKLD_EX_UDNGC1;
select * from OIM_BLKLD_EX_UDNGC2;



select * from oim_support.user_accounts where app_instance_display_name ='HRIT JP Commuting Allowance Application' 
and usr_login in ('HIDEKI.KOSAKA@ORACLE.COM', 'KAZUYOSHI.SUZUKI@ORACLE.COM', 'WAKO.KATO@ORACLE.COM', 'YUTA.KATAHARA@ORACLE.COM');

select * from user_accounts where app_instance_display_name ='Fusion CRMAB' and ost_status in ('Revoked');;
 select * from user_ent where ent_description ='Fusion CRMAB';
create table fusion_crmab_acc_tmp_15092017 as select * from user_accounts where app_instance_display_name ='Fusion CRMAB';

create table fusion_crmab_ent_tmp_15092017 as select * from user_ent where ent_description ='Fusion CRMAB';



select * from fusion_crmab_acc_tmp_15092017;
select * from fusion_crmab_ent_tmp_15092017;

select * from fusion_crmau_acc_tmp_070717;
select * from fusion_crmau_tmp_070717;


select usr.usr_login beneficiary, req.request_key, req.request_creation_date, req.request_status, ent.entity_display_name entitlement_name,
app.entity_display_name application_name, req.request_justification
from request_beneficiary_entities rbe, request req, catalog ent, catalog app, usr
where rbe.rbe_entity_key = ent.entity_key
and req.request_key = rbe.rbe_request_key
and usr.usr_key = rbe.rbe_beneficiary_key
and ent.entity_type = rbe_entity_type
and ent.parent_entity_key = app.entity_key
and req.request_isparent = 'false'
and ent.entity_type = 'Entitlement'
and app.entity_type = 'ApplicationInstance'
and req.request_model_name = 'Provision Entitlement'
and REQ.REQUEST_STATUS = 'Request Completed'
and APP.ENTITY_DISPLAY_NAME = 'App Privilege Prov - Internal Stage'
order by 1,2;


---MANGER CHANGE audit event


 select entity_name,event_action,regexp_replace(regexp_replace(event_values_added, 'usr_manager_key="', ''),'(".*)','') new_manager
 ,regexp_replace(regexp_replace(event_values_removed, 'usr_manager_key="', ''),'(".*)','') old_manager,
 event_date from prod_oim.audit_event 
where entity_type='User' 
and event_action in ('MODIFY') 
and event_values_added is not null 
and event_status='S'
and entity_name like '%ORACLE.COM%' 
--and event_values_added like '%manager_key=%'
and entity_name='BRANDON.JOHNSON@ORACLE.COM'  --usr_login
order by event_date asc;



select entity_name,event_action,event_values_added , EVENT_VALUES_REMOVED, a.* from audit_event  a
where entity_type='User'
and event_action in ('MODIFY')
--and event_Actor_name = ‘OIMINTERNAL’
--and event_values_added like EMP_NO%'
--and event_status=‘S’
--and event_date > sysdate -2
and upper(entity_name) like 'BRANDON.JOHNSON@ORACLE.COM';
---EMCC

select * from UD_EMCC_U where request_key is not null;

update prod_oim.UD_EMCC_U set UD_EMCC_U_name='VIKAS.SUHAG@ORACLE.COM' where request_key in (	56060);

-----DISABLED USERS REJECTED TASK

 select * from user_accounts where USR_STATUS='Disabled' and ost_status in ('Provisioned','Enabled','Disabled') and obj_name not in (
select lkv_encoded from PROD_OIM.lkv where LKU_KEY=6935) and usr_udf_employee_subtype!='SSO-GENERIC'  and nvl(USR_UDF_DISABLED_DATE,usr_update)<sysdate-35;

select app_instance_display_name, count(1) from user_accounts where USR_STATUS='Disabled' and ost_status in ('Provisioned','Enabled','Disabled') and obj_name not in (
select lkv_encoded from PROD_OIM.lkv where LKU_KEY=6935) and usr_udf_employee_subtype!='SSO-GENERIC'  and nvl(USR_UDF_DISABLED_DATE,usr_update)<sysdate-35 group by app_instance_display_name
order by 2 desc;


 select usr_login ,ost_status ,orc_key from user_accounts where USR_STATUS='Disabled' and ost_status in ('Provisioned','Enabled','Disabled') 
 and APP_INSTANCE_DISPLAY_NAME in('Oracle Service Cloud (OSvC)') and obj_name not in (
select lkv_encoded from PROD_OIM.lkv where LKU_KEY=6935) and usr_udf_employee_subtype!='SSO-GENERIC'  and nvl(USR_UDF_DISABLED_DATE,usr_update)<sysdate-35;


;
select  upper(username) from osvctemp where   upper(username) in ( select usr_login from user_accounts where USR_STATUS='Disabled' and ost_status in ('Provisioned','Enabled','Disabled')
and APP_INSTANCE_DISPLAY_NAME in('Oracle Service Cloud (OSvC)') and obj_name not in
(select lkv_encoded from PROD_OIM.lkv where LKU_KEY=6935) and usr_udf_employee_subtype!='SSO-GENERIC'  and nvl(USR_UDF_DISABLED_DATE,usr_update)<sysdate-35)
;
create table osvctemp (username varchar(252));
---

select * from ud_apex_u where ud_apex_u_username='EITO.SAI@ORACLE.COM';
select * from ud_apex_u where ud_apex_u_username='DHRUVA.ATRE@ORACLE.COM';
select usr_key ,usr_country from usr where usr_login in ('DHRUVA.ATRE@ORACLE.COM');
select * from ud_apex_u where orc_key =17298426;
select * from ud_apex_p where orc_key =16442414;

update ud_apex_p set pol_key=null where orc_key =16442414 and pol_key in (2589,2590) ;
delete from ud_apex_p where ud_apex_p_key in (260816,260817);

2589
2590

select * from ent_assign where usr_key in (749790) and ent_status='In Progress'
;

update  ent_assign set ent_assign_prov_by=null, ent_assign_prov_mechanism=null where usr_key in (749790) and ent_assign_prov_by in (2589,2590)
and ent_status='In Progress'
;


select * from ent_assign where oiu_key=14307400;

select * from oiu where orc_key=17298913;

select * from ud_apex_u where orc_key 
in (17298419, 17298135, 17298581, 17298907, 17298643, 17298805, 17298438, 17298116, 17298215, 17298638, 17298825, 17298440, 17298156, 17298910, 17298763, 17298514, 17298756, 17297846, 17298682, 17298911, 17298829, 17298315, 17298189, 17298542, 17298207, 17298608, 17298772, 17298385, 17298639, 17298408, 17298428, 17298697, 17298362, 17297919, 17298360, 17298175, 17297965, 17298872, 17298138, 17297950, 17298846, 17298456, 17298151, 17297917, 17298796, 17298676, 17298351, 17298569, 17298004, 17298795, 17297842, 17298055, 17298308, 17298242, 17298020, 17298506, 17298240, 17298624, 17298423, 17298273, 17298354, 17298883, 17298179, 17298162, 17298126, 17298125, 17298683, 17298369, 17298881, 17297986, 17298720, 17297889, 17297990, 17298157, 17297996, 17298397, 17298165, 17298617, 17298768, 17298220, 17298400, 17298918, 17298077, 17298637, 17298751, 17298602, 17298182, 17298771, 17298827, 17298543, 17297929, 17298186, 17298718, 17298739, 17298166, 17298525, 17298675, 17297937, 17298392, 17298130, 17298834, 17298172, 17298517, 17298465, 17298821, 17298776, 17298539, 17298347, 17297998, 17298576, 17297981, 17298044, 17298609, 17298001, 17298033, 17298070, 17298575, 17298073, 17298219, 17298478, 17298005, 17297840, 17298272, 17298677, 17298036, 17298142, 17298429, 17298612, 17298409, 17298732, 17298356, 17298737, 17298554, 17298889, 17298378, 17298003, 17298254, 17298815, 17298013, 17298839, 17298562, 17298540, 17298679, 17298062, 17298262, 17298243, 17297935, 17298544, 17298040, 17298887, 17298579, 17298047, 17298898, 17298127, 17298833, 17298584, 17297886, 17298778, 17298710, 17298285, 17298588, 17298620, 17298430, 17298174, 17298191, 17298470, 17298474, 17298060, 17298804, 17298693, 17298902, 17298663, 17297989, 17298668, 17298854, 17298527, 17298847, 17298716, 17298800, 17298445, 17298669, 17298167, 17298828, 17298830, 17298559, 17298344, 17298896, 17298083, 17298045, 17298258, 17298745, 17298267, 17297946, 17298435, 17298066, 17298516, 17298290, 17298023, 17298845, 17298706, 17298095, 17298071, 17298707, 17298063, 17298404, 17298882, 17298303, 17298093, 17298148, 17298330, 17297881, 17297964, 17298750, 17298848, 17298786, 17298486, 17298797, 17298546, 17298836, 17298201, 17298136, 17298016, 17298485, 17298630, 17298688, 17298570, 17298453, 17298817, 17298903, 17297880, 17298386, 17298909, 17298531, 17298649, 17298194, 17298696, 17297913, 17298234, 17298048, 17298085, 17298019, 17298098, 17298279, 17298068, 17298287, 17297956, 17298253, 17298432, 17297841, 17298557, 17297879, 17298241, 17298762, 17298053, 17298806, 17298080, 17297845, 17298712, 17298891, 17298433, 17298460, 17298192, 17298479, 17298384, 17298320, 17298636, 17298447, 17298451, 17298059, 17298164, 17298332, 17297957, 17298611, 17298770, 17298082, 17298931, 17298317, 17297918, 17298524, 17298014, 17298106, 17298018, 17298754, 17298499, 17298822, 17298134, 17297969, 17298914, 17297962, 17297968, 17297944, 17298454, 17297954, 17298393, 17298390, 17298425, 17298113, 17298359, 17298879, 17298339, 17298572, 17298870, 17298753, 17297912, 17297829, 17298583, 17297924, 17298726, 17298748, 17297925, 17297994, 17297971, 17298213, 17298461, 17298022, 17298654, 17297847, 17298120, 17298007, 17298532, 17298678, 17298118, 17298605, 17298673, 17298305, 17298901, 17298089, 17298255, 17297884, 17298818, 17298248, 17298674, 17298145, 17298538, 17297922, 17298289, 17298109, 17297987, 17298002, 17297843, 17298342, 17298108, 17298026, 17298505, 17298334, 17298147, 17298781, 17298232, 17298652, 17298574, 17298086, 17298826, 17298361, 17298223, 17298421, 17297941, 17298519, 17298370, 17298233, 17298873, 17298744, 17298268, 17298355, 17298416, 17298645, 17297958, 17298589, 17298064, 17297967, 17298035, 17298921, 17298333, 17298180, 17298775, 17298529, 17298387, 17298493, 17298765, 17298075, 17297999, 17298558, 17297848, 17298252, 17298666, 17298178, 17298555, 17298115, 17298143, 17297939, 17298410, 17298374, 17298197, 17298325, 17298304, 17298841, 17298705, 17298563, 17298916, 17298217, 17298058, 17298302, 17298689, 17298610, 17298642, 17297982, 17298204, 17298112, 17298685, 17298481, 17297932, 17298627, 17298294, 17297877, 17298105, 17298703, 17298299, 17298782, 17298274, 17298560, 17298793, 17298313, 17298363, 17297992, 17298604, 17298388, 17298794, 17298735, 17298596, 17298224, 17298250, 17298190, 17298734, 17298222, 17298331, 17298383, 17298487, 17298424, 17298366, 17297948, 17298280, 17298307, 17297975, 17298205, 17298566, 17298491, 17298565, 17298717, 17298893, 17298644, 17298483, 17298046, 17298446, 17298037, 17298466, 17298246, 17298880, 17298599, 17298198, 17298310, 17298183, 17298634, 17298651, 17298413, 17298349, 17298427, 17298838, 17298724, 17298379, 17298214, 17298512, 17298144, 17298028, 17298244, 17298773, 17298573, 17298029, 17298469, 17298295, 17298476, 17298414, 17298316, 17298844, 17298695, 17298154, 17298631, 17298567, 17298533, 17298193, 17298842, 17298548, 17297970, 17298208, 17298523, 17298444, 17298340, 17298411, 17298820, 17298265, 17298114, 17298490, 17298343, 17297955, 17298008, 17298176, 17298061, 17298160, 17298329, 17298158, 17298899, 17298237, 17298816, 17298757, 17298760, 17298103, 17298714, 17298231, 17297914, 17298133, 17298270, 17298704, 17297915, 17298623, 17298509, 17298618, 17298783, 17298917, 17298137, 17298119, 17298196, 17298146, 17298843, 17298788, 17298017, 17298814, 17297930, 17297947, 17298897, 17298251, 17297945, 17298024, 17298341, 17298239, 17298650, 17298615, 17298141, 17298218, 17298852, 17298767, 17298185, 17298552, 17298065, 17298163, 17298139, 17298564, 17298122, 17298613, 17298292, 17298530, 17298890, 17298769, 17298210, 17298260, 17298785, 17298452, 17298226, 17298293, 17298152, 17297927, 17298238, 17298502, 17298276, 17298457, 17298709, 17298277, 17298403, 17298701, 17298510, 17298326, 17298616, 17298520, 17298561, 17298398, 17298284, 17298810, 17298395, 17298641, 17297960, 17298912, 17298526, 17297911, 17298501, 17297953, 17298097, 17298102, 17298594, 17298021, 17298110, 17298743, 17298291, 17298394, 17298497, 17298328, 17298043, 17298155, 17298535, 17298177, 17298919, 17298211, 17298801, 17298203, 17298849, 17298606, 17297963, 17298009, 17298074, 17297943, 17298571, 17298031, 17298437, 17298170, 17298263, 17298297, 17298401, 17298774, 17298202, 17297978, 17298832, 17298382, 17298905, 17297849, 17298367, 17298480, 17298067, 17298084, 17298371, 17298656, 17298722, 17298034, 17298345, 17298789, 17298247, 17298467, 17298458, 17298092, 17298471, 17298377, 17298725, 17298338, 17298553, 17298422, 17298441, 17298582, 17298888, 17298646, 17298319, 17297936, 17298550, 17297883, 17298690, 17298100, 17297882, 17298508, 17298586, 17298228, 17298462, 17298283, 17298306, 17298494, 17298337, 17297952, 17298402, 17298730, 17297921, 17297988, 17298346, 17298090, 17298094, 17298449, 17298489, 17298578, 17298513, 17298522, 17298266, 17298647, 17298492, 17297979, 17298477, 17298784, 17297977, 17298072, 17297985, 17298684, 17298459, 17298791, 17297926, 17298032, 17298764, 17298528, 17298079, 17298096, 17298742, 17298324, 17298323, 17298264, 17298282, 17298537, 17298396, 17298417, 17298184, 17298626, 17298275, 17298249, 17298507, 17298281, 17298721, 17298412, 17298365, 17298541, 17298759, 17298088, 17298431, 17298464, 17298711, 17298547, 17298051, 17298803, 17298500, 17298123, 17298733, 17298635, 17298799, 17298920, 17298667, 17298000, 17298593, 17298484, 17298300, 17298715, 17298906, 17298877, 17297885, 17298353, 17298671, 17298391, 17298348, 17298111, 17298236, 17298468, 17298406, 17298736, 17298420, 17298104, 17298749, 17297878, 17298908, 17298011, 17298443, 17298738, 17298150, 17298746, 17298099, 17298436, 17298434, 17298256, 17298107, 17298876, 17298824, 17298227, 17298076, 17298665, 17298640, 17298885, 17297984, 17298006, 17298200, 17297993, 17298322, 17297888, 17298495, 17298442, 17298091, 17298132, 17298405, 17298719, 17298473, 17298884, 17298755, 17298159, 17298140, 17298731, 17297938, 17298057, 17298600, 17297949, 17297983, 17298577, 17298823, 17298874, 17298521, 17297876, 17298568, 17298698, 17298187, 17298601, 17298930, 17298081, 17298229, 17298591, 17298857, 17298368, 17298686, 17298407, 17297995, 17298124, 17298439, 17298787, 17298025, 17298312, 17298790, 17297910, 17298819, 17298808, 17298418, 17298235, 17298271, 17298216, 17298692, 17297973, 17298622, 17298056, 17298659, 17298488, 17298894, 17298149, 17298195, 17298900, 17298336, 17298621, 17298475, 17298587, 17297966, 17297928, 17298536, 17298372, 17298780, 17298188, 17298311, 17298038, 17298835, 17298892, 17298831, 17298131, 17298681, 17298301, 17298482, 17298915, 17298728, 17298895, 17298904, 17298069, 17297959, 17297920, 17298595, 17298030, 17298853, 17298809, 17298658, 17298052, 17298278, 17298648, 17297980, 17298590, 17298680, 17298878, 17298498, 17298448, 17297940, 17298662, 17298245, 17298169, 17298551, 17298087, 17298691, 17298598, 17298597, 17298761, 17298206, 17298318, 17298766, 17298670, 17298010, 17297976, 17298296, 17298534, 17298504, 17297991, 17298117, 17298171, 17298657, 17298633, 17298792, 17298269, 17298807, 17298181, 17298049, 17298875, 17298625, 17298358, 17298321, 17298545, 17298886, 17298357, 17298713, 17298259, 17297961, 17298161, 17297916, 17298632, 17298664, 17298221, 17297933, 17298629, 17298173, 17298352, 17298694, 17298121, 17298212, 17298729, 17298309, 17298802, 17297972, 17298078, 17298856, 17298389, 17298585, 17298376, 17298054, 17298027, 17297887, 17298364, 17298257, 17298511, 17298556, 17298209, 17298399, 17298672, 17298747, 17298496, 17298515, 17298101, 17297931, 17298699, 17297934, 17298286, 17298871, 17298655, 17298580, 17298812, 17298702, 17298463, 17298619, 17298375, 17298603, 17298042, 17298450, 17298708, 17298503, 17298381, 17298661, 17298628, 17297974, 17298153, 17298518, 17298327, 17298230, 17298752, 17298607, 17298373, 17298758, 17298777, 17297951, 17298840, 17298687, 17298039, 17298128);

----SAML
--10304	SAML Automation
--10323	SAML Automation Stage
select * from svr where svr_name like 'SAML%';
select * from ud_saml_usr where UD_SAML_USR_OLD_LOGIN='SHAWNA.BIEGEL@ORACLE.COM' and UD_SAML_USR_LOGIN='JAMES.X.MCDOWELL@ORACLE.COM'
and ud_saml_USR_filename!='INITIAL_LOAD'
;

select * from ud_saml_usr  where  orc_key = 15906153;
select * from ud_saml_usr  where  request_key = 18613303;
select * from ud_saml_usr  where  ud_saml_usr_login = 'PRAISE.THAMPI@ORACLE.COM' and request_key not in (12923242,12923190);
select * from ud_saml_usr  where -- ud_saml_usr_login = 'MADHU.RAGHAVENDRA@ORACLE.COM'
--and 
ud_saml_usr_partnerid like ('%rain%')
;
select * from ud_saml_usr  where   ud_saml_usr_partnername='www-wrike-com-account-1572003';

update  ud_saml_usr  set ud_saml_usr_login='ADLA.SAYEED@ORACLE.COM',UD_SAML_USR_SUPPORTNOTES=UD_SAML_USR_SUPPORTNOTES||'180829-000136'
where  ud_saml_usr_login = 'PRAISE.THAMPI@ORACLE.COM' and request_key not in (12923242,12923190);

select * from ost where ost_status in ('Provisoning');

select * from oiu where orc_key = 15849087;

select ud.UD_SAML_USR_LOGIN, oiu.orc_key,u.usr_key owner_asper_ud,oiu.usr_key,
oiuu.usr_login owner_inUi,ud.ud_saml_usr_update,oiuu.usr_status
from ud_saml_usr ud, usr u, oiu oiu,usr oiuu
where upper(UD_SAML_USR_LOGIN)=u.usr_login
--and upper(UD_SAML_USR_LOGIN)='JAMES.X.MCDOWELL@ORACLE.COM'
and oiu.orc_key=ud.orc_key
and u.usr_key <> oiu.usr_key
and oiu.usr_key=oiuu.usr_key
and oiu.ost_key in (6708)
and oiuu.usr_login not  in ('PRASANNA.Y.KUMAR@ORACLE.COM','RAJ.BASNAYAKE@ORACLE.COM','VANAMALA.VENUGOPAL@ORACLE.COM')
;

select * from ost where obj_key=4812;
select  * from usr where usr_key in (209475);

desc ud_saml_usr;
select * from ud_saml_usr where request_key = 16424893 ;

select UD_SAML_USR_LOGIN,UD_SAML_USR_OLD_LOGIN,UD_SAML_USR_PARTNERNAME,UD_SAML_USR_PARTNERID,
UD_SAML_USR_SSOPROFILE,UD_SAML_USR_PARTNERTYPE,UD_SAML_USR_SUPPORTNOTES||'SR#180523-000325' as UD_SAML_USR_SUPPORTNOTES ,'INITIAL_LOAD' as UD_SAML_USR_FILENAME,UD_SAML_USR_ITRESOURCE
from ud_saml_usr where orc_key in (14440584, 14440375, 14440500, 14440501, 14440243, 14440242, 14440506, 14440505, 14440536, 14440537, 14440553, 14440332, 14440542, 14440528, 14440301, 14440299, 14440581, 14440529, 14440530, 14440513, 14440544, 14440545, 14440546, 14440547, 14440561, 14440562, 14440575, 14440576, 14440577, 14440578, 14440512, 14440511, 14440510, 14440515, 14440524, 14440521, 14440520, 14440519, 14440518, 14440514, 14440516, 14440517, 14440244, 14440245, 14440246, 14440247, 14440248, 14440253, 14440254, 14440255, 14440256, 14440257, 14440258, 14440259, 14440265, 14440266, 14440267, 14440268, 14440269, 14440270, 14440271, 14440272, 14440273, 14440315, 14440316, 14440317, 14440318, 14440328, 14440329, 14440344, 14440345, 14440351, 14440352, 14440361, 14440362, 14440371, 14440372, 14440389, 14440223, 14440224, 14440222, 14440235, 14440237, 14440263, 14440504, 14440570, 14440559, 14440587, 14440538, 14440579, 14440580, 14440586, 14440571, 14440540, 14440291, 14440310, 14440311, 14440312, 14440314, 14440319, 14440325, 14440326, 14440327, 14440357, 14440358, 14440366, 14440290, 14440289, 14440288, 14440287, 14440286, 14440284, 14440283, 14440282, 14440278, 14440367, 14440276, 14440275, 14440274, 14440262, 14440261, 14440260, 14440277)
order by UD_SAML_USR_ITRESOURCE;
select * from ud_saml_usr where orc_key in 	(14440584, 14440375, 14440500, 14440501, 14440243, 14440242, 14440506, 14440505, 14440536, 14440537, 14440553, 14440332, 14440542, 14440528, 14440301, 14440299, 14440581, 14440529, 14440530, 14440513, 14440544, 14440545, 14440546, 14440547, 14440561, 14440562, 14440575, 14440576, 14440577, 14440578, 14440512, 14440511, 14440510, 14440515, 14440524, 14440521, 14440520, 14440519, 14440518, 14440514, 14440516, 14440517, 14440244, 14440245, 14440246, 14440247, 14440248, 14440253, 14440254, 14440255, 14440256, 14440257, 14440258, 14440259, 14440265, 14440266, 14440267, 14440268, 14440269, 14440270, 14440271, 14440272, 14440273, 14440315, 14440316, 14440317, 14440318, 14440328, 14440329, 14440344, 14440345, 14440351, 14440352, 14440361, 14440362, 14440371, 14440372, 14440389, 14440223, 14440224, 14440222, 14440235, 14440237, 14440263, 14440504, 14440570, 14440559, 14440587, 14440538, 14440579, 14440580, 14440586, 14440571, 14440540, 14440291, 14440310, 14440311, 14440312, 14440314, 14440319, 14440325, 14440326, 14440327, 14440357, 14440358, 14440366, 14440290, 14440289, 14440288, 14440287, 14440286, 14440284, 14440283, 14440282, 14440278, 14440367, 14440276, 14440275, 14440274, 14440262, 14440261, 14440260, 14440277);
select * from ud_saml_usr where (ud_saml_usr_partnertype is null or ud_saml_usr_ssoprofile=null) and UD_SAML_USR_supportnotes is not null;
select * from ud_saml_usr where  ud_saml_usr_partnername like '%s6-excelityglobal-com-ACS%';

desc ud_saml_usr

update ud_saml_usr set UD_SAML_USR_SUPPORTNOTES=UD_SAML_USR_SUPPORTNOTES||'SR#190314-000175' where orc_key in (18232721);

select UD_SAML_USR_ITREsource,orc_key,UD_SAML_USR_OLD_LOGIN,UD_SAML_USR_LOGIN,ud_saml_USR_filename 
from ud_saml_usr where orc_key in ( 14878723, 15813202, 14905015, 14587644, 15813182, 14906138, 14648104, 16450636, 14648236, 14804003, 14904358, 16634613, 15813164, 15813092, 14692813, 14887051, 14904992, 15813148, 14980734, 14980735, 14644214, 16352278, 16634575, 16346055, 16288182, 14979483, 14644168, 16289399, 16357515, 15823269, 14542953, 16634597, 14566137, 16291302, 14904058, 14894075, 14979469, 14708247, 16291252) ;

update ud_saml_usr set UD_SAML_USR_supportnotes=UD_SAML_USR_supportnotes||'SR#180521-000382' where orc_key in (14440370,16694586,16686332 );
select * from ud_saml_usr where  UD_SAML_USR_supportnotes like '%SR#180214-000292%';
select * from ud_saml_usr where ud_saml_usr_ssoprofile is null and UD_SAML_USR_supportnotes like '%SR#170210-000652%';

select * from ud_saml_usr where UD_SAML_USR_supportnotes like '%SR#180214-001088%';

select * from ud_saml_usr where ud_saml_usr_partnername like '%git000008%';
select * from ud_saml_usr where ud_saml_usr_partnername like '%dev-gax-pulse-ngcc-v1-phx1-oragit-oraclecorp-com%';

select * from ud_saml_usr where orc_key in (14440584, 14440375, 14440500, 14440501, 14440243, 14440242, 14440506, 14440505, 14440536, 14440537, 14440553, 14440332, 14440542, 14440528, 14440301, 14440299, 14440581, 14440529, 14440530, 14440513, 14440544, 14440545, 14440546, 14440547, 14440561, 14440562, 14440575, 14440576, 14440577, 14440578, 14440512, 14440511, 14440510, 14440515, 14440524, 14440521, 14440520, 14440519, 14440518, 14440514, 14440516, 14440517, 14440244, 14440245, 14440246, 14440247, 14440248, 14440253, 14440254, 14440255, 14440256, 14440257, 14440258, 14440259, 14440265, 14440266, 14440267, 14440268, 14440269, 14440270, 14440271, 14440272, 14440273, 14440315, 14440316, 14440317, 14440318, 14440328, 14440329, 14440344, 14440345, 14440351, 14440352, 14440361, 14440362, 14440371, 14440372, 14440389, 14440223, 14440224, 14440222, 14440235, 14440237, 14440263, 14440504, 14440570, 14440559, 14440587, 14440538, 14440579, 14440580, 14440586, 14440571, 14440540, 14440291, 14440310, 14440311, 14440312, 14440314, 14440319, 14440325, 14440326, 14440327, 14440357, 14440358, 14440366, 14440290, 14440289, 14440288, 14440287, 14440286, 14440284, 14440283, 14440282, 14440278, 14440367, 14440276, 14440275, 14440274, 14440262, 14440261, 14440260, 14440277);

update ud_saml_usr set UD_SAML_USR_supportnotes=replace(UD_SAML_USR_supportnotes,'SR#180214-000292SR#180214-000292','SR#180214-000292') where
UD_SAML_USR_supportnotes like '%SR#180214-000292SR#180214-000292%'; 

update ud_saml_usr set ud_saml_usr_partnertype='sp',UD_SAML_USR_supportnotes=UD_SAML_USR_supportnotes||'SR#180214-000292' where ud_saml_usr_partnertype is null ;
update ud_saml_usr set ud_saml_usr_ssoprofile='httppost',UD_SAML_USR_supportnotes=UD_SAML_USR_supportnotes||'SR#180214-000292'  where ud_saml_usr_ssoprofile is null ;


update ud_saml_usr set UD_SAML_USR_supportnotes=UD_SAML_USR_supportnotes||'SR#171019-000535' where orc_key =15714189;

update prod_oim.ud_saml_usr set ud_saml_usr_partnerid='https://sso.ehc.adp.com/samlsp',ud_saml_usr_partnername='sso-ehc-adp-com-samlsp',ud_saml_usr_supportnotes=supportnotes||'SR#170807-000163' where request_key=8274351;
update prod_oim.ud_saml_usr set supportnotes=supportnotes||'SR#170807-000163' where request_key=8274351;

select * from UD_SAML_USR where request_key =14010607;

select * from oiu where oiu_key in (4265045);
--------------IDSL
select * from ud_idsl_usr order by orc_key desc;

select * from ud_idsl_usr where orc_key in (5418077,5871625,5871398,5871642,5422580);
select * from ud_idsl_usr where request_key in (469867 );
desc ud_idsl_usr;
UD_IDSL_USR_PARTNERID
UD_IDSL_USR_PARTNERID

select * from ud_idsl_usr where ud_idsl_usr_login in ('MAXYM.RODIONOV@ORACLE.COM');

desc ud_idsl_usr;
UPDATE ud_idsl_usr SET  UD_IDSL_USR_PARTNERname='slc05tej_fedlet_prashanth';


--------CGSL
select * from ud_cgsl_usr ;
desc ud_cgsl_usr;
desc ud_idsl_usr;

--Alter table UD_CGSL_USR ADD(UD_CGSL_USR_UPDATE DATE);
--Alter table UD_CGSL_USR ADD(UD_CGSL_USR_CREATEBY  NUMBER(19));
-----
select * from ud_oiut_u where ud_oiut_u_user_login in ('ERIKA.HESS@ORACLE.COM');

select entity_name from catalog where parent_entity_key = 6689 and is_requestable = 1 and is_deleted = 0
  minus
  select entity_name from APSOIM.oim_entity_notifications;
  select * from APSOIM.oim_entity_notifications where entity_name IN ('NetSuite Legacy Systems Other: Read-Only','NetSuite Legacy Systems Sales: Read-Only');
  
  
  
  --update APSOIM.oim_entity_notifications set entity_name='NetSuite Legacy Systems Other:Read-Only' where  entity_name like 'NetSuite Legacy Systems Other: Read-Only' ;
  --update APSOIM.oim_entity_notifications set entity_name='NetSuite Legacy Systems Sales:Read-Only' where  entity_name like 'NetSuite Legacy Systems Sales: Read-Only' ;
  
  desc ud_aqln_ch;
  desc ud_orna_u;
  
   UPDATE prod_oim.ORC ORC SET ORC_TOS_INSTANCE_KEY = (SELECT UD_ORNA_U_NAME UD FROM prod_oim.ud_orna_u UD WHERE UD.ORC_KEY=ORC.ORC_KEY)
WHERE ORC_KEY IN ( SELECT orc_key UD FROM prod_oim.ud_orna_u where UD_ORNA_U_SERVER=11764);




desc ud_fnda_usr;
select * from usr where usr_key=585315;
select * from ud_USFS_usr;
select to_char(UD_FNDA_USR_PWD_UPDATE, 'Dy DD-Mon-YYYY HH24:MI:SS') ,UD_FNDA_USR_GECOS from ud_FNDA_usr;

update ud_FNDA_usr set UD_FNDA_USR_password='6828:97Vo6X/bw5JHXKGJuvoduIE+PZpTEXh+Vmz8YketHUM=' where UD_FNDA_USR_USERID='pvudutha';
desc ud_fnda_usr;
update ud_FNDA_usr set UD_FNDA_USR_PWD_UPDATE=sysdate-1  where orc_key in (5136270);

select UD_FNDA_USR_GECOS from ud_fnda_usr;
select * from ud_fnda_usr where request_key in (167523);

select * from ud_fnda_usr where orc_key in (167523);
select * from apsoim.PDIT_OIM_report_owners where report_name like '%SAML%';

select * from oiu where oiu_key=4098398;

Insert into PDIT_OIM_report_owners values ('CZ Supplementary Pension Insurance','KATHRIN.NEEDHAM@ORACLE.COM','#SR#190128-000163',null, sysdate, null);
Insert into PDIT_OIM_report_owners values ('SAML Account Details','JOHN.EGAN@ORACLE.COM','BUSSINESSOWNER',null, sysdate, null);
Insert into PDIT_OIM_report_owners values ('SAML Account Details','RUEY.WANG@ORACLE.COM','BUSSINESSOWNER',null, sysdate, null);
Insert into PDIT_OIM_report_owners values ('SAML Account Details','RAVISHANKAR.GOVINDARAJAN@ORACLE.COM','BUSSINESSOWNER',null, sysdate, null);
Insert into PDIT_OIM_report_owners values ('NSGBU Environment','SONA.MUZIKANTOVA@ORACLE.COM','BUSSINESSOWNER',null, sysdate, null);


select * from ud_MCSP_u;

grant select on OIM_ADHOC_PASSWORD_AGING_USR to prod_oim;

select * from apsoim.OIM_ADHOC_PASSWORD_AGING_USR where app_instance_name='CorporateSSOAccount' and nvl(expiration_date,sysdate+1) > sysdate
and usr_key in (select usr_key from usr where usr_login in ('ZIAUDDIN.MOHAMMED@ORACLE.COM'))
; 

select distinct usr.usr_key from catalog c, oiu, app_instance app, ost, usr where 
c.entity_key = oiu.app_instance_key and c.entity_type = 'ApplicationInstance' 
and c.is_deleted = 0 and c.UDF_IS_SSA_PCI_RESP = '1'
	and oiu.app_instance_key = app.app_instance_key and app.object_key = ost.obj_key and oiu.ost_key = ost.ost_key and ost.ost_Status in ('Provisioned', 'Enabled') 
    and oiu.usr_key = usr.usr_key and usr.usr_status = 'Active'
    and usr.usr_key in (select usr_key from usr where usr_login in ('ZIAUDDIN.MOHAMMED@ORACLE.COM'))
   ;

desc OIM_ADHOC_PASSWORD_AGING_USR;

insert into apsoim.OIM_ADHOC_PASSWORD_AGING_USR values (2,595946,'CorporateSSOAccount',sysdate,250994,null,'Testing');
insert into apsoim.OIM_ADHOC_PASSWORD_AGING_USR values (3,596190,'CorporateSSOAccount',sysdate,250994,null,'Testing');
insert into apsoim.OIM_ADHOC_PASSWORD_AGING_USR values (4,761330,'CorporateSSOAccount',sysdate,250994,null,'Testing');


select usr.usr_login, usr.usr_key,usr_manager_key,USR_UDF_EMPLOYEE_SUBTYPE as emp_subtype, ud.UD_SSOA_USR_LOGIN as user_name, oiu.oiu_key as oiu_key,
ost.ost_status,ud.UD_SSOA_USR_update_date as UD_SSOA_USR_update_date, UD_SSOA_USR_pwd_locked,(SYSDATE-(NVL(UD_SSOA_USR_update_date,UD_SSOA_USR_create))) as age, to_char(sysdate-69,'yyyy-mm-dd') as aging_start_date, to_char(nvl(UD_SSOA_USR_update_date,(sysdate-69)) +90,'dd-Mon-yyyy') as password_end_date ,ud.orc_key from oiu, ost, UD_SSOA_USR ud, usr where ud.orc_key = oiu.orc_key and oiu.ost_key = ost.ost_key and oiu.usr_key=usr.usr_key and ost_status in ('Provisioned','Enabled') and NVL(UD_SSOA_USR_pwd_locked,0)=0 and (SYSDATE-UD_SSOA_USR_update_date) >= 69 and NVL(UD_SSOA_USR_notification_cnt,0)= 0 and usr.usr_login not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.PasswordAgingExemptedUsers') AND usr.USR_KEY IN ( select usr_key from apsoim.OIM_ADHOC_PASSWORD_AGING_USR where app_instance_name='CorporateSSOAccount' and nvl(expiration_date,sysdate+1) > sysdate) and rownum <= 10;


select * from apsoim.OIM_ADHOC_PASSWORD_AGING_USR where app_instance_name='CorporateSSOAccount' and nvl(expiration_date,sysdate+1) > sysdate and usr_key in (152659);


select orc_key,UD_SSOA_USR_EMAIL,UD_SSOA_USR_UPDATE_DATE,UD_SSOA_USR_NOTIFICATION_CNT,ud_ssoa_usr_pwd_locked,ud_ssoa_usr_aged_passwd   from UD_SSOA_USR
where UPPER(UD_SSOA_USR_EMAIL) IN  ('MARISSA.SUAREZ@ORACLE.COM');

 select  distinct certs_user.username REVIEWER,cert_task_info.task_start_date, to_char(cert_task_info.task_start_date+14, 'DD-Mon-YY') as start_notifictaion_date , to_char(cert_task_info.task_start_date+35, 'DD-Mon-YY') as end_notifictaion_date ,
  certs_user.firstname as first_name,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager,  to_char(sysdate, 'DD-Mon-YY') as current_date 
  from cert_certs,  cert_task_info, certs_user, usr usr, usr u2
where cert_certs.id = cert_task_info.cert_id and cert_task_info.reviewer_id = certs_user.iam_user_id
and certs_user.username = usr.usr_login and usr.usr_manager_key = u2.usr_key
and cert_task_info.task_end_date is null and cert_task_info.task_start_date+14 < SYSDATE 
and  certs_user.username not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key 
and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers')
--and rownum <= 10
;
desc certs_user;

select  distinct certs_user.username REVIEWER,cert_task_info.task_start_date,cert_task_info.task_start_date+14 as start_notifictaion_date , cert_task_info.task_start_date+35 as end_notifictaion_date ,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager, sysdate as current_date from cert_certs,  cert_task_info, certs_user, usr usr, usr u2 where cert_certs.id = cert_task_info.cert_id and cert_task_info.reviewer_id = certs_user.iam_user_id and certs_user.username = usr.usr_login and usr.usr_manager_key = u2.usr_key and cert_task_info.task_end_date is null and cert_task_info.task_start_date+14
< SYSDATE and certs_user.username not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers') and rownum <= 10 
;
grant select on stage_oim.cert_task_info to apsoim;

select  distinct certs_user.username REVIEWER,cert_task_info.task_start_date, to_char(cert_task_info.task_start_date+14, 'DD-Mon-YY')
as start_notifictaion_date , to_char(cert_task_info.task_start_date+35, 'DD-Mon-YY') as end_notifictaion_date , 
certs_user.firstname as first_name,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager,
to_char(sysdate, 'DD-Mon-YY') as current_date from cert_certs,  cert_task_info, certs_user, usr usr, usr u2 
where cert_certs.id = cert_task_info.cert_id and cert_task_info.reviewer_id = certs_user.iam_user_id 
and certs_user.username = usr.usr_login and usr.usr_manager_key = u2.usr_key and cert_task_info.task_end_date is null
and cert_task_info.task_start_date+14 < SYSDATE and certs_user.username
not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key 
and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers') and rownum <= 10 ; 


select * from ud_idsl_usr;

select  distinct usr.usr_login REVIEWER,cert_task_info.task_start_date, to_char(cert_task_info.task_start_date+14, 'DD-Mon-YY') as start_notifictaion_date , 
to_char(cert_task_info.task_start_date+14+21, 'DD-Mon-YY') as end_notifictaion_date , usr.usr_first_name as first_name,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager,
to_char(sysdate, 'DD-Mon-YY') as current_date from stage_oim.cert_certs,  stage_oim.cert_task_info,  stage_oim.usr usr, stage_oim.usr u2 
where cert_certs.id = cert_task_info.cert_id and cert_task_info.reviewer_id = usr.usr_key --and usr.username = usr.usr_login 
and usr.usr_manager_key = u2.usr_key and cert_task_info.task_end_date is null and cert_task_info.task_start_date+14 < SYSDATE 
and usr.usr_login not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers')
and u2.usr_login not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers');
;

select   usr.usr_login REVIEWER,cert_task_info.task_start_date, cert_task_info.task_start_date+14 as start_notifictaion_date ,
cert_task_info.task_start_date+14+20 as end_notifictaion_date , sysdate as current_date ,usr.usr_first_name as first_name,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager  
from cert_certs,  cert_task_info,  usr usr, usr u2
where cert_certs.id = cert_task_info.cert_id 
and cert_task_info.reviewer_id = usr.usr_key
and usr.usr_manager_key = u2.usr_key 
and cert_task_info.task_end_date is null
and cert_task_info.task_start_date+14 < SYSDATE 
and usr.usr_login not in 
(select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers') ;


select  distinct usr.usr_login REVIEWER,cert_task_info.task_start_date, to_char(cert_task_info.task_start_date+15, 'DD-Mon-YY') as start_notifictaion_date  , 
to_char(cert_task_info.task_start_date+21, 'DD-Mon-YY') as end_notifictaion_date , usr.usr_first_name as first_name,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager,  to_char(sysdate, 'DD-Mon-YY') as current_date from cert_certs,  cert_task_info,  usr usr, usr u2 where cert_certs.id = cert_task_info.cert_id and cert_task_info.reviewer_id = usr.usr_key and usr.usr_manager_key = u2.usr_key and cert_task_info.task_end_date is null and cert_task_info.task_start_date+15 <= SYSDATE and usr.usr_login not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers')
;

select  distinct usr.usr_login REVIEWER,cert_task_info.task_start_date,  to_char(to_date( '01-NOV-17','DD-Mon-YY')) as start_notification_date  , 
to_char((to_date('01-NOV-17','DD-Mon-YY')+3+4)) as end_notification_date , 
usr.usr_first_name as first_name,usr.usr_title,usr.usr_display_name,u2.usr_login as REVIEWER_manager,  to_char(sysdate, 'DD-Mon-YY') as current_date from cert_certs,  cert_task_info,  usr usr, usr u2 where cert_certs.id = cert_task_info.cert_id and cert_task_info.reviewer_id = usr.usr_key and usr.usr_manager_key = u2.usr_key and cert_task_info.task_end_date is null and cert_task_info.task_start_date+15 <= SYSDATE and usr.usr_login not in (select lkv_encoded from lkv lkv, lku lku where lkv.lku_key=lku.lku_key and lku.lku_type_string_key='Lookup.PDIT.CertNotificationExemptedUsers');





SELECT usr.usr_key, USR_UDF_EMPLOYEE_SUBTYPE, usr_update, USR.USR_LOGIN ,ent.ent_code,ent.ent_display_name,EA.ENT_STATUS FROM ENT_LIST ENT, ENT_ASSIGN EA, USR
WHERE ENT.ENT_LIST_KEY  = EA.ENT_LIST_KEY AND EA.USR_KEY   = USR.USR_KEY
AND EA.ENT_STATUS  IN  ('Provisioned')
and ent.ent_code in('C3P_U','C3P_B','C3P_S')
and USR.USR_LOGIN in (select usr_login from usr where USR_UDF_EMPLOYEE_SUBTYPE in('EMPLOYEE'))
and usr.usr_status = 'Active';



select ud.UD_CGSL_USR_DESCRIPTION,ud.UD_CGSL_USR_GRANT_TYPE,ud.UD_CGSL_USR_ID,ud.UD_CGSL_USR_IDENTITY_DOMAIN,ud.UD_CGSL_USR_ITRESOURCE,ud.UD_CGSL_USR_LOGIN,ud.UD_CGSL_USR_OLD_LOGIN,ud.UD_CGSL_USR_PARTNERID,ud.UD_CGSL_USR_PARTNERNAME,ud.UD_CGSL_USR_POLICYNAME,ud.UD_CGSL_USR_RESPONSE,ud.UD_CGSL_USR_SCOPE,ud.UD_CGSL_USR_SESSIONID,ud.UD_CGSL_USR_SSOPROFILE,ud.UD_CGSL_USR_STR_NUMBER,ud.UD_CGSL_USR_SUPPORTNOTES,ud.UD_CGSL_USR_URL,ud.UD_CGSL_USR_create,ud.UD_CGSL_USR_createby,ud.UD_CGSL_USR_data_level,ud.UD_CGSL_USR_key,ud.UD_CGSL_USR_note,ud.UD_CGSL_USR_revoke,ud.UD_CGSL_USR_rowver,ud.UD_CGSL_USR_update,ud.UD_CGSL_USR_updateby,ud.UD_CGSL_USR_version,ud.orc_key,ud.pol_key,ud.request_key,orc.orc_tasks_archived from UD_CGSL_USR ud , orc orc where ud.orc_key=orc.orc_key and orc.orc_key=:1;


select * from oiu where orc_key =16411161;

grant select on oim_support.tmp_ngcc_ent to prod_oim;
insert into PROD_OIM.ud_ngcc_p
select  PROD_OIM.ud_ngcc_p_SEQ.NEXTVAL,   a.ORC_KEY, null,1,sysdate,1,sysdate,EMPTY_CLOB(),'0000000000000000',null,0,null,null,
UDOUT.UD_NGCC_Usr_KEY,'13067~'||a.entitlement,'2SR#180301-000717'
from OIM_SUPPORT.tmp_ngcc_ent a
, PROD_OIM.ud_ngcc_usr UDOUT
where 
 UDOUT.ORC_KEY = a.ORC_KEY
and a.email in ('MATT.BANTZ@ORACLE.COM', 'SUSAN.MITCHELL@ORACLE.COM', 'TOM.HOWELL@ORACLE.COM', 'REED.MCCONNELL@ORACLE.COM', 'KRISTIN.LEVANOVICH@ORACLE.COM')
;

select * from ud_ngcc_p;



select oiu_key entityId, ud.orc_key processInstanceKey, OIU_PROV_END_DATE validToDate, orc.orc_tos_instance_key accountName, oiu.usr_key userKey from PROCESS_FORM UD, OIU, OST, ORC 
 where OIU.ORC_KEY = UD.ORC_KEY and OIU.ORC_KEY = ORC.ORC_KEY and OIU.OST_KEY = OST.OST_KEY and ost.OST_STATUS in ('Provisioned', 'Enabled')
and APP_INSTANCE_KEY = ? and OST.OBJ_KEY = ? and OIU_PROV_END_DATE - sysdate <= ?/24 AND NVL(PROCESS_FORM_GRANTEXT_NOTICNT,0) = ?;

desc REQUEST;

;

select * from APS_OCP_THIRD_PARTY_ACCOUNTS;

select * from OIM_BLKLD_TMP_UDADU1;


select usr_login,'cloudpedia_admin','SR#180509-000885',usr_email FROM USR WHERE upper(USR_LOGIN) 
in ('NICK.BALCH@ORACLE.COM', 'FLEMMING.CHRISTENSEN@ORACLE.COM', 'MINA.DENG@ORACLE.COM', 'VIKRAM.KHARE@ORACLE.COM', 'VALENTIN.M.MIHAI@ORACLE.COM', 'RASHMI.MOHANTY@ORACLE.COM', 'BALA.SAMBAMURTHY@ORACLE.COM', 'DANNY.SINDRA@ORACLE.COM', 'TODD.R.SMITH@ORACLE.COM', 'DAVE.SUVEGES@ORACLE.COM', 'DEAN.TAN@ORACLE.COM', 'MONIKA.THAKUR@ORACLE.COM', 'RANI.URBAS@ORACLE.COM', 'NAUSHIN.VHORA@ORACLE.COM', 'JOHN.E.WILSON@ORACLE.COM', 'MATTHEW.ZIEGLER@ORACLE.COM', 'ADIL.LAARI@ORACLE.COM', 'ADITYA.S.SHANKER@ORACLE.COM', 'FUMING.SHIH@ORACLE.COM', 'KEFEI.WANG@ORACLE.COM');


select * from apsoim.OIM_CROL_STAGING;


select usr_login from stage_oim.usg, stage_oim.ugp, stage_oim.usr where usg.ugp_key = ugp.ugp_key and ugp.ugp_name='Corp OIM Support Team' 
and usg.usr_key = usr.usr_key and usr.usr_login =upper('prashanth.vuduthala@oracle.com') ;


select distinct parent_entity_key entity_key,  parent_application entity_display_name from apsoim.appr_mod_master_v ;

select UD_ICUS_USR_PASSWORD,UD_ICUS_USR_CONFIRMPASSWORD from UD_ICUS_USR;

53D7FA007C09C8E9E050F30A748448B6

select * from ud_app_usr where upper(ud_app_usr_userid)='STEVE.JACOB@ORACLE.COM';
update ud_app_usr  set ud_app_usr_orclguid='53D7FA007C09C8E9E050F30A748448B6',ud_app_usr_org_dn='986~L=AMER,DC=ORACLE,DC=COM'  where upper(ud_app_usr_userid)='STEVE.JACOB@ORACLE.COM' and ud_app_usr_key=7701796;


select * from ent_processed where id in (483121,483122,483123,483124,483125,483126,483127,483128,483129,483130,483131,483132,483133,483134,483135,483136,483137,483138); 


select * from ud_kalt_u;
select * from ud_cptm_u;


select * from IDCS_GROUP_APPROVERS where processed_status is null;
select * from IDCS_GROUP_APPROVERS where processed_status !='COMPLETE';

SELECT DISTINCT APPR.APPROVER_ID FROM APSOIM.IDCS_GROUP_APPROVERS APPR, APSOIM.ENT_APPROVERS_PROCESSED ENTAPPR,
APSOIM.IDCS_APP_GROUPS GRP WHERE APPR.GROUP_KEY=GRP.GROUP_KEY AND APPR.ACTION='ADD' 
 AND GRP.PROCESSED_STATUS = 'COMPLETE' 
AND GRP.GROUP_DN=ENTAPPR.ENT_CODE AND APPR.APPROVAL_LEVEL=ENTAPPR.APPROVAL_LEVEL AND ENTAPPR.STATUS='COMPLETE'
;

select * from IDCS_GROUP_APPROVERS where group_key in (12,13);

select * from ENT_APPROVERS_PROCESSED where ENT_CODE in ('11df7c5cf3b545c2829e01d4aa760dd7','4261d5af582745ac85c350ba4047aa8e');

update oim_oat_menu set expiration_date=null where menu_label in (
   'IDCS Groups', 'Applications', 'Groups'
);
2979
select * from oim_oat_menu;
select * from OIM_OAT_MENU_ROLE_MAPINGS where menu_id in (1106);

select * from ugp where ugp_key in (2619,2939);

desc ACCESS_POLICY_ENT_LOAD;
SELECT * FROM apsoim.ROLE_LOAD;
SELECT * FROM apsoim.ACCESS_POLICY_LOAD;
SELECT * FROM apsoim.ACCESS_POLICY_ENT_LOAD;

select * from apsoim.ROLE_PROCESSED WHERE ROLE_NAME in ('Default-HRIT-JP-401K-Employee','Default-HRIT-JP-Commuting-Allowance-Employee','Default-HRIT-JP-Commuting-Allowance-Manager');
select * from apsoim.ACCESS_POLICY_PROCESSED WHERE ROLE_NAME in ('Default-HRIT-JP-401K-Employee','Default-HRIT-JP-Commuting-Allowance-Employee','Default-HRIT-JP-Commuting-Allowance-Manager');
select * from apsoim.ACCESS_POLICY_ENT_PROCESSED WHERE ROLE_NAME in ('Default-HRIT-JP-401K-Employee','Default-HRIT-JP-Commuting-Allowance-Employee','Default-HRIT-JP-Commuting-Allowance-Manager');
( ( Identity Status = "Active" ) AND ( User Type IN ["Employee","EMPLOYEE","employee","STUDENT","Student"] ) AND ( Country = "JP" ) AND ( Manager Flag = "1" ) )  
	
	

	 
insert into apsoim.ROLE_LOAD (ROLE_NAME,ROLE_DISPLAY_NAME,ROLE_DESCRIPTION,ROLE_CATEGORY,CREATION_DATE,SUPPORT_NOTES) 
values('Default-HRIT-JP-401K-Employee','Default-HRIT-JP-401K-Employee','HRIT Japan 401K Employee Contribution Tool','IDMITAccessPolicyRoles',sysdate,'SR#180806-001241');

insert into apsoim.ACCESS_POLICY_LOAD (ACCESS_POLICY_LOAD_ID,ROLE_NAME,APP_INSTANCE_NAME,ADDITIONAL_FORM_ATTRIBUTES,CREATION_DATE,SUPPORT_NOTES) 
values(ACCESS_POLICY_LOAD_SEQ.NEXTVAL,'Default-HRIT-JP-401K-Employee','HRITJapan401KEmployeeContributionTool',null,sysdate,'SR#180806-001241');
desc ACCESS_POLICY_LOAD;

insert into apsoim.ACCESS_POLICY_ENT_LOAD (ACCESS_POLICY_ENT_LOAD_ID,ROLE_NAME,APP_INSTANCE_NAME,LOOKUP_NAME,ENT_DISPLAY_NAME,ENT_DESCRIPTION,ENT_CODE,ACTION,CREATION_DATE,SUPPORT_NOTES) 
values(ACCESS_POLICY_ENT_LOAD_SEQ.NEXTVAL,'Default-HRIT-JP-401K-Employee','HRITJapan401KEmployeeContributionTool','Lookup.DBUM.Oracle.Privileges.APEX','HRIT JP 401K Employee','HRIT Japan 401K Employee Contribution Tool','15587~HRIT_JP401K_EMP','Add',sysdate,'SR#180806-001241');

select * from oim_support.user_accounts where usr_login in ('SIREESHA.JAVVAJI@ORACLE.COM','NANDEESHWARI.KALYANI@ORACLE.COM') and ost_status in ('Provisioned','Enabled','Disabled')
order by app_instance_display_name
;
select * from oim_support.user_ent where usr_login in ('SIREESHA.JAVVAJI@ORACLE.COM','NANDEESHWARI.KALYANI@ORACLE.COM')

 and ent_status in ('Provisioned')
order by ent_display_name
;
;

select * from UD_ICSU_USR;
select UD_ICUS_USR_PASSWORD, UD_ICUS_USR_PWD_UPDATE, UD_IC_USR_EMAIL from UD_ICUS_USR ud, oiu where ud.orc_key=oiu.orc_key and oiu_key = 14231785;


select * from ud_icus_usr;
SELECT DISTINCT G.GROUP_DISPLAY_NAME,APP.APP_NAME,G.CREATED_BY FROM APSOIM.IDCS_APP_GROUPS G, APSOIM.IDCS_APPLICATIONS APP,
CATALOG C WHERE G.GROUP_DISPLAY_NAME=C.ENTITY_DISPLAY_NAME --AND (G.OWNER_NOTIFIED !=1 OR G.OWNER_NOTIFIED IS NULL) 
AND G.APPLICATION_KEY=APP.APPLICATION_KEY AND C.ENTITY_TYPE='Entitlement' 
AND G.GROUP_DN IS NOT NULL AND G.PROCESSED_STATUS='COMPLETE';



SELECT * FROM UD_APEX_U WHERE UD_APEX_U_USERNAME in ('TESTAHM.AHETESTAHM@ORACLE.COM','TESTAHZ.AHETESTAHZ@ORACLE.COM');

SELECT * FROM UD_APEX_p where orc_key in (6237220,
6237219,
6237217,
6237218)
;
select usr_key, usr_status from usr where usr_login in ('TESTAHM.AHETESTAHM@ORACLE.COM','TESTAHZ.AHETESTAHZ@ORACLE.COM');


update user_provisioning_attrs set policy_eval_needed = 1 ,policy_eval_in_progress =0 ,update_date=sysdate where

usr_key in (749790);

select * from ud_slak_usr where request_key=14133176;

    "userName": "tshibata",
    "nickName": "tshibata",
    "name": {
        "givenName": "Tsukasa",
        "familyName": "Shibata"
    },
    "displayName": "TSHIBATA",
    "profileUrl": "https://oracle.enterprise.slack.com/team/tshibata",
----
select * from ud_evsc_u;
-----------
select * from ud_hpta_usr;

desc ud_hpta_grp;
select * from ud_opcp_usr;
---update ud_hpta_usr set ud_hpta_usr_orclguid='780E8F8109D6B2C7E050C10A18942112' where orc_key =17498730;
select usr_email,usr_first_name,usr_last_name,usr_display_name from usr where usr_login in ('ASHISH.A.SINHA@ORACLE.COM', 'CARLA.BOTTENFIELD@ORACLE.COM', 'CHENG-LU.LIN@ORACLE.COM', 'CHRIS.MUIR@ORACLE.COM', 'DHARMENDRA.DH.KUMAR@ORACLE.COM', 'GRAEME.MAWSON@ORACLE.COM', 'JOHN.JACOB@ORACLE.COM', 'JOHN.SAVORY@ORACLE.COM', 'KRISTY.LEE@ORACLE.COM', 'PHILIP.NETTO@ORACLE.COM', 'RAVI.KALESH@ORACLE.COM', 'SANJAYA.PRADHAN@ORACLE.COM', 'YU-CHEN.TAI@ORACLE.COM');

----------   CSA VPN Account
select * from UD_BMCV_USR order by orc_key desc;
select * from UD_BMCV_USR where UD_BMCV_USR_gecos in ('PRAVEEN.S.SINGH@ORACLE.COM','CANDI.SUTTER@ORACLE.COM');

-------OCIS

Select * from ud_ocis_u  order by orc_key desc;
Select * from ud_ocis_p;

update ud_ocis_u set ud_ocis_u_role='21447~'||ud_ocis_u_role where request_key in (20608460, 20608461, 20608462, 20608471, 20608463, 20608464, 20608465, 20608362, 20608466, 20608473, 20608487, 20608488, 20608489, 20608490, 20608491, 20608476, 20608492, 20608477, 20608493, 20608494, 20608496, 20608479, 20608497, 20608498, 20608499, 20608480, 20608500);

Select ud_ocis_u_username from ud_ocis_u where ud_ocis_u_username not in ('ANDY.PIERCE@ORACLE.COM', 'BRUCE.NOWJACK@ORACLE.COM', 'PURVI.SARAIYA@ORACLE.COM', 'RHEA.FRONDOZO@ORACLE.COM','PRASHANTH.VUDUTHALA@ORACLE.COM');

Select * from ud_ocis_u where request_key = 634951;

update ud_ocis_u set ud_ocis_u_role = '14109~Viewer' where orc_key=7443454;

----------------

select * from ud_gbua_usr
where request_key in (15532924);

update ud_gbua_usr set ud_gbua_usr_public_key ='AAAAB3NzaC1yc2EAAAABJQAAAQEAnfUWmSB6D0b13babJ6JxGgHNvxa/Pw/GhVbO5EG5EKfucEg1kTfCYYI/D0mkGvPpsatvs34L+Cdf8+MN890nHtAdWXCfjTxL3gYFYdPRzAEJUA4QhDhG/DoO0tmUWL2MpzQ6OVJzODKXLtTHlN50VEIMqPC6CI5vggkOzWk82OZNue+U1wsPNWRKCD9i2MLpJ0fjfD7sdTduzap6g9w/6C60g8V85/lRdeheRq3sToKswp41AozCV8LEHBJUT4yEqGiN90WgxIOwfeZ4PQeWulng83AXW91qioZXKrZVaLDMFiFGgHtLBxFsltbGfM33mGKmQC/dtXux/FmoLmzEyw==' where request_key in (15532924);




select usr_login from usr where usr_login in ('ABHILASH.KALA@ORACLE.COM', 'ABHINAV.X.KUMAR@ORACLE.COM', 'ABRAHAM.FAERSTEIN@ORACLE.COM', 'ADIL.X.AKHUNJI@ORACLE.COM', 'ADRIANA.CHIROMATZO@ORACLE.COM', 'AI.YAMAOKA@ORACLE.COM', 'AJIT.VASISTA@ORACLE.COM', 'AKSHAYA.MURTHY@ORACLE.COM', 'ALDRIN.VIEGAS@ORACLE.COM', 'ALEJANDRA.SCOWEN@ORACLE.COM', 'ALEJANDRO.MORA@ORACLE.COM', 'ALEXANDRA.DULGHERU@ORACLE.COM', 'ALEXANDRA.MOISE@ORACLE.COM', 'ALEXANDRU.DINESCU@ORACLE.COM', 'ALINA.MANEA@ORACLE.COM', 'ALYONA.A.DOUBROVINA@ORACLE.COM', 'AMBER.LASHLEY@ORACLE.COM', 'AMIT.RA.GUPTA@ORACLE.COM', 'AMIT.S.GUPTA@ORACLE.COM', 'AMY.CRAWLEY@ORACLE.COM', 'ANA-MARIA.CATRINA@ORACLE.COM', 'ANA.MARIA.HORVAT@ORACLE.COM', 'ANAMARIA.STEFANESCU.MEREI@ORACLE.COM', 'ANAND.KOTHARI@ORACLE.COM', 'ANAND.UV@ORACLE.COM', 'ANCA.TOMA@ORACLE.COM', 'ANDERS.RENDTORFF@ORACLE.COM', 'ANDRAS.GYENE@ORACLE.COM', 'ANDREEA.BANARU@ORACLE.COM', 'ANDREI.SEMEN@ORACLE.COM', 'ANDREW.ELLIOTT@ORACLE.COM', 'ANDREW.P.JOHNSON@ORACLE.COM', 'ANDREW.R.HANSEN@ORACLE.COM', 'ANDY.SCUTT@ORACLE.COM', 'ANIL.BILLAPATI@ORACLE.COM', 'ANNA.DORIGATTI@ORACLE.COM', 'ANNE.ELOI.BLEZES@ORACLE.COM', 'ANNE.THERIAULT@ORACLE.COM', 'ANSHU.S.SHRIVASTAVA@ORACLE.COM', 'ANTONY.PRAVEEN@ORACLE.COM', 'APOORVA.KUMARI@ORACLE.COM', 'ARAVINDAN.V@ORACLE.COM', 'ARJUN.T@ORACLE.COM', 'ARPITHA.SURYAPRAKASH@ORACLE.COM', 'ARUN.GOVINDARAJU@ORACLE.COM', 'ARYA.VAZHAMPATTA@ORACLE.COM', 'ATTILA.VASSY@ORACLE.COM', 'AUSTIN.STODDARD@ORACLE.COM', 'BARBARA.BOYER@ORACLE.COM', 'BASHA.SAYED@ORACLE.COM', 'BEN.DE.MORA@ORACLE.COM', 'BERNARDO.MEJIA@ORACLE.COM', 'BHARATH.SOMISETTY@ORACLE.COM', 'BIJAN.HAGHIGHI@ORACLE.COM', 'BILL.LO@ORACLE.COM', 'BOB.WILLEFORD@ORACLE.COM', 'BOGDAN.B.IONITA@ORACLE.COM', 'BRAD.COATES@ORACLE.COM', 'BRADLEY.STROSSMAN@ORACLE.COM', 'BRANO.MODROVSKY@ORACLE.COM', 'BRET.FRASER@ORACLE.COM', 'BRIAN.CRANE@ORACLE.COM', 'BRIAN.VELTMAN@ORACLE.COM', 'BRUNO.BORGES@ORACLE.COM', 'BRYAN.BURR@ORACLE.COM', 'CAMERON.CUTHBERT@ORACLE.COM', 'CARLOEMANUELE.CAVO@ORACLE.COM', 'CARROLL.BROWN@ORACLE.COM', 'CATH.DUKES@ORACLE.COM', 'CATHERINE.BUI@ORACLE.COM', 'CATHERINE.GUNN@ORACLE.COM', 'CHAD.MEADOWS@ORACLE.COM', 'CHANDRAKALA.L@ORACLE.COM', 'CHARAN.HC@ORACLE.COM', 'CHINNA.SANNABALAPPA@ORACLE.COM', 'CHOY-YOKE.CHAN@ORACLE.COM', 'CHRISTINE.LARSEN@ORACLE.COM', 'CHUNLAI.PEI@ORACLE.COM', 'CLAIRE.FARRELL@ORACLE.COM', 'CLARE.ROACH@ORACLE.COM', 'CONOR.GLEESON@ORACLE.COM', 'CONSTANTIN.CONDRITCHI@ORACLE.COM', 'CORA.PARKER@ORACLE.COM', 'COREY.KANON@ORACLE.COM', 'CORNELIA.ALDEA@ORACLE.COM', 'CRISTIAN.TARAU@ORACLE.COM', 'CRISTINA.POSTOLACHE@ORACLE.COM', 'CRISTINA.TEODOR@ORACLE.COM', 'DANIEL.L.TEIXEIRA@ORACLE.COM', 'DANIEL.PAVELIUC@ORACLE.COM', 'DANIELA.BADESCU@ORACLE.COM', 'DANIELA.OANCEA@ORACLE.COM', 'DANIELLA.PADRON@ORACLE.COM', 'DANNA.DAVIS@ORACLE.COM', 'DAPO.OSOBA@ORACLE.COM', 'DARRIEN.STARLING@ORACLE.COM', 'DARRIN.WILLIAMS@ORACLE.COM', 'DAVE.VANDENBERG@ORACLE.COM', 'DAVID.MALICH@ORACLE.COM', 'DAVID.SYLVESTER@ORACLE.COM', 'DAVID.ZAHALAN@ORACLE.COM', 'DEBANUJ.CHAKRABARTY@ORACLE.COM', 'DEEPAK.RAJANNA@ORACLE.COM', 'DELLA.D.DSOUZA@ORACLE.COM', 'DENISE.LAMONICA@ORACLE.COM', 'DIANA.ANDREEA.DINA@ORACLE.COM', 'DIANA.GRAY@ORACLE.COM', 'DINA.ORTIZ@ORACLE.COM', 'DINA.SCHUMAKER@ORACLE.COM', 'DIVYESH.SHAH@ORACLE.COM', 'DJAMEL.MANSOURI@ORACLE.COM', 'DOMINIC.QUAZI@ORACLE.COM', 'DYLAN.CHENG@ORACLE.COM', 'EDUARDO.PIZARRO@ORACLE.COM', 'EIJIRO.TAKI@ORACLE.COM', 'EIRA.HELLING@ORACLE.COM', 'ELENA.ONESTI@ORACLE.COM', 'ELENI.PEZA@ORACLE.COM', 'ELIZABETH.LOPEZ@ORACLE.COM', 'ELLE.SANPEDRO@ORACLE.COM', 'ELLEN.GROOT@ORACLE.COM', 'ELOISA.VEGA@ORACLE.COM', 'EOIN.KING@ORACLE.COM', 'ERIC.STEPHENS@ORACLE.COM', 'ERICA.YAN@ORACLE.COM', 'ERICK.TOVAR@ORACLE.COM', 'EUGENE.IMURA@ORACLE.COM', 'FAYAS.MK@ORACLE.COM', 'FELIPE.B.BARBOSA@ORACLE.COM', 'FELIPE.MALDONADO@ORACLE.COM', 'FLORIAN.SCHLECHT@ORACLE.COM', 'FLORIN.STOICESCU@ORACLE.COM', 'FRANCIS.CHANG@ORACLE.COM', 'FRED.COOK@ORACLE.COM', 'FUMIKO.ISHII@ORACLE.COM', 'FUMIKO.RYUHO@ORACLE.COM', 'GAURAV.J.KUMAR@ORACLE.COM', 'GEETANJALI.RANE@ORACLE.COM', 'GEORGETA.CEORNEI@ORACLE.COM', 'GEORGIANA.DRAGHICI@ORACLE.COM', 'GEORGIANA.VOICU@ORACLE.COM', 'GEOVANA.BONEF@ORACLE.COM', 'GERALD.SOO@ORACLE.COM', 'GERMAN.ESCUELA.YEPEZ@ORACLE.COM', 'GOUTAM.PATRA@ORACLE.COM', 'GOVINDAN.AK.MENON@ORACLE.COM', 'GRACEMARIE.THAMES@ORACLE.COM', 'GREG.STACHNICK@ORACLE.COM', 'GURUPRASAD.DEVADIGA@ORACLE.COM', 'H.HYEYOUNG.KIM@ORACLE.COM', 'HARINI.SRINIVAS@ORACLE.COM', 'HARSHINI.PRAVINKUMAR@ORACLE.COM', 'HEATHER.CAMPBELL@ORACLE.COM', 'HEATHER.LUCK@ORACLE.COM', 'HEBATALLAH.SAID@ORACLE.COM', 'HELEN.REILLY@ORACLE.COM', 'HIRAM.VENIAR@ORACLE.COM', 'HUMA.QADRI@ORACLE.COM', 'INDHU.SETHUMADHAVAN@ORACLE.COM', 'INGE.BORGMANN@ORACLE.COM', 'ION.CRISTIAN@ORACLE.COM', 'IRYNA.RICKER@ORACLE.COM', 'ISABELLE.CHELFAOUI@ORACLE.COM', 'IULIAN.PIPOIU@ORACLE.COM', 'JACK.BERKOWITZ@ORACLE.COM', 'JACOB.AGUILAR@ORACLE.COM', 'JAMES.OHALLORAN@ORACLE.COM', 'JATIN.KAUSHIK@ORACLE.COM', 'JAY.S.BELUR@ORACLE.COM', 'JAYASHREE.T@ORACLE.COM', 'JEAN-FRANCOIS.TESSIER@ORACLE.COM', 'JEFFREY.RICHARDSON@ORACLE.COM', 'JEFFRY.DAVIS@ORACLE.COM', 'JENNA.BANKS@ORACLE.COM', 'JENNIFER.CLIFFORD@ORACLE.COM', 'JENNIFER.ZOLLNER@ORACLE.COM', 'JESSE.MOTA@ORACLE.COM', 'JESSE.PETERSON@ORACLE.COM', 'JESUS.GARZA@ORACLE.COM', 'JIAYI.YANG@ORACLE.COM', 'JILL.BURROUGHS@ORACLE.COM', 'JIM.BEARNS@ORACLE.COM', 'JINYU.WANG@ORACLE.COM', 'JOANNE.COLANGELO@ORACLE.COM', 'JOAO.VASCONCELLOS@ORACLE.COM', 'JOHN.HADDOW@ORACLE.COM', 'JOHN.IMERZEL@ORACLE.COM', 'JOHN.J.BROWN@ORACLE.COM', 'JORGE.CRUZ@ORACLE.COM', 'JOSEPH.PREGENT@ORACLE.COM', 'JOSHUA.GOULD@ORACLE.COM', 'JUAN.MANUEL.BELMONTE.GARCIA@ORACLE.COM', 'JULIAN.MACKEY@ORACLE.COM', 'JULIE.HEATH@ORACLE.COM', 'JULIE.LIERMAN@ORACLE.COM', 'JYOTHI.GANGADHAR@ORACLE.COM', 'KADIRI.MADHU.SUDHAN@ORACLE.COM', 'KAMAKSHI.NATARAJAN@ORACLE.COM', 'KAREN.BITRAN@ORACLE.COM', 'KAREN.MOLINA@ORACLE.COM', 'KAREN.MURRAY@ORACLE.COM', 'KARIN.BAI@ORACLE.COM', 'KASHINATH.MELINAMANI@ORACLE.COM', 'KATHIRESAN.SIVAJI@ORACLE.COM', 'KATIE.HARPER@ORACLE.COM', 'KEERTHANA.RAVINDRAN@ORACLE.COM', 'KELVIN.LAI@ORACLE.COM', 'KEVIN.FAULKNER@ORACLE.COM', 'KEVIN.MANN@ORACLE.COM', 'KIRSTEN.ERNST@ORACLE.COM', 'KOMAL.KUMAR.VENKATESH@ORACLE.COM', 'KRISHAN.K.KUMAR@ORACLE.COM', 'KRISHNA.SONAR@ORACLE.COM', 'LACHLAN.WILLIAMS@ORACLE.COM', 'LARRY.CALLAGHAN@ORACLE.COM', 'LATEEF.ABDUL@ORACLE.COM', 'LAURA.BOUFFORD@ORACLE.COM', 'LAURA.PANAIT@ORACLE.COM', 'LAURA.SANDU@ORACLE.COM', 'LAVANYA.SILIVERI@ORACLE.COM', 'LAWRENCE.CLARK@ORACLE.COM', 'LEN.WOLFENSTEIN@ORACLE.COM', 'LENNIX.WHITEHEAD@ORACLE.COM', 'LIANA.LARUE@ORACLE.COM', 'LIGIA.MARTINI@ORACLE.COM', 'LILIANA.A.ACUNA@ORACLE.COM', 'LIMMY.LEE@ORACLE.COM', 'LOGAN.DOBBS@ORACLE.COM', 'LOIS.PRICE@ORACLE.COM', 'LORAINE.CAULFIELD@ORACLE.COM', 'LUCIA.X.MANGOVA@ORACLE.COM', 'MADOKA.OGAWA@ORACLE.COM', 'MANOJ.KUMAR.SINGH@ORACLE.COM', 'MARCO.LANDRY@ORACLE.COM', 'MARCOS.PINHEIRO@ORACLE.COM', 'MARIANA.GALVAN@ORACLE.COM', 'MARIANA.SANDU@ORACLE.COM', 'MARIE-CHRISTINE.DEBAUCHE@ORACLE.COM', 'MARK.CAVAGE@ORACLE.COM', 'MARK.KELLY@ORACLE.COM', 'MARTIN.TULIK@ORACLE.COM', 'MARYANN.BIANCO-PFEIFFER@ORACLE.COM', 'MATHEW.LOWE@ORACLE.COM', 'MATTHEW.TAFOYA@ORACLE.COM', 'MAURICIO.GOEZ@ORACLE.COM', 'MAXIM.VAVELSCHI@ORACLE.COM', 'MAY.CHAU@ORACLE.COM', 'MEIHUA.LI@ORACLE.COM', 'MEIK.LANGWALD@ORACLE.COM', 'MESHENCHU.RENGMA@ORACLE.COM', 'MIHAI.L.IORDACHE@ORACLE.COM', 'MIKE.COLLIN@ORACLE.COM', 'MINAL.SATAM@ORACLE.COM', 'MOHAMMAD.JAMIL@ORACLE.COM', 'MOHAMMAD.SOHAIL@ORACLE.COM', 'MOUSHMI.BANERJEE@ORACLE.COM', 'MUNTAZ.ALI@ORACLE.COM', 'NAGAVALLI.PATABALLA@ORACLE.COM', 'NARENDRA.GADIPALLI@ORACLE.COM', 'NATALIA.POIATA@ORACLE.COM', 'NAVEEN.MANDAKKI@ORACLE.COM', 'NEERAJ.GU.GUPTA@ORACLE.COM', 'NEERAJ.OBERAI@ORACLE.COM', 'NICOL.TILLBROOK@ORACLE.COM', 'NICOLAE.PUSOIU@ORACLE.COM', 'NICOLAS.SCHILLING@ORACLE.COM', 'NIKHIL.CHOPRA@ORACLE.COM', 'NITHIN.RAJ@ORACLE.COM', 'NIVEDITHA.DINAKAR@ORACLE.COM', 'NOELIA.VICO@ORACLE.COM', 'OLGA.RUMELIOTI@ORACLE.COM', 'OLIVIER.BOSSAERT@ORACLE.COM', 'PARTHA.X.MAJUMDAR@ORACLE.COM', 'PARVEZ.K.KHAN@ORACLE.COM', 'PATRICK.VANDESCHEUR@ORACLE.COM', 'PAUL.HIGHAM@ORACLE.COM', 'PAUL.LONG@ORACLE.COM', 'PAUL.MACURA@ORACLE.COM', 'PEDRO.BAEZ.BUSTILLO@ORACLE.COM', 'PETER.S.LI@ORACLE.COM', 'PETER.VASILENKO@ORACLE.COM', 'PETER.ZAREMBA@ORACLE.COM', 'PETRU.ELENA@ORACLE.COM', 'PHIL.JONES@ORACLE.COM', 'PHILOMENA.OGBAH@ORACLE.COM', 'PRADEEP.SIRIKI@ORACLE.COM', 'PRAJANI.KC@ORACLE.COM', 'PRAKASHA.MS@ORACLE.COM', 'PRASAD.PARIGI@ORACLE.COM', 'PRATHAMESH.ASKAR@ORACLE.COM', 'PRIYALEKSHMI.S@ORACLE.COM', 'PRIYANKA.VAIBHAV@ORACLE.COM', 'PUSHPA.YADAV@ORACLE.COM', 'RAAGHUL.KRISHNAKUMAR@ORACLE.COM', 'RAHUL.K.PATEL@ORACLE.COM', 'RAJEEV.BHATIA@ORACLE.COM', 'RAJESH.CHOWDARY.BODDULURI@ORACLE.COM', 'RAJESH.RAMU@ORACLE.COM', 'RALUCA.IORGA@ORACLE.COM', 'RALUCA.MITROI@ORACLE.COM', 'RAMI.ELNASSER@ORACLE.COM', 'RAMKANNAN.SETHURAM@ORACLE.COM', 'RAMMOHAN.KAKKUZHI@ORACLE.COM', 'RAMONA.GIUREA@ORACLE.COM', 'RAMYA.R.REDDY@ORACLE.COM', 'RANDHEER.SINGH@ORACLE.COM', 'RANI.URBAS@ORACLE.COM', 'RANJEEV.CHOPRA@ORACLE.COM', 'RATNA.SRIVASTAVA@ORACLE.COM', 'RAVI.KELEGIRI@ORACLE.COM', 'RAY.ALLEN.HOU@ORACLE.COM', 'RAZVAN.MANOLE@ORACLE.COM', 'REINIER.MOUTON@ORACLE.COM', 'RESHMI.KURUP@ORACLE.COM', 'ROB.M.ADAMS@ORACLE.COM', 'ROB.WALD@ORACLE.COM', 'ROBERT.E.ROPER@ORACLE.COM', 'ROBERTA.PERONI@ORACLE.COM', 'RODRIGO.OYARZUN.GUTIERREZ@ORACLE.COM', 'ROGER.GILMARTIN@ORACLE.COM', 'ROMULO.B.ETCHEBEHERE@ORACLE.COM', 'ROSHAN.SHERIGAR@ORACLE.COM', 'ROSHNI.PANIGRAHI@ORACLE.COM', 'ROXANA.ANICAI@ORACLE.COM', 'ROXANA.VANHALA@ORACLE.COM', 'RUDOLF.PAUL@ORACLE.COM', 'RUI.MIRANDA@ORACLE.COM', 'RYAN.PRENDERGAST@ORACLE.COM', 'SACHIN.KAMAIAH@ORACLE.COM', 'SADHANA.VERMA@ORACLE.COM', 'SAI.ABHISHEK@ORACLE.COM', 'SAISANDEEP.YELCHURI@ORACLE.COM', 'SALLY.PIAO@ORACLE.COM', 'SAMEER.KHETARPAL@ORACLE.COM', 'SAMUEL.STEVEN.TWINAM@ORACLE.COM', 'SANDEEP.SA.GUPTA@ORACLE.COM', 'SANDEEP.X.SOOD@ORACLE.COM', 'SANDRA.SIU@ORACLE.COM', 'SANTOSH.MAVANOOR@ORACLE.COM', 'SANTOSH.SHETGAR@ORACLE.COM', 'SAQEEB.KHAN@ORACLE.COM', 'SARANYA.RANGDALA@ORACLE.COM', 'SARAWAK.NGUYEN@ORACLE.COM', 'SEANGEAN.WEE@ORACLE.COM', 'SHAILAJA.BASAVA@ORACLE.COM', 'SHANN.RYAN@ORACLE.COM', 'SHARAD.SINHA@ORACLE.COM', 'SHARION.WEI@ORACLE.COM', 'SHARON.HOLFORD@ORACLE.COM', 'SHARON.L.LIU@ORACLE.COM', 'SHASHANK.PANDEY@ORACLE.COM', 'SHIVA.M.KUMAR@ORACLE.COM', 'SHIVAPRASAD.BP@ORACLE.COM', 'SHRUTHI.UMESH@ORACLE.COM', 'SHUBHAM.PATEL@ORACLE.COM', 'SHUNJI.ZHENG@ORACLE.COM', 'SIEWFONG.LIEW@ORACLE.COM', 'SIMO.MACUT@ORACLE.COM', 'SKIP.MOREHEAD@ORACLE.COM', 'SMITHA.X.RAO@ORACLE.COM', 'SMRITHI.RAJ.PULI@ORACLE.COM', 'SONNY.WILLIS@ORACLE.COM', 'SOPHIA.QIU@ORACLE.COM', 'SORA.MUROFUSHI@ORACLE.COM', 'SOWMYA.KUMARASWAMY@ORACLE.COM', 'SREENIVASASARMA.NEMANI@ORACLE.COM', 'SRINIVAS.GANNAVARAM@ORACLE.COM', 'SRINIVAS.PENUMUCHU@ORACLE.COM', 'SRIVIDYA.PAROLAMADAM.HARIHARA@ORACLE.COM', 'STEPHANI.RUNYAN@ORACLE.COM', 'STEVE.S.MARTIN@ORACLE.COM', 'STEVEN.JANCZY@ORACLE.COM', 'SUBHADEEP.X.SENGUPTA@ORACLE.COM', 'SUBHRAJIT.PURKAYASTHA@ORACLE.COM', 'SUDHANSHU.KUMAR@ORACLE.COM', 'SUDHEER.VALLUMCHETLA@ORACLE.COM', 'SUJATA.SHAH@ORACLE.COM', 'SUMANA.KAMATH@ORACLE.COM', 'SUMY.PAULRAJ@ORACLE.COM', 'SUPRIYA.THAKUR@ORACLE.COM', 'SURESH.X.SHANKAR@ORACLE.COM', 'SUSAN.BREWSTER@ORACLE.COM', 'SUSANNA.WILLERT@ORACLE.COM', 'SUSHREE.SUPKAR@ORACLE.COM', 'SVENJA.WILKEN@ORACLE.COM', 'TABREZ.AHMAD@ORACLE.COM', 'TANAY.BAWEJA@ORACLE.COM', 'TAPAS.SAMAL@ORACLE.COM', 'TARIQUE.HABIBULLAH@ORACLE.COM', 'TAUSEEF.HUSAIN@ORACLE.COM', 'TERRY.WICKS@ORACLE.COM', 'THERESA.RUGGIERI@ORACLE.COM', 'TIBOR.BARANOVIC@ORACLE.COM', 'TIM.MCCANDLESS@ORACLE.COM', 'TJ.BOYD@ORACLE.COM', 'TNC.RAVI@ORACLE.COM', 'TODD.THOMPSON@ORACLE.COM', 'TOM.BRYDGES@ORACLE.COM', 'TRENT.DESPAIN@ORACLE.COM', 'TROY.FRAZIER@ORACLE.COM', 'UJJAL.ROY@ORACLE.COM', 'UMAKANT.KODMUR@ORACLE.COM', 'UNNI.KONGOT@ORACLE.COM', 'V.SAMPATHKUMAR@ORACLE.COM', 'VENKAT.RAJ@ORACLE.COM', 'VENU.INDANA@ORACLE.COM', 'VICKY.PASENKO@ORACLE.COM', 'VIDYADHAR.T.R@ORACLE.COM', 'VIJAY.K@ORACLE.COM', 'VIJAYALAKSHMI.NAGANARASIMHA@ORACLE.COM', 'VIKTOR.HOMOLKA@ORACLE.COM', 'VIKTORIA.HONIGH@ORACLE.COM', 'VIMMY.TULSIYAN@ORACLE.COM', 'VIVEK.C.SINGH@ORACLE.COM', 'WALTER.KERSZULIS@ORACLE.COM', 'WENDY.AO@ORACLE.COM', 'WENDY.MCGARRY@ORACLE.COM', 'WES.BARNES@ORACLE.COM', 'WESTON.MAY@ORACLE.COM', 'WILLIAM.SCHUMANN@ORACLE.COM', 'WILLIAM.SIMPSON@ORACLE.COM', 'WILLIE.VU@ORACLE.COM', 'WINIFRED.SONG@ORACLE.COM', 'WOLFGANG.LEY@ORACLE.COM', 'YASUHIRO.KITAHAMA@ORACLE.COM', 'YEDIDA.AKKAYYA.RAJU@ORACLE.COM', 'YING.CICI.WANG@ORACLE.COM', 'YIYI.PAN@ORACLE.COM', 'YOSUKE.ARAI@ORACLE.COM', 'YURIKO.OKA@ORACLE.COM', 'YUXUAN.WANG@ORACLE.COM', 'ZACHARY.DAVIDSON@ORACLE.COM')

minus 
select usr_login from usr where usr_login in ('ANSHU.S.SHRIVASTAVA@ORACLE.COM', 'AMIT.S.GUPTA@ORACLE.COM', 'KASHINATH.MELINAMANI@ORACLE.COM', 'SUPRIYA.THAKUR@ORACLE.COM', 'HEATHER.LUCK@ORACLE.COM', 'SOWMYA.KUMARASWAMY@ORACLE.COM', 'CHARAN.HC@ORACLE.COM', 'TROY.FRAZIER@ORACLE.COM', 'GEORGETA.CEORNEI@ORACLE.COM', 'ERICA.YAN@ORACLE.COM', 'KEVIN.MANN@ORACLE.COM', 'NAGAVALLI.PATABALLA@ORACLE.COM', 'ROSHAN.SHERIGAR@ORACLE.COM', 'ROMULO.B.ETCHEBEHERE@ORACLE.COM', 'ISABELLE.CHELFAOUI@ORACLE.COM', 'RYAN.PRENDERGAST@ORACLE.COM', 'LOGAN.DOBBS@ORACLE.COM', 'HUMA.QADRI@ORACLE.COM', 'HARSHINI.PRAVINKUMAR@ORACLE.COM', 'DYLAN.CHENG@ORACLE.COM', 'PETER.ZAREMBA@ORACLE.COM', 'RUI.MIRANDA@ORACLE.COM', 'RANDHEER.SINGH@ORACLE.COM', 'VIJAY.K@ORACLE.COM', 'ALINA.MANEA@ORACLE.COM', 'OLIVIER.BOSSAERT@ORACLE.COM', 'SHARON.L.LIU@ORACLE.COM', 'NARENDRA.GADIPALLI@ORACLE.COM', 'ROB.M.ADAMS@ORACLE.COM', 'TJ.BOYD@ORACLE.COM', 'OLGA.RUMELIOTI@ORACLE.COM', 'PAUL.HIGHAM@ORACLE.COM', 'NEERAJ.OBERAI@ORACLE.COM', 'DEBANUJ.CHAKRABARTY@ORACLE.COM', 'DENISE.LAMONICA@ORACLE.COM', 'SVENJA.WILKEN@ORACLE.COM', 'BARBARA.BOYER@ORACLE.COM', 'SHASHANK.PANDEY@ORACLE.COM', 'SUSAN.BREWSTER@ORACLE.COM', 'RALUCA.IORGA@ORACLE.COM', 'EDUARDO.PIZARRO@ORACLE.COM', 'CATH.DUKES@ORACLE.COM', 'IULIAN.PIPOIU@ORACLE.COM', 'ARAVINDAN.V@ORACLE.COM', 'SAQEEB.KHAN@ORACLE.COM', 'JATIN.KAUSHIK@ORACLE.COM', 'FELIPE.MALDONADO@ORACLE.COM', 'TOM.BRYDGES@ORACLE.COM', 'PETER.VASILENKO@ORACLE.COM', 'MIKE.COLLIN@ORACLE.COM', 'ANNE.ELOI.BLEZES@ORACLE.COM', 'GEORGIANA.VOICU@ORACLE.COM', 'JULIAN.MACKEY@ORACLE.COM', 'KATHIRESAN.SIVAJI@ORACLE.COM', 'INDHU.SETHUMADHAVAN@ORACLE.COM', 'HARINI.SRINIVAS@ORACLE.COM', 'AMIT.RA.GUPTA@ORACLE.COM', 'TERRY.WICKS@ORACLE.COM', 'CHAD.MEADOWS@ORACLE.COM', 'JOHN.HADDOW@ORACLE.COM', 'SARANYA.RANGDALA@ORACLE.COM', 'VIJAYALAKSHMI.NAGANARASIMHA@ORACLE.COM', 'GEOVANA.BONEF@ORACLE.COM', 'SANTOSH.MAVANOOR@ORACLE.COM', 'SANDRA.SIU@ORACLE.COM', 'JESSE.MOTA@ORACLE.COM', 'ANNA.DORIGATTI@ORACLE.COM', 'HIRAM.VENIAR@ORACLE.COM', 'KIRSTEN.ERNST@ORACLE.COM', 'SHUBHAM.PATEL@ORACLE.COM', 'SHIVA.M.KUMAR@ORACLE.COM', 'RAMI.ELNASSER@ORACLE.COM', 'STEVE.S.MARTIN@ORACLE.COM', 'DARRIEN.STARLING@ORACLE.COM', 'CHRISTINE.LARSEN@ORACLE.COM', 'KELVIN.LAI@ORACLE.COM', 'SUSANNA.WILLERT@ORACLE.COM', 'ANA.MARIA.HORVAT@ORACLE.COM', 'PAUL.LONG@ORACLE.COM', 'SUMANA.KAMATH@ORACLE.COM', 'LAURA.PANAIT@ORACLE.COM', 'V.SAMPATHKUMAR@ORACLE.COM', 'AMBER.LASHLEY@ORACLE.COM', 'FUMIKO.RYUHO@ORACLE.COM', 'SHARON.HOLFORD@ORACLE.COM', 'COREY.KANON@ORACLE.COM', 'DANIELLA.PADRON@ORACLE.COM', 'LIANA.LARUE@ORACLE.COM', 'ANAMARIA.STEFANESCU.MEREI@ORACLE.COM', 'KAMAKSHI.NATARAJAN@ORACLE.COM', 'ANDRAS.GYENE@ORACLE.COM', 'KOMAL.KUMAR.VENKATESH@ORACLE.COM', 'SAISANDEEP.YELCHURI@ORACLE.COM', 'SANDEEP.SA.GUPTA@ORACLE.COM', 'SRINIVAS.PENUMUCHU@ORACLE.COM', 'CONOR.GLEESON@ORACLE.COM', 'STEPHANI.RUNYAN@ORACLE.COM', 'UMAKANT.KODMUR@ORACLE.COM', 'KRISHAN.K.KUMAR@ORACLE.COM', 'ROXANA.VANHALA@ORACLE.COM', 'LATEEF.ABDUL@ORACLE.COM', 'SACHIN.KAMAIAH@ORACLE.COM', 'ALEXANDRU.DINESCU@ORACLE.COM', 'WENDY.AO@ORACLE.COM', 'LENNIX.WHITEHEAD@ORACLE.COM', 'BERNARDO.MEJIA@ORACLE.COM', 'JYOTHI.GANGADHAR@ORACLE.COM', 'LIMMY.LEE@ORACLE.COM', 'SHAILAJA.BASAVA@ORACLE.COM', 'NICOL.TILLBROOK@ORACLE.COM', 'JULIE.HEATH@ORACLE.COM', 'JACOB.AGUILAR@ORACLE.COM', 'JORGE.CRUZ@ORACLE.COM', 'SIMO.MACUT@ORACLE.COM', 'CRISTINA.TEODOR@ORACLE.COM', 'PRATHAMESH.ASKAR@ORACLE.COM', 'PARTHA.X.MAJUMDAR@ORACLE.COM', 'UJJAL.ROY@ORACLE.COM', 'SHANN.RYAN@ORACLE.COM', 'MARYANN.BIANCO-PFEIFFER@ORACLE.COM', 'ANDREW.P.JOHNSON@ORACLE.COM', 'IRYNA.RICKER@ORACLE.COM', 'RANI.URBAS@ORACLE.COM', 'CHINNA.SANNABALAPPA@ORACLE.COM', 'ANTONY.PRAVEEN@ORACLE.COM', 'CLARE.ROACH@ORACLE.COM');

select * from UD_MCSP_U where request_key in (15856259);
select distinct app_instance_display_name, app_instance_name, app_instance_key, itresource_key, svr_name from catalog c, app_instance app, svr where entity_name like '%EMERGENCY_ACCESS%' and is_requestable = 1 and is_deleted = 0 and app.app_instance_key = c.parent_entity_key and nvl(app_instance_is_soft_delete, 0) = 0 and svr.svr_key = itresource_key
;

select * from ud_IDCS_usr where orc_key in ();
select * from ud_IDCS_usr where request_key in (11061808);

select * from ud_IDCS_usr where ud_idcs_usr_username in ('ANTHONY.MASLOWSKI@ORACLE.COM', 'ARAVINDA.PALAKSHACHAR@ORACLE.COM', 'ARAVINDA.PALAKSHACHAR@ORACLE.COM', 'ARRUN.RAVI.KALLIPATTY.NATARAJ@ORACLE.COM', 'CHAITANYA.SHAMARAO@ORACLE.COM', 'CHRIS.PROUDFOOT@ORACLE.COM', 'DINESHKUMAR.VANCHINATHAN@ORACLE.COM', 'ELIZABETH.KENDALL@ORACLE.COM', 'GALVIN.DEE@ORACLE.COM', 'GERARDO.M.MENDOZA@ORACLE.COM', 'JANE.SHEN@ORACLE.COM', 'KAMAL.GILL@ORACLE.COM', 'KENDRA.MILLER@ORACLE.COM', 'KEVIN.NG@ORACLE.COM', 'KRISHNAMOORTHY.SWAMYNATHAN@ORACLE.COM', 'MADHU.DUDDUKUNTA@ORACLE.COM', 'MANI.KRISHNA.RAYAPROLU@ORACLE.COM', 'NADIA.CATONE@ORACLE.COM', 'NAGASANDEEP.REDDY.POOLA@ORACLE.COM', 'NANDA.KAMINENI@ORACLE.COM', 'RAJASEKHAR.UNDRAKONDA@ORACLE.COM', 'RAJKUMAR.RAJENDRAN@ORACLE.COM', 'RICARDO.E.ACOSTA@ORACLE.COM', 'SAURABH.Y.JAIN@ORACLE.COM', 'SHIV.K.GARG@ORACLE.COM', 'SURESH.MANAMPILLY@ORACLE.COM', 'THOMAS.THOMAS@ORACLE.COM', 'VENKAT.RAMANATHAN@ORACLE.COM', 'VINAY.RAMANNA@ORACLE.COM', 'WEE-LIN.SIM@ORACLE.COM')
and ud_IDCS_usr_server=12948
;
select * from svr where svr_key=12948;
select * from ud_IDCS_ugp order by ud_IDCS_ugp_key desc;

select PROD_OIM.ud_IDCS_ugp_seq.NEXTVAL from dual;

insert into ud_IDCS_ugp
select PROD_OIM.ud_IDCS_ugp_seq.NEXTVAL, ud.orc_key,null,1, sysdate,1,sysdate,EMPTY_CLOB(),'0000000000000000',
null,0,null,null,ud_idcs_usr_key, '12948~54a22f6ba33e447bb28f1bc06f1c67c7' ,'SR#190221-000157',null,null
from  usr u, oiu o, ost ost, ud_IDCS_usr ud
where upper(usr_login)=upper(ud.ud_IDCS_usr_username)
and ud.ud_IDCS_usr_username in ('ANTHONY.MASLOWSKI@ORACLE.COM', 'ARAVINDA.PALAKSHACHAR@ORACLE.COM', 'ARAVINDA.PALAKSHACHAR@ORACLE.COM', 'ARRUN.RAVI.KALLIPATTY.NATARAJ@ORACLE.COM', 'CHAITANYA.SHAMARAO@ORACLE.COM', 'CHRIS.PROUDFOOT@ORACLE.COM', 'DINESHKUMAR.VANCHINATHAN@ORACLE.COM', 'ELIZABETH.KENDALL@ORACLE.COM', 'GALVIN.DEE@ORACLE.COM', 'GERARDO.M.MENDOZA@ORACLE.COM', 'JANE.SHEN@ORACLE.COM', 'KAMAL.GILL@ORACLE.COM', 'KENDRA.MILLER@ORACLE.COM', 'KEVIN.NG@ORACLE.COM', 'KRISHNAMOORTHY.SWAMYNATHAN@ORACLE.COM', 'MADHU.DUDDUKUNTA@ORACLE.COM', 'MANI.KRISHNA.RAYAPROLU@ORACLE.COM', 'NADIA.CATONE@ORACLE.COM', 'NAGASANDEEP.REDDY.POOLA@ORACLE.COM', 'NANDA.KAMINENI@ORACLE.COM', 'RAJASEKHAR.UNDRAKONDA@ORACLE.COM', 'RAJKUMAR.RAJENDRAN@ORACLE.COM', 'RICARDO.E.ACOSTA@ORACLE.COM', 'SAURABH.Y.JAIN@ORACLE.COM', 'SHIV.K.GARG@ORACLE.COM', 'SURESH.MANAMPILLY@ORACLE.COM', 'THOMAS.THOMAS@ORACLE.COM', 'VENKAT.RAMANATHAN@ORACLE.COM', 'VINAY.RAMANNA@ORACLE.COM', 'WEE-LIN.SIM@ORACLE.COM')
and o.usr_key=u.usr_key
and ost.ost_key=o.ost_key
and ost_status in ('Enabled','Provisioned')
and ud.orc_key=o.orc_key
and o.app_instance_key=12271;


---------UD_GLDM_U GMA - Global Deal Management

select * from UD_GLDM_U where request_key =16906957;
update  UD_GLDM_U set UD_GLDM_U_supportnotes=UD_GLDM_U_supportnotes||'SR#190115-000123' where request_key =16906957;

----------------


select * from ud_CDCS_usr where  request_key =16770968;
select * from ud_CDCS_grp where  orc_key =17790643;
update ud_CDCS_grp set ud_CDCS_grp_supportnotes=ud_CDCS_grp_supportnotes||'SR#190211-000911' where  request_key =16887849;
select * from ud_CDCS_usr where  orc_key =17713254;


select * from ud_zoom_usr where  request_key =18168233;

---OCI AD OCA

select * from UD_OCAUSER where UD_OCAUSER_email ='pradeep.tumula@oracle.com';
select * from UD_OCAUSER where UD_OCAUSER_email in ('pradeep.tumula@oracle.com','russ.lowell@oracle.com');

select * from UD_OCAUSRC where orc_key =15486330;
select * from UD_OCAUSRC where request_key =15486330;


---OCIT AD OCIT
desc UD_OCITUSER;

desc ud_ssoa_usr;

select * from UD_OCITUSER where request_key =15486330;
select * from UD_OCITUSER where request_key =772647;


update ud_CDCS_usr set ud_CDCS_usr_orclguid ='712B436E84DDB78DE050C10A19946DDD' where  request_key =14405937;
update ud_CDCS_usr set ud_CDCS_usr_orclguid ='712B436E84DDB78DE050C10A19946DDD' where  orc_key =17713254;


SELECT osi.request_key,OSI.ORC_KEY,sch.sch_key,   mil.mil_name,   SCH.SCH_STATUS,   OSI.OSI_ASSIGNED_DATE ,  SCH.SCH_DATA,  AI.APP_INSTANCE_DISPLAY_NAME,  usr.usr_login,  subm.usr_login,  subm.usr_display_name, usr.usr_key, oiu.oiu_key, mil.mil_key
FROM prod_oim.osi,   prod_oim.sch,   prod_oim.mil,   prod_oim.OIU OIU ,   prod_oim.app_instance ai,  prod_oim.usr usr,  prod_oim.usr subm
WHERE osi.sch_key = sch.sch_key AND sch.SCH_CREATEBY =subm.usr_key AND OSI.MIL_KEY = MIL.MIL_KEY AND OIU.ORC_KEY  =OSI.ORC_KEY AND AI.APP_INSTANCE_KEY =OIU.APP_INSTANCE_KEY AND OIU.USR_KEY  =USR.USR_KEY
and app_instance_display_name = 'Global Enterprise Cloud - Production' and sch.sch_status='R'  and mil_name ='Add Privilege or Grant'
and osi.osi_child_table_key not in (select ud_ecfx_p_key from ud_ecfx_p i where i.orc_key = oiu.orc_key);


update sch set sch_status = 'X' where sch_status = 'R'  and sch_key in (
SELECT sch.sch_key
FROM prod_oim.osi,   prod_oim.sch,   prod_oim.mil,   prod_oim.OIU OIU ,   prod_oim.app_instance ai,  prod_oim.usr usr,  prod_oim.usr subm
WHERE osi.sch_key = sch.sch_key AND sch.SCH_CREATEBY =subm.usr_key AND OSI.MIL_KEY = MIL.MIL_KEY AND OIU.ORC_KEY  =OSI.ORC_KEY AND AI.APP_INSTANCE_KEY =OIU.APP_INSTANCE_KEY AND OIU.USR_KEY  =USR.USR_KEY
and app_instance_display_name = 'Global Enterprise Cloud - Production' and sch.sch_status='R'  and mil_name ='Add Privilege or Grant'
and osi.osi_child_table_key not in (select ud_ecfx_p_key from ud_ecfx_p i where i.orc_key = oiu.orc_key));


SELECT sch.sch_key
FROM prod_oim.osi,   prod_oim.sch,   prod_oim.mil,   prod_oim.OIU OIU ,   prod_oim.app_instance ai,  prod_oim.usr usr,  prod_oim.usr subm
WHERE osi.sch_key = sch.sch_key AND sch.SCH_CREATEBY =subm.usr_key AND OSI.MIL_KEY = MIL.MIL_KEY AND OIU.ORC_KEY  =OSI.ORC_KEY AND AI.APP_INSTANCE_KEY =OIU.APP_INSTANCE_KEY AND OIU.USR_KEY  =USR.USR_KEY
and app_instance_display_name = 'Global Enterprise Cloud - Production' and sch.sch_status='X'  and mil_name ='Add Privilege or Grant'
and osi.osi_child_table_key not in (select ud_ecfx_p_key from ud_ecfx_p i where i.orc_key = oiu.orc_key);


SELECT osi.request_key,OSI.ORC_KEY,sch.sch_key,   mil.mil_name,   SCH.SCH_STATUS,   OSI.OSI_ASSIGNED_DATE ,  SCH.SCH_DATA,  AI.APP_INSTANCE_DISPLAY_NAME,  usr.usr_login,  subm.usr_login,  subm.usr_display_name, usr.usr_key, oiu.oiu_key, mil.mil_key
FROM prod_oim.osi,   prod_oim.sch,   prod_oim.mil,   prod_oim.OIU OIU ,   prod_oim.app_instance ai,  prod_oim.usr usr,  prod_oim.usr subm
WHERE osi.sch_key = sch.sch_key AND sch.SCH_CREATEBY =subm.usr_key AND OSI.MIL_KEY = MIL.MIL_KEY AND OIU.ORC_KEY  =OSI.ORC_KEY AND AI.APP_INSTANCE_KEY =OIU.APP_INSTANCE_KEY AND OIU.USR_KEY  =USR.USR_KEY
and app_instance_display_name = 'Global Enterprise Cloud - Production'
and OSI_ASSIGNED_DATE > sysdate-30
and usr.usr_status='Active'
and sch.sch_status='R'  and mil_name ='Add Privilege or Grant' and osi.request_key is null
and osi.osi_child_table_key in (select ud_ecfx_p_key from ud_ecfx_p i where i.orc_key = oiu.orc_key);

select u.usr_login,u.usr_status from oim_support.users_to_evaluate e, usr u where u.usr_key=e.usr_key and u.usr_status='Disabled' ;
select * from oim_support.users_to_evaluate ;
delete from oim_support.users_to_evaluate where usr_login='PRASHANT.K.SINGH@ORACLE.COM';

update USER_PROVISIONING_ATTRS set policy_eval_needed =1 , policy_eval_in_progress=0 where usr_key in (select usr_key from oim_support.users_to_evaluate) and policy_eval_needed=0;




SELECT osi.request_key,OSI.ORC_KEY,sch.sch_key,   mil.mil_name,   SCH.SCH_STATUS,   OSI.OSI_ASSIGNED_DATE ,  SCH.SCH_DATA,  AI.APP_INSTANCE_DISPLAY_NAME,  usr.usr_login,  subm.usr_login,  subm.usr_display_name, usr.usr_key, oiu.oiu_key, mil.mil_key
FROM prod_oim.osi,   prod_oim.sch,   prod_oim.mil,   prod_oim.OIU OIU ,   prod_oim.app_instance ai,  prod_oim.usr usr,  prod_oim.usr subm
WHERE osi.sch_key = sch.sch_key AND sch.SCH_CREATEBY =subm.usr_key AND OSI.MIL_KEY = MIL.MIL_KEY AND OIU.ORC_KEY  =OSI.ORC_KEY AND AI.APP_INSTANCE_KEY =OIU.APP_INSTANCE_KEY AND OIU.USR_KEY  =USR.USR_KEY
and app_instance_display_name = 'Global Enterprise Cloud - Production' and sch.sch_status='R'  and mil_name ='Add Privilege or Grant'
and osi.osi_child_table_key not in (select ud_ecfx_p_key from ud_ecfx_p i where i.orc_key = oiu.orc_key);

Select * from ud_FAPS_p_temp;

select * from ud_FAPS_U_temp;

select * from ud_FAPS_U;

select * from ud_faps_u where ud_faps_u_itresource=13467;


select * from  ud_ocis_u order by orc_key desc;


select * from oiu where orc_key in ();


select usr_login from usr where usr_login in ('ALYSSA.NEWELL@ORACLE.COM', 'AMANDA.CAMPBELL-GATELY@ORACLE.COM', 'ANALUISA.GOMEZ@ORACLE.COM', 'ANDREW.KENNEDY@ORACLE.COM', 'ANGELA.CHOU@ORACLE.COM', 'ANNA.HUNTER@ORACLE.COM', 'ASHLEY.SOMERS@ORACLE.COM', 'BRIANNE.BRASWELL@ORACLE.COM', 'CARLA.DILEO@ORACLE.COM', 'CRAIG.CHASEN@ORACLE.COM', 'DANIELA.CASTRO@ORACLE.COM', 'DENNIS.FITZGERALD@ORACLE.COM', 'DIEGO.CASTANEDA@ORACLE.COM', 'DINEO.RAMMALA@ORACLE.COM', 'DINESH.V.SHETTY@ORACLE.COM', 'DONALD.ELLIS@ORACLE.COM', 'HIROYUKI.HIRAYAMA@ORACLE.COM', 'JACK.BRAY@ORACLE.COM', 'JAMES.KEESE@ORACLE.COM', 'JARED.STAFKEY@ORACLE.COM', 'JEFFREY.COX@ORACLE.COM', 'JESSICA.STENGER@ORACLE.COM', 'JULIE.PATON@ORACLE.COM', 'KAREN.ADDEZIO@ORACLE.COM', 'KATHERINE.MEREDITH@ORACLE.COM', 'KATHLEEN.LAWRENCE@ORACLE.COM', 'KATIE.KOMUNJAR@ORACLE.COM', 'KEVIN.BLAKLEY@ORACLE.COM', 'KRISTINA.CEGLA@ORACLE.COM', 'LARA.DECRISTOFARO@ORACLE.COM', 'LEIGHANE.CREWSE@ORACLE.COM', 'LISA.ADLAO@ORACLE.COM', 'MARK.X.BENNETT@ORACLE.COM', 'MARTIN.Z.RODRIGUEZ@ORACLE.COM', 'MINNETTE.DEW@ORACLE.COM', 'NOMONDE.MAHLANGU@ORACLE.COM', 'PRADEEP.VATS@ORACLE.COM', 'RANDY.HARRELL@ORACLE.COM', 'RUI.BRANCO@ORACLE.COM', 'SHANMUKHESH.KARIMICHITTY@ORACLE.COM', 'SHIRA.GALAM@ORACLE.COM', 'TARA.HARWELL@ORACLE.COM', 'TAREK.DORGHAM@ORACLE.COM')
minus
select usr_login from usr where usr_login in ('ALYSSA.NEWELL@ORACLE.COM', 'AMANDA.CAMPBELL-GATELY@ORACLE.COM', 'ANDREW.KENNEDY@ORACLE.COM', 'ANGELA.CHOU@ORACLE.COM', 'ASHLEY.SOMERS@ORACLE.COM', 'BRIANNE.BRASWELL@ORACLE.COM', 'CRAIG.CHASEN@ORACLE.COM', 'DENNIS.FITZGERALD@ORACLE.COM', 'DINEO.RAMMALA@ORACLE.COM', 'DINESH.V.SHETTY@ORACLE.COM', 'DONALD.ELLIS@ORACLE.COM', 'HIROYUKI.HIRAYAMA@ORACLE.COM', 'JACK.BRAY@ORACLE.COM', 'JARED.STAFKEY@ORACLE.COM', 'JEFFREY.COX@ORACLE.COM', 'JULIE.PATON@ORACLE.COM', 'KATHERINE.MEREDITH@ORACLE.COM', 'KATIE.KOMUNJAR@ORACLE.COM', 'KEVIN.BLAKLEY@ORACLE.COM', 'KRISTINA.CEGLA@ORACLE.COM', 'LARA.DECRISTOFARO@ORACLE.COM', 'LISA.ADLAO@ORACLE.COM', 'MARK.X.BENNETT@ORACLE.COM', 'MARTIN.Z.RODRIGUEZ@ORACLE.COM', 'MINNETTE.DEW@ORACLE.COM', 'NOMONDE.MAHLANGU@ORACLE.COM', 'PRADEEP.VATS@ORACLE.COM', 'RANDY.HARRELL@ORACLE.COM', 'SHANMUKHESH.KARIMICHITTY@ORACLE.COM', 'SHIRA.GALAM@ORACLE.COM', 'TARA.HARWELL@ORACLE.COM', 'TAREK.DORGHAM@ORACLE.COM')

;

update  ud_pu_users set ud_pu_users_supportnotes=ud_pu_users_supportnotes||'SR#190125-000293'
where orc_key in (12186437, 11460759, 10928757, 11791444, 11460551, 13684896, 11711057, 11460579, 13651423, 10928765, 11460607, 10928599, 10928579, 11460592, 11460525, 11460626, 14887376, 13526769, 11240012, 11460642, 15217959, 10928483, 11460846, 13656804, 14274974, 11460471, 13307531, 14197851, 11460588, 11685884, 15834683, 14088485)
;

select distinct app_instance_display_name, app_instance_name, app_instance_key, itresource_key, svr_name, app_instance_display_name
as label, app_instance_key as value 
from catalog c, app_instance app, svr where entity_name like '%EMERGENCY_ACCESS%' 
and is_requestable = 1 and is_deleted = 0 and app.app_instance_key = c.parent_entity_key 
and nvl(app_instance_is_soft_delete, 0) = 0 and svr.svr_key = itresource_key;

select * from apsoim.oim_bg_setup_mapping WHERE EXPIRATION_DATE IS NULL;

update apsoim.oim_bg_setup_mapping set lookup_name='Lookup.OID.Group.CSIM' WHERE EXPIRATION_DATE IS NULL and mapping_id=5;



insert into apsoim.oim_bg_setup_mapping values
(5,12515,'EMCS','userbgaccount.bg.oracle.com',sysdate,null,null,null,null,null,'Lookup.IDIT.temp.Groups');

select * from apsoim.oim_bg_setup_approvers WHERE EXPIRATION_DATE IS NULL order by APPROVAL_LEVEL;

insert into apsoim.oim_bg_setup_approvers values (12515,1,'MGR',null,sysdate,0,null,null,null,null);
insert into apsoim.oim_bg_setup_approvers values (12515,2,'EMPLOYEE','OLUWASEYI.LAWAL@ORACLE.COM',sysdate,0,null,null,null,null);
insert into apsoim.oim_bg_setup_approvers values (12515,2,'EMPLOYEE','SRINIVASAN.DAYALAN@ORACLE.COM',sysdate,0,null,null,null,null);
insert into apsoim.oim_bg_setup_approvers values (12515,2,'EMPLOYEE','EVAN.BAUER@ORACLE.COM',sysdate,0,null,null,null,null);
insert into apsoim.oim_bg_setup_approvers values (12515,2,'EMPLOYEE','MARK.LOOS@ORACLE.COM',sysdate,0,null,null,null,null);

select * from ud_eoci_usr;
select * from ud_eoci_rol;
select * from ud_eoci_sud;
desc ud_eoci_usr;

update ud_eoci_usr set ud_eoci_usr_nsuniqueid='8b5ed981-6caa11e9-80a7c040-97fdd228' where orc_key=7327008;

desc APP_INSTANCE;

desc ud_nsit_usr;


select * from ud_app_usr where upper(UD_APP_USR_USERID) ='NATALIE.LANDA@ORACLE.COM' and UD_APP_USR_SERVER= '986';

select * from rrl order by rrl_key desc;
select * from RRE where rrl_key= 8132;	;

delete  from RRE where rrl_key= 8114;
delete from rrl where rrl_key= 8114;


-------EOF
