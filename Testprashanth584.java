select app_instance_display_name||'#TASK#'||app_instance_name||'#TASK#'||svr_name from svr, app_instance ai , obj o
where ai.itresource_key = svr_key
and
object_key = o.obj_key
--and o.obj_name = 'APP Derived'
;

void read() throws Exception  {

			System.out.println(" Started at: " + Calendar.getInstance().getTime());
			String root = "E:/";
			String connInfoFile = root + "ConnectionInfo_run4.txt";
			String connInfoMissedFile = root + "ConnectionInfo_missed_run4.txt";
			ArrayList<String> names =  new ArrayList<String>();
			Map<String, String[]> svrToAppMap = new HashMap<String, String[]>();
			BufferedReader svrFile = new BufferedReader(new FileReader(new File(root + "SVRNames.txt")));
			String _t;
			while( ( _t = svrFile.readLine()) != null ) {
				names.add(_t.split("#TASK#")[0]);
				svrToAppMap.put(_t.split("#TASK#")[0], _t.split("#TASK#"));
			}
			try { svrFile.close(); 		} catch (Exception e) { }
			System.out.println("should read " + names.size() + " SVRs ..");
			final Map<String, HashMap<String, String>> map 		= Collections.synchronizedMap(new HashMap<String, HashMap<String, String>>());
			final Map<String, tcResultSet> svrRS 				= Collections.synchronizedMap(new HashMap<String, tcResultSet>());
			final Map<String, Integer> svrKeys 					= Collections.synchronizedMap(new HashMap<String, Integer>());
			long start = System.currentTimeMillis();
			final tcITResourceInstanceOperationsIntf itService =  getITResourceOps() ;
			PrintWriter pw = null, pwErr = null ;
			Set<Thread> readers = new HashSet<Thread>();
			Set<Thread> tcKeysThreads = new HashSet<Thread>();
			Set<Thread> tcResultSetThreads = new HashSet<Thread>();
			
			for(final String itResName: names) {
				Thread t1 = new Thread() {
					public void run() {
						try {
							Map<String, String> conditions = (new HashMap<String, String>());
							conditions.put("IT Resources.Name", itResName);
							tcResultSet rs = itService.findITResourceInstances(conditions);
							if(!rs.isEmpty()) {
								for(int i = 0; i < rs.getRowCount(); i++) {
									rs.goToRow(i);
									for(String s: rs.getColumnNames()) {
										if(s.equals("IT Resource.Key")) {
											svrKeys.put(itResName, (Integer.valueOf(rs.getStringValue(s))));
										}
									}
								}
							}
						} catch (Exception e) { }
					}
				};
				t1.start();
				tcKeysThreads.add(t1);
			}
			
			System.out.println();
			System.out.println(tcKeysThreads.size() + " [KEYS] fired");
			
			
			for(Thread _t1: tcKeysThreads)
				_t1.join();
			
			int _ctr = 0;
			for(final String itResName: names) {
				if(++_ctr %20 == 0 )
					System.out.println();

				System.out.print(_ctr + " ");
				Thread tt = new Thread() {
					public void run() {
						try {
							tcResultSet resultSet = itService.getITResourceInstanceParameters(svrKeys.get(itResName));
							svrRS.put(itResName, resultSet);
						} catch (Exception e) {
							// TODO: handle exception
						}
					}
				};
				tt.start();
				tcResultSetThreads.add(tt);
			}
			System.out.println();
			System.out.println(tcResultSetThreads.size() + " [RS] fired");
			
			
			for(Thread _tt: tcResultSetThreads) {
				_tt.join();
			}
			System.out.println("Completed! Reading SVRs ...");
			
			_ctr = 0;
			pw = new PrintWriter(new File(connInfoFile));
			pwErr = new PrintWriter(new File(connInfoMissedFile));
			
			
			for(final String itResName: svrRS.keySet()) {
				++_ctr;
				if(_ctr == 50) {
					Thread.sleep(1000);
				}
				final String svrNAme = itResName;
				try {
					Thread ss = new Thread() {
						public void run() {
							System.out.println(this + " is reading RS of: " + svrNAme);
							try {
								final tcResultSet resultSet = svrRS.get(itResName);
								if(!resultSet.isEmpty())
								{
									HashMap<String, String> kv = new HashMap<String, String>();
									for(int ctr = 0; ctr < resultSet.getRowCount(); ctr++)
									{
										resultSet.goToRow(ctr);
										String key = null, value = null;
										OUTER:
											for(String s: resultSet.getColumnNames())
											{
												if(s.equals("IT Resources Type Parameter.Name"))
													key = resultSet.getStringValue(s);

												if(s.equals("IT Resource.Parameter.Value"))
													value = resultSet.getStringValue(s);

												if(key != null && value != null)
													kv.put(key, value);
											}
										map.put(itResName, kv);
									}
								}
							} catch (Exception e) {
								System.out.println(">> " + e.getMessage());
								e.printStackTrace();
							}
						}
					};
					readers.add(ss);
					ss.start();
				} catch (Exception exc) {
					System.out.println(">>>> " + exc);
				}
			}
			System.out.println();
			System.out.println(tcResultSetThreads.size() + " [READERS] fired");
			for(Thread each: readers)
				each.join();
			System.out.println(map);
	}