package org.apache.torque.task;

import org.frameworkset.persistent.db.DBInit;

public class TestDBInit {
	public static void main(String[] args)
	{
		DBInit db = new DBInit();
		String includeTables[] = {"CIM_ETL_RESOURCE_ITEM","CIM_ETL_DATASOURCE_META","CIM_ETL_REPOSITORY"};
		db.generateSchemaXML("cim", includeTables,"schema/plugin-etl.xml");
		
		db.genarateSQL("cim-derby", "schema/plugin-etl.xml");
		db.executeSQL("cim-derby");
	}

}
