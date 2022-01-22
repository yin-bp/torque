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

import java.io.FileNotFoundException;

import org.apache.tools.ant.Project;
import org.apache.torque.task.TorqueSQLExec.OnError;
import org.junit.Test;

/**
 * <p>Title: TorqueSQLExecTest.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2008</p>
 * @Date 2010-1-27 下午03:05:20
 * @author biaoping.yin
 * @version 1.0
 */
public class TorqueSQLExecTest
{
	
	@Test
    public void testMysql() throws FileNotFoundException
    {
//        System.setOut(new java.io.PrintStream("d:/out.log"));
//        System.setErr(new java.io.PrintStream("d:/error.log"));
        TorqueSQLExec task = new TorqueSQLExec();
        /**
         * <target
    name="insert-sql"
    description="==> inserts the generated sql ">

    <torque-sql-exec
      autocommit="true"
      driver="${torque.database.driver}"
      onerror="continue"
      password="${torque.database.password}"
      sqldbmap="${torque.sql.dir}/sqldb.map"
      srcDir="${torque.sql.dir}"
      url="${torque.database.buildUrl}"
      userid="${torque.database.user}">
      <classpath refid="torque-classpath"/>
    </torque-sql-exec>
  </target>
         */
        
        task.setAutocommit(true);
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setDriver("com.mysql.cj.jdbc.Driver");
        OnError action = new OnError();
        action.setValue(action.CONTINUE);
        task.setOnerror(action);
        task.setSqlDbMap("torque-test\\sql-mysql\\sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("torque-test\\sql-mysql");
        task.setUrl("jdbc:mysql://localhost:3306/firstdb");
        task.setUserid("root");
        task.setPassword("");
        task.execute();
        
    }
	
	@Test
    public void testOracle() throws FileNotFoundException
    {
//        System.setOut(new java.io.PrintStream("d:/out.log"));
//        System.setErr(new java.io.PrintStream("d:/error.log"));
        TorqueSQLExec task = new TorqueSQLExec();
        /**
         * <target
    name="insert-sql"
    description="==> inserts the generated sql ">

    <torque-sql-exec
      autocommit="true"
      driver="${torque.database.driver}"
      onerror="continue"
      password="${torque.database.password}"
      sqldbmap="${torque.sql.dir}/sqldb.map"
      srcDir="${torque.sql.dir}"
      url="${torque.database.buildUrl}"
      userid="${torque.database.user}">
      <classpath refid="torque-classpath"/>
    </torque-sql-exec>
  </target>
         */
        
        task.setAutocommit(true);
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setDriver("oracle.jdbc.driver.OracleDriver");
        OnError action = new OnError();
        action.setValue(action.CONTINUE);
        task.setOnerror(action);
        task.setSqlDbMap("torque-test\\sql-oracle\\sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("torque-test\\sql-oracle");
        task.setUrl("jdbc:oracle:thin:@//172.16.17.219:1521/orcl");
        task.setUserid("firstdb");
        task.setPassword("firstdb");
        task.execute();
        
    }
    @Test
    public void testDerby() throws FileNotFoundException
    {
//        System.setOut(new java.io.PrintStream("d:/out.log"));
//        System.setErr(new java.io.PrintStream("d:/error.log"));
        TorqueSQLExec task = new TorqueSQLExec();
        /**
         * <target
    name="insert-sql"
    description="==> inserts the generated sql ">

    <torque-sql-exec
      autocommit="true"
      driver="${torque.database.driver}"
      onerror="continue"
      password="${torque.database.password}"
      sqldbmap="${torque.sql.dir}/sqldb.map"
      srcDir="${torque.sql.dir}"
      url="${torque.database.buildUrl}"
      userid="${torque.database.user}">
      <classpath refid="torque-classpath"/>
    </torque-sql-exec>
  </target>
         */
        
        task.setAutocommit(true);
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setDriver("org.apache.derby.jdbc.EmbeddedDriver");
        OnError action = new OnError();
        action.setValue(action.CONTINUE);
        task.setOnerror(action);
        task.setSqlDbMap("torque-test\\sql-derby\\sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("torque-test\\sql-derby");
        task.setUrl("jdbc:derby:F:/opensource/db/derby/databases/seconddb;create=true");
        task.setUserid("");
        task.setPassword("");
        task.execute();
        
    }
    
    
//    @Test
    public void testSQLInsert() throws FileNotFoundException
    {
//        System.setOut(new java.io.PrintStream("d:/out.log"));
//        System.setErr(new java.io.PrintStream("d:/error.log"));
        TorqueSQLExec task = new TorqueSQLExec();
        /**
         * <target
    name="insert-sql"
    description="==> inserts the generated sql ">

    <torque-sql-exec
      autocommit="true"
      driver="${torque.database.driver}"
      onerror="continue"
      password="${torque.database.password}"
      sqldbmap="${torque.sql.dir}/sqldb.map"
      srcDir="${torque.sql.dir}"
      url="${torque.database.buildUrl}"
      userid="${torque.database.user}">
      <classpath refid="torque-classpath"/>
    </torque-sql-exec>
  </target>
         */
        
        task.setAutocommit(true);
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        
        task.setDriver("org.apache.derby.jdbc.EmbeddedDriver");
        OnError action = new OnError();
        action.setValue(action.ABORT);
        task.setOnerror(action);
        task.setSqlDbMap("torque-test/datasql/sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("torque-test/datasql");
        task.setUrl("jdbc:derby:F:/opensource/db/derby/databases/seconddb;create=true");
        task.setUserid("");
        task.setPassword("");
        task.execute();        
    }
}
