package org.apache.torque.task;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;

import org.apache.tools.ant.Project;
import org.apache.torque.task.TorqueSQLExec.OnError;
import org.frameworkset.persitent.util.SQLUtil;
import org.frameworkset.spi.ApplicationContext;
import org.frameworkset.spi.assemble.Pro;
import org.frameworkset.spi.assemble.ProMap;
import org.junit.Test;

import com.frameworkset.common.poolman.DBUtil;

public class OracleToMysql {
	
	

	/**
     * 第一步 导出mysql数据库的脚本xml文件
	 * @throws Exception 
     */
    @Test
    public void testgenSYSschemafromoracle() throws Exception
    {
        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        t.setDbDriver("oracle.jdbc.driver.OracleDriver");
        t.setDbUrl("jdbc:oracle:thin:@//172.16.17.219:1521/orcl");
        t.setOutputFile("schema/sys.xml");
        t.setDbPassword("oracletomysql");
        t.setDbUser("oracletomysql");   
        //t.setIncludeTables(new String[]{"CIM_DATACACHE","business_params","cim_collect_strategy","cim_reg_lock","tableinfo"});
        t.setDbSchema("oracletomysql".toUpperCase());
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
     * 第一步 导出mysql数据库的脚本xml文件
	 * @throws Exception 
     */
    @Test
    public void testgenCIMschemafromoracle() throws Exception
    {
        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        t.setDbDriver("com.mysql.jdbc.Driver");
        t.setDbUrl("jdbc:mysql://172.16.17.216:3306/cimuser");
        t.setOutputFile("schema/cim.xml");
        
       
        t.setDbPassword("123456");
        t.setDbUser("root");   
        //t.setIncludeTables(new String[]{"CIM_DATACACHE","business_params","cim_collect_strategy","cim_reg_lock","tableinfo"});
        t.setDbSchema("root".toUpperCase());
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
     * 第一步 导出mysql数据库的脚本xml文件
	 * @throws Exception 
     */
    @Test
    public void testgenSMCschemafromoracle() throws Exception
    {
        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        t.setDbDriver("oracle.jdbc.driver.OracleDriver");
        t.setDbUrl("jdbc:oracle:thin:@//172.16.17.219:1521/orcl");
        t.setOutputFile("schema/smc.xml");
        t.setDbPassword("smc");
        t.setDbUser("smc");   
        //t.setIncludeTables(new String[]{"CIM_DATACACHE","business_params","cim_collect_strategy","cim_reg_lock","tableinfo"});
        t.setDbSchema("smc".toUpperCase());
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
     * 第一步 导出mysql数据库的脚本xml文件
	 * @throws Exception 
     */
    @Test
    public void testgenCMSschemafromoracle() throws Exception
    {
        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        t.setDbDriver("oracle.jdbc.driver.OracleDriver");
        t.setDbUrl("jdbc:oracle:thin:@//172.16.17.219:1521/orcl");
        t.setOutputFile("schema/cms.xml");
        t.setDbPassword("cmsschema");
        t.setDbUser("cmsschema");   
        //t.setIncludeTables(new String[]{"CIM_DATACACHE","business_params","cim_collect_strategy","cim_reg_lock","tableinfo"});
        t.setDbSchema("cmsschema".toUpperCase());
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
    public void testoracletomysql() 
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
        task.setOutputDirectory(new File("oracletomysql/sql-mysql-cim"));
        task.setOutputFile("test.sql.generation");
        task.setTargetDatabase("mysql");
        try
        {
            task.setTemplatePath("templates");
            
            System.out.println(task.getTemplatePath());
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        task.setXmlFile("oracletomysql/schema/orableoutputFile-cim.xml");
        task.execute();
    }
    
    /**
     * 第二步 创建数据库表脚本的方法
     * 
     * @throws Exception
     */
    @Test
    public void testCMSomysql() 
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
        task.setOutputDirectory(new File("schema/cms"));
        task.setOutputFile("cms");
        task.setTargetDatabase("mysql");
        try
        {
            task.setTemplatePath("templates");
            
            System.out.println(task.getTemplatePath());
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        task.setXmlFile("schema/cms.xml");
        task.execute();
    }
    
    /**
     * 第二步 创建数据库表脚本的方法
     * 
     * @throws Exception
     */
    @Test
    public void testSMCtomysql() 
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
        task.setOutputDirectory(new File("schema/smc"));
        task.setSqlDbMap("schema/smc/sqldb.map");
        task.setOutputFile("smc");
        task.setTargetDatabase("mysql");
        try
        {
            task.setTemplatePath("templates");
            
            System.out.println(task.getTemplatePath());
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        task.setXmlFile("schema/smc.xml");
        task.execute();
    }
    
    /**
     * 第二步 创建数据库表脚本的方法
     * 
     * @throws Exception
     */
    @Test
    public void testSYStomysql() 
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
        task.setOutputDirectory(new File("schema/sys"));
        task.setSqlDbMap("schema/sys/sqldb.map");
        task.setOutputFile("sys");
        task.setTargetDatabase("mysql");
        try
        {
            task.setTemplatePath("templates");
            
            System.out.println(task.getTemplatePath());
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        task.setXmlFile("schema/sys.xml");
        task.execute();
    }
    
    
    /**
     * 第二步 创建数据库表脚本的方法
     * 
     * @throws Exception
     */
    @Test
    public void testCIMtomysql() 
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
        task.setOutputDirectory(new File("schema/cim"));
        task.setOutputFile("cim");
        task.setTargetDatabase("mysql");
        try
        {
            task.setTemplatePath("templates");
            
            System.out.println(task.getTemplatePath());
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        task.setXmlFile("schema/cim.xml");
        task.execute();
    }
    
    
    /**
     * 第二步 创建数据库表脚本的方法 for oralce
     * 
     * @throws Exception
     */
    @Test
    public void testCIMtooracle() 
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
        task.setOutputDirectory(new File("schema/cim"));
        task.setOutputFile("cim-oralce");
        task.setTargetDatabase("oracle");
        try
        {
            task.setTemplatePath("templates");
            
            System.out.println(task.getTemplatePath());
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        task.setXmlFile("schema/cim.xml");
        task.execute();
    }
    
    
    public void tableinfotomysql() 
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
        task.setOutputDirectory(new File("schema/tableinfo"));
        task.setSqlDbMap("schema/tableinfo/sqldb.map");
        task.setOutputFile("tableinfo");
        task.setTargetDatabase("mysql");
        try
        {
            task.setTemplatePath("templates");
            
            System.out.println(task.getTemplatePath());
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        task.setXmlFile("schema/tableinfo.xml");
        task.execute();
    }
    
    /**
     * 第三步，在derby数据库上执行数据库建表脚本
     */
    @Test
    public void testExecuteSqlInMysql()
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
        task.setDriver("com.mysql.jdbc.Driver");
        OnError action = new OnError();
        action.setValue(action.CONTINUE);
        task.setOnerror(action);
        task.setSqlDbMap("oracletomysql/sql-mysql-cim/sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("oracletomysql/sql-mysql-cim");
        task.setUrl("jdbc:mysql://172.16.17.216:3306/oracletomysql");
        task.setUserid("root");
        task.setPassword("123456");
        task.execute();    
    }
    
    
    
    
    /**
     * 第三步，在derby数据库上执行数据库建表脚本
     */
    @Test
    public void testExecuteCMSSqlInMysql()
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
        task.setDriver("com.mysql.jdbc.Driver");
        OnError action = new OnError();
        action.setValue(action.CONTINUE);
        task.setOnerror(action);
        task.setSqlDbMap("schema/cms/sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("schema/cms");
        task.setUrl("jdbc:mysql://172.16.17.216:3306/cms");
        task.setUserid("root");
        task.setPassword("123456");
        task.execute();    
    }
    
    public void ExecuteTableinfoSqlInMysql()
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
        task.setDriver("com.mysql.jdbc.Driver");
        OnError action = new OnError();
        action.setValue(action.CONTINUE);
        task.setOnerror(action);
        task.setSqlDbMap("schema/tableinfo/sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("schema/tableinfo");
        task.setUrl("jdbc:mysql://172.16.17.216:3306/testcim");
        task.setUserid("root");
        task.setPassword("123456");
        task.execute();    
    }
    
    
    /**
     * 第三步，在derby数据库上执行数据库建表脚本
     */
    @Test
    public void testExecuteSMCSqlInMysql()
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
        task.setDriver("com.mysql.jdbc.Driver");
        OnError action = new OnError();
        action.setValue(action.CONTINUE);
        task.setOnerror(action);
        task.setSqlDbMap("schema/smc/sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("schema/smc");
        task.setUrl("jdbc:mysql://172.16.17.216:3306/testcim");
        task.setUserid("root");
        task.setPassword("123456");
        task.execute();    
    }
    
    /**
     * 第三步，在derby数据库上执行数据库建表脚本
     */
    @Test
    public void testExecuteCIMSqlInMysql()
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
        task.setDriver("com.mysql.jdbc.Driver");
        OnError action = new OnError();
        action.setValue(action.CONTINUE);
        task.setOnerror(action);
        
        task.setSqlDbMap("schema/cim/sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("schema/cim");
        task.setUrl("jdbc:mysql://172.16.17.216:3306/testcim");
        task.setUserid("root");
        task.setPassword("123456");
        task.setPrint(true);
        task.execute();    
    }
    
    /**
     * 第三步，在derby数据库上执行数据库建表脚本
     */
    @Test
    public void testExecuteSYSSqlInMysql()
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
        task.setDriver("com.mysql.jdbc.Driver");
        OnError action = new OnError();
        action.setValue(action.CONTINUE);
        task.setOnerror(action);
        task.setSqlDbMap("schema/sys/sqldb.map");
//        task.setPassword(password)
        task.setSrcDir("schema/sys");
        task.setUrl("jdbc:mysql://172.16.17.216:3306/testcim");
        task.setUserid("root");
        task.setPassword("123456");
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
    
   //初始化数据
    @Test
    public   void insertDB() throws SQLException{
		DBUtil dbUtil = new DBUtil();
		String[] propertys = null;
		ApplicationContext context = ApplicationContext.getApplicationContext("schema/assemble-1.xml");
		List<Pro> executefiles = context.getListProperty("executefiles");
		for(Pro profile:executefiles)
		{
			SQLUtil sqlUtil = SQLUtil.getInstance(profile.toString());
			ApplicationContext context_execute = ApplicationContext.getApplicationContext(profile.toString());
			
			propertys = sqlUtil.getPropertyKeys();
			Pro pro_ = context_execute.getProBean("all_datas");
			if(pro_ == null )
				continue;
			String dbname = pro_.getStringExtendAttribute("dbname", "bspf"); 
			List<Pro> lists = pro_.getList();
			if(lists == null || lists.size() == 0)
				continue;
			for(Pro data : lists){
				
				
				ProMap<String,Pro> dbsqls = data.getMap();
				try{
					
					String dbtype = DBUtil.getDBAdapter(dbname).getDBTYPE();
					List<Pro> sqls = dbsqls.getList(dbtype);
					if(sqls == null )
						sqls = dbsqls.getList("default");
					for(Pro pro : sqls){
						try {
							String sql = pro.toString();
							//     				System.out.println("sql = " + sql);
							if (sql != null && !sql.trim().equals("")) {
								String action = pro.getStringExtendAttribute(
										"action", "insert");
								if (action.equals("insert"))
									dbUtil.executeInsert(dbname, sql);
								else if (action.equals("delete")) {
									dbUtil.executeDelete(dbname, sql);
								} else if (action.equals("update")) {
									dbUtil.executeUpdate(dbname, sql);
								} else if (action.equals("create")) {
									dbUtil.executeUpdate(dbname, sql);
								}
	
							}
							//				dbUtil.addBatch(sql);
						} catch (Exception e) {
							continue;
						}
					}
				}catch(Exception e){
					
				}
			}
		}
//		dbUtil.executeBatch("mq");
	}
    
    public void initSYSAndSMC()
    {
    	OracleToMysql instance_ = new OracleToMysql();
    	
    	instance_.tableinfotomysql();
    	instance_.ExecuteTableinfoSqlInMysql();
    	
//    	instance_.testCIMtomysql();
//    	instance_.testExecuteCIMSqlInMysql();
//    	
//    	try {
//			instance_.testgenSMCschemafromoracle();
//		} catch (Exception e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
    	instance_.testSMCtomysql();
    	instance_.testExecuteSMCSqlInMysql();
    	
    	instance_.testSYStomysql();
    	instance_.testExecuteSYSSqlInMysql();
    	try {
			instance_.insertDB();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    public static void main(String args[]) throws SQLException
    {
    	OracleToMysql instance = new OracleToMysql();
    	
//    	OracleToMysql instance_ = new OracleToMysql();
//    	try {
//			System.setOut(new java.io.PrintStream(new java.io.FileOutputStream("log/initdb.log")));
//			System.setErr(new java.io.PrintStream(new java.io.FileOutputStream("log/initdb.log")));
//		} catch (FileNotFoundException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
		instance.initSYSAndSMC();
//    	final String[] propertys ={"sys_tableinfo_list","addtableinfo_seqlist","addtb_sm_inputtype_list",
//    		"addtd_sm_dicttype_list","addtd_sm_dictdata_list","addtd_sm_job",
//    		"addtd_sm_roleresop_list","addtd_sm_roletype","addtd_sm_user",
//    		"addtd_sm_role_list","addtd_sm_userrole","addmq_rules_tpl_list","create_dbsquence-mysql"};
//        try {
////			instance.testgenSYSschemafromoracle();
////        	instance.testgenSMCschemafromoracle();
////        	instance.testSMCtomysql();
////        	instance.testExecuteSMCSqlInMysql();
//////        	
////        	instance.testgenCIMschemafromoracle();
////        	instance.testCIMtomysql();
////        	instance.testExecuteCIMSqlInMysql();
////        	
////        	instance_.testgenSMCschemafromoracle();
//			instance_.testSMCtomysql();
//	    	instance_.testExecuteSMCSqlInMysql();
//	    	
////        	
////        	instance_.testgenSYSschemafromoracle();
//        	instance_.testSYStomysql();
//        	instance_.testExecuteSYSSqlInMysql();
//	    	
//	    	instance_.insertDB();
//		} catch (Exception e) {
//			
//			e.printStackTrace();
//		}
//		
//		try {
//			
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
    	
//        instance.testoracletomysql();
//        instance.testExecuteSqlInMysql();
       // DBUtil dbutil = new DBUtil();
       // dbutil.executeSelect("select 1 from dual");
		
    }

}
