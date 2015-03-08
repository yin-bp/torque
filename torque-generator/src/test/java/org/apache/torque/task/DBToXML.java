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
 * @Date 2012-9-29 下午3:12:55
 * @author biaoping.yin
 * @version 1.0
 */
public class DBToXML {
	 @Test
	    public void testoracle()
	    {
	        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
	        t.setDbDriver("oracle.jdbc.driver.OracleDriver");
	        t.setDbUrl("jdbc:oracle:thin:@//10.0.15.51:1521/orcl");
	        t.setOutputFile("torque-test/schema/sany-log.xml");
	        t.setDbPassword("testpdp");
	        t.setDbUser("testpdp");   
	        t.setDbSchema("testpdp".toUpperCase());
//	        t.setIncludeTables(new String[]{"TD_WF_USER_SUBSCRIBE","td_wf_app","td_wf_node_changeinfo","td_wf_entrust_task"});
	        t.setIncludeTables(new String[]{"TD_WF_APP_PIC"});
//	        t.setDbSchema("AMQ");
	        t.execute();
	        
	      //FIXME 表相关的唯一索引没有导出
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
