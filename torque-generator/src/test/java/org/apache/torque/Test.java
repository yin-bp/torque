package org.apache.torque;

import org.frameworkset.persitent.util.SQLUtil;

public class Test {

	public static void testEtlTlp(){
		SQLUtil sqlUtilInsert = SQLUtil.getInstance("schema/test.xml");
		String sql = sqlUtilInsert.getSQL("test_mq_rule");
		System.out.println(sql);
	}
	
	public static void main(String args[])
	{
		testEtlTlp();
	}
}
