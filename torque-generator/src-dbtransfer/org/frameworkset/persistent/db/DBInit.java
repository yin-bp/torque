package org.frameworkset.persistent.db;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.apache.tools.ant.Project;
import org.apache.torque.task.TorqueJDBCTransformTask;
import org.apache.torque.task.TorqueSQLExec;
import org.apache.torque.task.TorqueSQLExec.OnError;
import org.apache.torque.task.TorqueSQLTask;
import org.frameworkset.spi.ApplicationContext;
import org.frameworkset.spi.assemble.Pro;
import org.frameworkset.spi.assemble.ProMap;
import org.junit.Test;

import com.frameworkset.common.poolman.DBUtil;
import com.frameworkset.common.poolman.PreparedDBUtil;
import com.frameworkset.util.FileUtil;

public class DBInit {

	public void generateSchemaXML(String dbname,String excludeTables[],String includeTables[]) {

        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        
        t.setDBName(dbname);
        t.setIncludeTables(includeTables);
        t.setExecludeTables(excludeTables);
       
           
        
        t.execute();
	}
	
	public void generateSchemaXML(String dbname,String includeTables[],String schemapath) {

        TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
        
        t.setDBName(dbname);
        t.setIncludeTables(includeTables);
        t.setOutputFile(schemapath);
       
           
        
        t.execute();
	}

	public void genarateSQL(String dbname, String schemaxml) {
//		if(schemaxml.endsWith("tableinfo.xml"))
//		{
//			System.out.println("schemaxml:"+schemaxml);
//			DBUtil db = new DBUtil();
//			try {
//				db.executeSelect("select * from tableinfo");
//				return ;
//			} catch (SQLException e) {
//				
//				e.printStackTrace();
//			}
//		}
		
		TorqueSQLTask task = new TorqueSQLTask();
		/**
		 * <torque-sql contextProperties="${torque.contextProperties}"
		 * controlTemplate="${torque.template.sql}"
		 * idTableXMLFile="${torque.idTableXMLFile}"
		 * outputDirectory="${torque.sql.dir}"
		 * outputFile="report.${torque.project}.sql.generation"
		 * sqldbmap="${torque.sql.dir}/sqldb.map"
		 * targetDatabase="${torque.database}"
		 * useClasspath="${torque.useClasspath}"> <fileset
		 * dir="${torque.schema.dir}" includes="${torque.schema.sql.includes}"
		 * excludes="${torque.schema.sql.excludes}" /> </torque-sql>
		 */
		// task.setContextProperties("D:\\workspace\\torque\\torque4\\torque-generator\\src\\conf\\build.properties");
		Project project = new Project();
		project.setSystemProperties();
		task.setProject(project);
		task.setControlTemplate("sql/base/Control.vm");
		task.setUseClasspath(false);
		// task.setIdTableXMLFile("D:\\workspace\\torque\\torque4\\torque-generator/src/schema/id-table-schema.xml");
		task.setOutputDirectory(new File("schema/" + dbname));
		task.setSqlDbMap("schema/" + dbname + "/sqldb.map");

		task.setOutputFile(dbname);

		String type = DBUtil.getDBAdapter(dbname).getDBTYPE();
		task.setTargetDatabase(type);
		task.setDbname(dbname);
		try {
			task.setTemplatePath("templates");

//			System.out.println(task.getTemplatePath());
		} catch (Exception e) {
			// TODO: handle exception
		}
		task.setXmlFile(schemaxml);
		task.execute();
	}
	public void clearsqlfiles(String dbname)
	{
		
	}
	public void execute_(String dbname,boolean ispatch) {
		ApplicationContext context = ApplicationContext
				.getApplicationContext("schema/assemble.xml");
		List<Pro> executefiles = null;
		if(!ispatch)
			executefiles = context.getListProperty("schemafiles");
		else
			executefiles = context.getListProperty("schemafiles_patch");

		if (executefiles == null || executefiles.size() == 0)
			return;
		
		for (Pro pro : executefiles) {

			String dbname_ = pro.getStringExtendAttribute("dbname", "bspf");
			if (dbname_.equals(dbname)) {

				String schemaxml = pro.toString();
				if (schemaxml.indexOf(',') < 0)

					this.genarateSQL(dbname, schemaxml);
				else {
					String[] files = schemaxml.split("\\,");
					for (String file : files)
						this.genarateSQL(dbname_, file);
				}
				
				this.executeSQL(dbname);

			}

		}

		

	}

	public void executeSQL(String dbname)

