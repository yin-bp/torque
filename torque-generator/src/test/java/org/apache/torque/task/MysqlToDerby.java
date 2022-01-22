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

import java.io.File;

import org.apache.tools.ant.Project;
import org.apache.torque.task.TorqueSQLExec.OnError;
import org.junit.Test;

/**
 * <p>Title: MysqlToDerby.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2008</p>
 * @Date 2010-5-21 下午02:30:49
 * @author biaoping.yin
 * @version 1.0
 */
public class MysqlToDerby
{
    /**
     * 第一步 导出mysql数据库的脚本xml文件
     */
    @Test
    public void testmysql()
    {
        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        t.setDbDriver("com.mysql.cj.jdbc.Driver");
        t.setDbUrl("jdbc:mysql://localhost:3306/cim");
        t.setOutputFile("torque-test/schema/sany-mms.xml");
        t.setDbPassword("123456");
        t.setDbUser("root");   
        t.setIncludeTables(new String[]{"TD_MMS_"});
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
    
    @Test
    public void testoracle()
    {
        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        t.setDbDriver("oracle.jdbc.driver.OracleDriver");
        t.setDbUrl("jdbc:oracle:thin:@//10.0.6.201:1521/UGDATA");
        t.setOutputFile("torque-test/schema/sany-mms.xml");
        t.setDbPassword("sanyMMS");
        t.setDbUser("sanyMMS");   
        t.setDbSchema("sanyMMS".toUpperCase());
        t.setIncludeTables(new String[]{"TD_MMS_"});
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
    
    /**
     * 第二步 创建数据库表脚本的方法
     * 
     * @throws Exception
     */
    @Test
    public void testcimmysqltoderby() 
    {
        TorqueSQLTask task = new TorqueSQLTask();
        /**
         * <torque-sql
      contextProperties="${torque.contextProperties}"
      controlTemplate="${torque.template.sql}"
      idTableXMLFile="${torque.idTableXMLFile}"
      outputDirectory="${torque.sql.dir}"
      outputFile="report.${torque.project}.sql.generation"
      sqldbmap="${torque.sql.dir}/sqldb.map"
      targetDatabase="${torque.database}"
      useClasspath="${torque.useClasspath}">
      <fileset dir="${torque.schema.dir}"
        includes="${torque.schema.sql.includes}"
        excludes="${torque.schema.sql.excludes}"
      />
    </torque-sql>
         */
//        task.setContextProperties("D:\\workspace\\torque\\torque4\\torque-generator\\src\\conf\\build.properties");
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setControlTemplate("sql/base/Control.vm");
        task.setUseClasspath(false);
//        task.setIdTableXMLFile("D:\\workspace\\torque\\torque4\\torque-generator/src/schema/id-table-schema.xml");
        task.setOutputDirectory(new File("torque-test/sql-mysql-cim"));
        task.setOutputFile("test.sql.generation");
        task.setTargetDatabase("derby");
        try
        {
            task.setTemplatePath("templates");
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        task.setXmlFile("torque-test/schema/mysqloutputFile-cim.xml");
        task.execute();
    }
    
    /**
     * 第三步，在derby数据库上执行数据库建表脚本
     */
    @Test
    public void testExecuteSqlInDerby()
    {
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
        task.setSqlDbMap("torque-test/sql-mysql-cim/sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("torque-test/sql-mysql-cim");
        task.setUrl("jdbc:derby:D:\\workspace\\creatorcim\\install\\agent\\bin\\database\\cimdb");
        task.setUserid("");
        task.setPassword("");
        task.execute();    
    }
    
    /**
     * 创建数据库的脚本
     */
    @Test
    public void testMysqltoderby()
    {
        TorqueDataModelTask task = new TorqueDataModelTask();
        /**
         *  <torque-data-model
      controlTemplate="${torque.template.sqlDbInit}"
      outputDirectory="${torque.sql.dir}"
      outputFile="create-db.sql"
      targetDatabase="${torque.database}"
      templatePath="${torque.templatePath}"
      useClasspath="${torque.useClasspath}">
      <fileset dir="${torque.schema.dir}"
        includes="${torque.schema.create-db.includes}"
        excludes="${torque.schema.create-db.excludes}"
      />
    </torque-data-model>

    <echo>
      Executing the create-db.sql script ...
    </echo>

    <sql
      autocommit="true"
      driver="${torque.database.driver}"
      onerror="continue"
      password="${torque.database.password}"
      src="${torque.sql.dir}/create-db.sql"
      url="${torque.database.createUrl}"
      userid="${torque.database.user}">
      <classpath refid="torque-classpath"/>
    </sql>
         */
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setControlTemplate("sql/db-init/Control.vm");
        task.setOutputDirectory(new File("torque-test/sql"));
        task.setOutputFile("createcim-derbydb.sql");
        task.setTargetDatabase("oracle");
//        task.settOutputDirectory(new File("torque-temp/sql"));
        task.setXmlFile("D:\\workspace\\torque\\torque4\\torque-generator\\torque-test\\schema\\mysqloutputFile-cim.xml");
        task.setUseClasspath(true);
        task.execute();
        
    }
    
    public static void main(String args[])
    {
        MysqlToDerby instance = new MysqlToDerby();
        instance.testmysql();
        instance.testcimmysqltoderby();
        instance.testExecuteSqlInDerby();
        
    }
}
