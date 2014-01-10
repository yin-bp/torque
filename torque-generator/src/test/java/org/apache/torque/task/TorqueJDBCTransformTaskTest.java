/*
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
 * <p>Title: Testtorquejdbctransform.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2008</p>
 * @Date 2010-1-26 下午06:29:21
 * @author biaoping.yin
 * @version 1.0
 */
public class TorqueJDBCTransformTaskTest
{
    /**
     * 导出数据库
     */
    @Test
    public void testDerby()
    {
        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        
        t.setDbDriver("org.apache.derby.jdbc.EmbeddedDriver");
        t.setDbUrl("jdbc:derby:F:/opensource/db/derby/databases/seconddb");
        t.setOutputFile("torque-test/schema/derbyseconddb.xml");
//        t.setDbSchema("AMQ");
      //FIXME 表相关的唯一索引没有导出
        t.execute();
      
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
    public void testOracle()
    {
        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        t.setDbDriver("oracle.jdbc.driver.OracleDriver");
        t.setDbUrl("jdbc:oracle:thin:@//172.16.25.219:1521/orcl");
        t.setOutputFile("torque-test/schema/esbFile.xml");
        t.setDbPassword("esb");
        t.setDbUser("esb");        
        t.setDbSchema("esb");
        t.setIncludeTables(new String[]{});
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
    
    @Test
    public void testmysql()
    {
        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        t.setDbDriver("com.mysql.jdbc.Driver");
        t.setDbUrl("jdbc:mysql://172.16.25.153:3306/cimalerm");
        t.setOutputFile("torque-test/schema/cim_alerm.xml");
        t.setDbPassword("123456");
        t.setDbUser("root");        
//        t.setDbSchema("AMQ");
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
    
    public static void main(String[] args)
    {
        System.out.println("'20m'".equals("'20m'"));
    }
}