	{
		TorqueSQLExec task = new TorqueSQLExec();
		/**
		 * <target name="insert-sql"
		 * description="==> inserts the generated sql ">
		 * 
		 * <torque-sql-exec autocommit="true" driver="${torque.database.driver}"
		 * onerror="continue" password="${torque.database.password}"
		 * sqldbmap="${torque.sql.dir}/sqldb.map" srcDir="${torque.sql.dir}"
		 * url="${torque.database.buildUrl}" userid="${torque.database.user}">
		 * <classpath refid="torque-classpath"/> </torque-sql-exec> </target>
		 */

		task.setAutocommit(true);
		Project project = new Project();
		project.setSystemProperties();
		task.setProject(project);
		// task.setDriver("com.mysql.jdbc.Driver");
		OnError action = new OnError();
		action.setValue(action.CONTINUE);
		task.setOnerror(action);
		task.setSqlDbMap("schema/" + dbname + "/sqldb.map");
		// task.setPassword(password)
		task.setSrcDir("schema/" + dbname);
		// task.setUrl("jdbc:mysql://172.16.17.216:3306/testcim");
		// task.setUserid("root");
		// task.setPassword("123456");
		task.setDbname(dbname);
		task.execute();
	}

	// 初始化数据
	@Test
	public void insertDataToDB(String dbname_,boolean ispatch) throws SQLException {

		String[] propertys = null;
		ApplicationContext context = ApplicationContext
				.getApplicationContext("schema/assemble.xml");
		List<Pro> executefiles = null;
		if(!ispatch)
		{
			executefiles = context.getListProperty("executefiles");
		}
		else
			executefiles = context.getListProperty("executefiles_patch");
		for (Pro profile : executefiles) {
			String dbname = profile.getStringExtendAttribute("dbname","bspf");
			if(!dbname.equals(dbname_))
				continue;
			String file = profile.toString();
			if (file.indexOf(',') < 0) {
				insertData(dbname, file);
			} else {
				String[] files = file.split("\\,");
				for(String file_ : files)
				{
					insertData(dbname, file_);
				}

			}
		}
		
	}

	private void insertData(String dbname, String file) {
		DBUtil dbUtil = new DBUtil();
		ApplicationContext context_execute = ApplicationContext
				.getApplicationContext(file);

		Pro pro_ = context_execute.getProBean("all_datas");
		if (pro_ == null)
			return;
		
		List<Pro> lists = pro_.getList();
		if (lists == null || lists.size() == 0)
			return;
		for (Pro data : lists) {
			ProMap<String, Pro> dbsqls = data.getMap();
			try {

				String dbtype = DBUtil.getDBAdapter(dbname).getDBTYPE();
				List<Pro> sqls = dbsqls.getList(dbtype);
				if (sqls == null)
					sqls = dbsqls.getList("default");
				for (Pro pro : sqls) {
					try {
						String sql = pro.toString();
						
						
						// System.out.println("sql = " + sql);
						if (sql != null && !sql.trim().equals("")) {
							
							
								String action = pro.getStringExtendAttribute(
										"action", "update");
								String[][] vars = com.frameworkset.util.VariableHandler.parser2ndSubstitution(sql, "<clob>", "</clob>", "?"); 
								if (action.equals("insert"))
								{
									
									
									String sql_ = vars[0][0];
									if(vars[1].length > 0)
									{
										PreparedDBUtil pe = new PreparedDBUtil();
										pe.preparedInsert(dbname,sql_);
										pe.setClob(1, vars[1][0]);
										pe.executePrepared();
										
									}
									else
									{
										try
										{
											dbUtil.executeInsert(dbname, sql_);
										}
										catch(Exception e )
										{
											e.printStackTrace();
											
											
										}
									}
								}
								else if (action.equals("delete")) {
									dbUtil.executeDelete(dbname, sql);
								} else if (action.equals("update")) {
									dbUtil.executeUpdate(dbname, sql);
								} else if (action.equals("create")) {
									dbUtil.executeUpdate(dbname, sql);
								}
							

						}
						// dbUtil.addBatch(sql);
					} catch (Exception e) {
						continue;
					}
				}
			} catch (Exception e) {

			}
		}
	}

