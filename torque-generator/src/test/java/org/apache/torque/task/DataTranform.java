package org.apache.torque.task;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import org.apache.texen.ant.TexenTask;

public class DataTranform extends TexenTask{
	List transformtables ;
	
	public List getTables() throws SQLException, ClassNotFoundException
	{
	TorqueJDBCTransformTask t = new TorqueJDBCTransformTask();
//    t.setDbDriver("oracle.jdbc.driver.OracleDriver");
//    t.setDbUrl("jdbc:oracle:thin:@//172.16.17.219:1521/orcl");
//    t.setDbPassword("baseamq");
//    t.setDbUser("baseamq");
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url = "jdbc:oracle:thin:@//172.16.17.219:1521/orcl";
    String user = "baseamq";
    String password = "baseamq";
    
    Connection con=DriverManager.getConnection(url,user,password);
    DatabaseMetaData dbMeta = con.getMetaData();
    transformtables = t.getTableNames(dbMeta);
	return transformtables; 
	}
	
//	public com.frameworkset.common.poolman.util.JDBCPoolMetaData getSourceMeta(){
//		
//		//sourcepoolmeta.
//		return sourcepoolmeta;
//	}
	
	//private TorqueDataDumpTask dumpTask; 
	
//	private String databaseName = "baseamq";
//
//    /** Database URL used for JDBC connection. */
//    private String databaseUrl = "jdbc:oracle:thin:@//172.16.17.219:1521/orcl";
//
//    /** Database driver used for JDBC connection. */
//    private String databaseDriver = "oracle.jdbc.driver.OracleDriver";
//
//    /** Database user used for JDBC connection. */
//    private String databaseUser = "baseamq";
//
//    /** Database password used for JDBC connection. */
//    private String databasePassword = "baseamq";
//    
//    private Connection conn;
//
//    /** The statement used to acquire the data to dump. */
//    private Statement stmt;
//    
//    private ResultSet rs;
//    private List list;
//    private String tableName = "TD_SM_ROLE";
//    private String templatePath = "D:\\workspace\\torque4\\torque-generator\\templates";
//	
//	public void init(){
//		
//		    Project project = new Project();
//	        project.setSystemProperties();
//	        dumpTask.setProject(project);
//		TorqueDataDumpTask dumpTask= new TorqueDataDumpTask();
//		dumpTask = new TorqueDataDumpTask();
//		dumpTask.setDatabaseName(databaseName);
//		dumpTask.setDatabaseDriver(databaseDriver);
//		dumpTask.setDatabaseUrl(databaseUrl);
//		dumpTask.setDatabaseUser(databaseUser);
//		dumpTask.setDatabasePassword(databasePassword);	
//		dumpTask.setOutputFile("oracletomysql/schema/testdata.xml");
//		//dumpTask.set
//		try {
//			//System.out.println(templatePath);
//			//dumpTask.setUseClasspath(true);
//			dumpTask.setTemplatePath(templatePath);
//			//dumpTask.setTemplatePath("templates");
//			System.out.println(dumpTask.getTemplatePath());
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		try {
//			//dumpTask.initControlContext();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}
//	
//	public DataTranform(){
//		//init();
//	}
//	
//	public void test(){
//		//dumpTask.execute();
//	}
//	public  void initContext() {
//		//return dumpTask.initControlContext();
//		
//		try
//        {
//            Class.forName(databaseDriver);
//            log("DB driver instantiated sucessfully", Project.MSG_DEBUG);
//
//            conn = DriverManager.getConnection(
//                    databaseUrl, databaseUser, databasePassword);
//            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
//                    ResultSet.CONCUR_UPDATABLE);
//
//            System.out.println("DB connection established");
//            log("DB connection established", Project.MSG_DEBUG);
//           
//            
//        }
//        catch (SQLException se)
//        {
//            System.err.println("SQLException while connecting to DB:");
//            se.printStackTrace();
//        }
//        catch (ClassNotFoundException cnfe)
//        {
//            System.err.println("cannot load driver:");
//            cnfe.printStackTrace();
//        }
//        
//       
//	}
//	
//	public void getResultRet() throws Exception{
//		//TableTool tableTool = new TableTool(tableName);
//		rs = stmt.executeQuery("SELECT * FROM " + tableName);
//		while(rs.next()){
//			System.out.println(rs.getRow());
//			System.out.println();
//			rs.last();	
//			System.out.println(rs.getRow());
//		}
//		for(int i=1;i<3;i++){
//			System.out.println(rs.getString(i));
//		}
		//if(rs != null)
		//System.out.println(rs.getString(2));
//		boolean haha = false;
//		
//		if(rs.next())
//		 haha = true;
//		while(haha)
//		{
//	   rs.beforeFirst();
//		System.out.println("ok");
//		System.out.println(rs.getRow());
//		//System.out.println(rs.beforeFirst());
//		System.out.println(rs.getFetchSize());
//	
//		System.out.println(rs.getString(1));
//		//rs.afterLast();
//		System.out.println(rs.getString(4));
//		haha = rs.next();
//		}
//	}
	
	
	
	  public static void main(String args[]) throws Exception 
	    {
	    	DataTranform transform = new DataTranform();
	    	//transform.init();
	        //transform.initContext();
	       // transform.getResultRet();
	    	List list = transform.getTables();
	    	for(int i=0;i<list.size();i++){
	    		System.out.println(list.get(i));
	    	}
	    	
//	    	for(int i=0;i<list.size();i++){
//	    		String a = (String) list.get(i);
//	    		System.out.println(a);
//	    	}
	    }

}
