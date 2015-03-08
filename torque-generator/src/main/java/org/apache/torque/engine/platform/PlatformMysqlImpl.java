package org.apache.torque.engine.platform;

/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

import org.apache.commons.lang.StringUtils;
import org.apache.torque.engine.database.model.Domain;
import org.apache.torque.engine.database.model.SchemaType;
import org.apache.torque.engine.database.model.TypeMap;

/**
 * MySql Platform implementation.
 * 
 * @author <a href="mailto:mpoeschl@marmot.at">Martin Poeschl</a>
 * @version $Id: PlatformMysqlImpl.java 473814 2006-11-11 22:30:30Z tv $
 */
public class PlatformMysqlImpl extends PlatformDefaultImpl
{

	/**
	 * Default constructor.
	 */
	public PlatformMysqlImpl()
	{

		super();
		initialize();
	}

	/**
	 * Initializes db specific domain mapping.
	 */
	private void initialize()
	{

		setSchemaDomainMapping(new Domain(SchemaType.NUMERIC, "DECIMAL"));
		setSchemaDomainMapping(new Domain(SchemaType.LONGVARCHAR, "MEDIUMTEXT"));
		setSchemaDomainMapping(new Domain(SchemaType.DATE, "DATETIME"));
		setSchemaDomainMapping(new Domain(SchemaType.BINARY, "BLOB"));
		setSchemaDomainMapping(new Domain(SchemaType.VARBINARY, "MEDIUMBLOB"));
		setSchemaDomainMapping(new Domain(SchemaType.LONGVARBINARY, "LONGBLOB"));
		setSchemaDomainMapping(new Domain(SchemaType.BLOB, "LONGBLOB"));
		setSchemaDomainMapping(new Domain(SchemaType.CLOB, "LONGTEXT"));
	}

	/**
	 * @see Platform#getAutoIncrement()
	 */
	public String getAutoIncrement()
	{

		return "AUTO_INCREMENT";
	}

	/**
	 * @see Platform#hasSize(String)
	 */
	public boolean hasSize(String sqlType)
	{

		return !("MEDIUMTEXT".equals(sqlType) || "LONGTEXT".equals(sqlType)
				|| "BLOB".equals(sqlType) || "MEDIUMBLOB".equals(sqlType) || "LONGBLOB"
				.equals(sqlType));
	}

	/**
    	     * FIX mysql default value
    	     */
	public String getDefaultValue(Domain domain)
	{

		String defaultValue = domain.getDefaultValue();
		if (StringUtils.isNotEmpty(defaultValue))
		{

			if (TypeMap.isTextType(domain.getType()))
			{
				// TODO: Properly SQL-escape the text.
				boolean istimestamp = domain.getType()
						.equals(SchemaType.TIMESTAMP) 
						|| domain.getType().equals(SchemaType.DATE)
						|| domain.getType().equals(SchemaType.TIME)
						;
				if (!istimestamp)
				{
					return new StringBuffer().append('\'').append(defaultValue)
							.append('\'').toString();
				}
				else
				{
					if(defaultValue.equals("SYSTIMESTAMP"))
						return "CURRENT_TIMESTAMP";
					else if(defaultValue.equals("sysdate") || defaultValue.equals("CURRENT_TIMESTAMP") )
					    return "CURRENT_TIMESTAMP";
					else 
						return new StringBuffer().append('\'').append(defaultValue)
						.append('\'').toString();
				}
			}
			else
			{
				return defaultValue;
			}
		}
		return null;
	}
	
	 public String convertType(Domain domain)
    {
	     boolean isdate = domain.getType().equals(SchemaType.DATE);
	     String defaultValue = domain.getDefaultValue();
	     if (isdate && StringUtils.isNotEmpty(defaultValue) && defaultValue.toLowerCase().equals("sysdate"))
	     {
	         return "TIMESTAMP";
	     }
        return domain.getSqlType();
    }
	 protected String[] keys = new String[] {
	            "DESC",
	            "WHEN",
	            "KEY",
	            "CONDITION"
	    };
	 public String handleColumnName(String columnName)
	    {
	        if(inkeys(columnName,keys))
	        {
	            return "`" + columnName + "`";
	        }
	        else
	            return columnName;
	    }

	@Override
	public String getNullString(Domain domain,boolean notNull) {
		if (TypeMap.isTextType(domain.getType()))
		{
			// TODO: Properly SQL-escape the text.
			boolean istimestamp = domain.getType()
					.equals(SchemaType.TIMESTAMP) ;
			if(!istimestamp)
			{
				return (notNull ? "NOT NULL" : "");				
			}
			else
			{
				return (notNull ? "NOT NULL  DEFAULT CURRENT_TIMESTAMP" : "NULL DEFAULT NULL");
				
			}
			
		}
		else
		{
			return (notNull ? "NOT NULL" : "");
		}
	}
}