	private void cleartempfiles(List<String> dbnames)
	{
		
		for (int i = 0; dbnames != null && i < dbnames.size(); i++) {
			File f = new File("schema/" + dbnames.get(i));
//			System.out.println(f.getAbsolutePath() + ":"+f.exists());
			if(f.exists())
			{
				System.out.println("是否要删除临时文件目录："+ f.getAbsolutePath() + "(Y/N)");
				try {
					char bb   = (char)System.in.read();
					if(bb == 'y' || bb == 'Y')
						FileUtil.deleteFile(f.getAbsolutePath());
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return;
			}
		}
		
	}
	public void execute(boolean ispatch) {
		try {
//			System.setErr(new java.io.PrintStream(new java.io.FileOutputStream(
//					"d:/err.out")));
//			System.setOut(new java.io.PrintStream(new java.io.FileOutputStream(
//					"d:/out.out")));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		List<String> dbnames = DBUtil.getAllPoolNames();
		cleartempfiles(dbnames);
		for (int i = 0;  dbnames != null && i < dbnames.size(); i++) {

			// tableinfotoDB(dbnames.get(i));
			// executeTableinfoSqlInDB(dbnames.get(i));
			System.out.println("execute_ dbnames.get("+i+"):" + dbnames.get(i));
			this.execute_(dbnames.get(i),ispatch);
		}
		clear("schema");
		purgeDB();
		for (int i = 0; i < dbnames.size(); i++) {

			try {
				System.out.println("insertDataToDB dbnames.get("+i+"):" + dbnames.get(i));
				insertDataToDB(dbnames.get(i),ispatch);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		

	}
	
	private void purgeDB()
	{
		//purge recyclebin
		List<String> dbnames = DBUtil.getAllPoolNames();

		for (int i = 0; i < dbnames.size(); i++) {

			// tableinfotoDB(dbnames.get(i));
			// executeTableinfoSqlInDB(dbnames.get(i));
			if(DBUtil.getDBAdapter(dbnames.get(i)).getDBTYPE() != null && DBUtil.getDBAdapter(dbnames.get(i)).getDBTYPE().equals("oracle"))
			{
				DBUtil dbutil = new DBUtil();
				try {
					dbutil.executeUpdate(dbnames.get(i),"purge recyclebin");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}

	}
	
	public void clear(String schemadir)
	{
		File schema = new File(schemadir);
		File[] files = schema.listFiles(new java.io.FileFilter(){
			public boolean accept(File pathname) {

				if(pathname.isDirectory() || pathname.getName().equals("sqldb.map"))
					return true;
				else
					return false;
			}}
		);
		for(File dbmap:files)
		{
			if(dbmap.isFile())
				dbmap.delete();
			else
			{
				clear(dbmap.getAbsolutePath());
			}
		}
	}
	

	//	    
	// public void initSYSAndSMC()
	// {
	// DBInit instance_ = new DBInit();
	//	    	
	// instance_.tableinfotoDB("");
	// instance_.executeTableinfoSqlInDB("");
	//	    	
	// // instance_.testCIMtomysql();
	// // instance_.testExecuteCIMSqlInMysql();
	// //
	// // try {
	// // instance_.testgenSMCschemafromoracle();
	// // } catch (Exception e1) {
	// // // TODO Auto-generated catch block
	// // e1.printStackTrace();
	// // }
	// instance_.testSMCtomysql();
	// instance_.testExecuteSMCSqlInMysql();
	//	    	
	// instance_.testSYStomysql();
	// instance_.testExecuteSYSSqlInMysql();
	// try {
	// instance_.insertDB();
	// } catch (SQLException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// }
	public static void main(String args[]) throws SQLException {
//		String sql = "<clob>功能说明o离器将消息拆分成许多块，默认返回最后一个块被分离的消息。</clob>,";
//		
//		String[][] vars = com.frameworkset.util.VariableHandler.parser2ndSubstitution(sql, "<clob>", "</clob>", "?"); 
//		
//	    System.out.println(vars[0][0]);
//
//        System.out.println(vars[1][0]);

//
//		args = new String[]{"true"};
		DBInit db = new DBInit();
		boolean ispatch = false;
		if(args != null && args.length > 0)
    	{
    		String t = args[0];
    		if(t.equals("true"))
    			ispatch = true;
    	}
		db.execute(ispatch);

		//	    	
		// OracleToMysql instance = new OracleToMysql();
		//	    	
		// // OracleToMysql instance_ = new OracleToMysql();
		// try {
		// System.setOut(new java.io.PrintStream(new
		// java.io.FileOutputStream("log/initdb.log")));
		// System.setErr(new java.io.PrintStream(new
		// java.io.FileOutputStream("log/initdb.log")));
		// } catch (FileNotFoundException e1) {
		// // TODO Auto-generated catch block
		// e1.printStackTrace();
		// }
		// instance.initSYSAndSMC();
		// final String[] propertys
		// ={"sys_tableinfo_list","addtableinfo_seqlist","addtb_sm_inputtype_list",
		// "addtd_sm_dicttype_list","addtd_sm_dictdata_list","addtd_sm_job",
		// "addtd_sm_roleresop_list","addtd_sm_roletype","addtd_sm_user",
		// "addtd_sm_role_list","addtd_sm_userrole","addmq_rules_tpl_list","create_dbsquence-mysql"};
		// try {
		// // instance.testgenSYSschemafromoracle();
		// // instance.testgenSMCschemafromoracle();
		// // instance.testSMCtomysql();
		// // instance.testExecuteSMCSqlInMysql();
		// ////
		// // instance.testgenCIMschemafromoracle();
		// // instance.testCIMtomysql();
		// // instance.testExecuteCIMSqlInMysql();
		// //
		// // instance_.testgenSMCschemafromoracle();
		// instance_.testSMCtomysql();
		// instance_.testExecuteSMCSqlInMysql();
		//		    	
		// //
		// // instance_.testgenSYSschemafromoracle();
		// instance_.testSYStomysql();
		// instance_.testExecuteSYSSqlInMysql();
		//		    	
		// instance_.insertDB();
		// } catch (Exception e) {
		//				
		// e.printStackTrace();
		// }
		//			
		// try {
		//				
		// } catch (Exception e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }

		// instance.testoracletomysql();
		// instance.testExecuteSqlInMysql();
		// DBUtil dbutil = new DBUtil();
		// dbutil.executeSelect("select 1 from dual");

	}
	
	
	
	

}
