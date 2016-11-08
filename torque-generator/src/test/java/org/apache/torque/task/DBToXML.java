/**
 *  Copyright 2008 biaoping.yin
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.  
 */
package org.apache.torque.task;

import org.junit.Test;

/**
 * <p> DBToXML.java</p>
 * <p> Description: </p>
 * <p> bboss workgroup </p>
 * <p> Copyright (c) 2009 </p>
 * 
 * @Date 2012-9-29 3:12:55
 * @author biaoping.yin
 * @version 1.0
 */
public class DBToXML {
	 @Test
	    public void testoracle()
	    {
	        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
	        t.setDbDriver("oracle.jdbc.driver.OracleDriver");
	        t.setDbUrl("jdbc:oracle:thin:@//10.0.14.213:1521/orcl");
	        t.setOutputFile("torque-test/schema/sany-log.xml");
	        t.setDbPassword("testpdp");
	        t.setDbUser("testpdp");   
	        t.setDbSchema("testpdp".toUpperCase());
//	        t.setIncludeTables(new String[]{"TD_WF_USER_SUBSCRIBE","td_wf_app","td_wf_node_changeinfo","td_wf_entrust_task"});
	        t.setIncludeTables(new String[]{"TD_WF_RUN_TASK","TD_COMMON_ORDER"});
//	        t.setDbSchema("AMQ");
	        t.execute();
	        
	      //FIXME
	        /**
	         * <torque-jdbc-transform
	      dbDriver="${torque.database.driver}"
	      dbPassword="${torque.database.password}"
	      dbSchema="${torque.database.schema}"
	      dbUrl="${torque.database.url}"
	      dbUser="${torque.database.user}"
	      outputFile="${torque.schema.dir}/schema.xml"
	      sameJavaName="${torque.sameJavaName}"
	    />
	         */
	    }
	 
	 
	 @Test
	    public void testmysql()
	    {
	        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
	        t.setDbDriver("com.mysql.jdbc.Driver");
	        t.setDbUrl("jdbc:mysql://localhost:3306/ecportal");
	        t.setOutputFile("torque-test/schema/ecportal.xml");
	        t.setDbPassword("123456");
	        t.setDbUser("root");   
	        t.setDbSchema("root".toUpperCase());
//	        t.setIncludeTables(new String[]{"TD_WF_USER_SUBSCRIBE","td_wf_app","td_wf_node_changeinfo","td_wf_entrust_task"});
	        t.setIncludeTables(new String[]{"tf_sys_menu",
							        		"tf_sys_role","tf_sys_user",
							        		"tf_sys_role_menu","tf_sys_user_menu",
							        		"tf_sys_user_role"});
//	        t.setDbSchema("AMQ");
	        t.execute();
	        
	      //FIXME
	        /**
	         * <torque-jdbc-transform
	      dbDriver="${torque.database.driver}"
	      dbPassword="${torque.database.password}"
	      dbSchema="${torque.database.schema}"
	      dbUrl="${torque.database.url}"
	      dbUser="${torque.database.user}"
	      outputFile="${torque.schema.dir}/schema.xml"
	      sameJavaName="${torque.sameJavaName}"
	    />
	         */
	    }
	 
	 public void testInitData()
	 {
		 
	 }
}
