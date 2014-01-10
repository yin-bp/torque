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
 * Oracle Platform implementation.
 * 
 * @author <a href="mailto:mpoeschl@marmot.at">Martin Poeschl</a>
 * @version $Id: PlatformOracleImpl.java 473814 2006-11-11 22:30:30Z tv $
 */
public class PlatformOracleImpl extends PlatformDefaultImpl
{
    /**
     * Default constructor.
     */
    public PlatformOracleImpl()
    {
        super();
        initialize();
    }

    /**
     * Initializes db specific domain mapping.
     */
    private void initialize()
    {
        setSchemaDomainMapping(new Domain(SchemaType.TINYINT, "NUMBER", "3", "0"));
        setSchemaDomainMapping(new Domain(SchemaType.SMALLINT, "NUMBER", "5", "0"));
        setSchemaDomainMapping(new Domain(SchemaType.INTEGER, "NUMBER", "10", "0"));
        setSchemaDomainMapping(new Domain(SchemaType.BOOLEANINT, "NUMBER", "1", "0"));
        setSchemaDomainMapping(new Domain(SchemaType.BIGINT, "NUMBER", "20", "0"));
        setSchemaDomainMapping(new Domain(SchemaType.REAL, "NUMBER"));
        setSchemaDomainMapping(new Domain(SchemaType.DOUBLE, "FLOAT"));
        setSchemaDomainMapping(new Domain(SchemaType.DECIMAL, "NUMBER"));
        setSchemaDomainMapping(new Domain(SchemaType.NUMERIC, "NUMBER"));
        setSchemaDomainMapping(new Domain(SchemaType.VARCHAR, "VARCHAR2"));
        setSchemaDomainMapping(new Domain(SchemaType.LONGVARCHAR, "CLOB"));
        setSchemaDomainMapping(new Domain(SchemaType.TIME, "DATE"));
        setSchemaDomainMapping(new Domain(SchemaType.TIMESTAMP, "TIMESTAMP"));
//        setSchemaDomainMapping(new Domain(SchemaType.BINARY, "LONG RAW"));
        setSchemaDomainMapping(new Domain(SchemaType.BINARY, "BLOB"));
        setSchemaDomainMapping(new Domain(SchemaType.VARBINARY, "BLOB"));
//        setSchemaDomainMapping(new Domain(SchemaType.LONGVARBINARY, "LONG RAW"));
        setSchemaDomainMapping(new Domain(SchemaType.LONGVARBINARY, "BLOB"));
    }

    /**
     * @see Platform#getMaxColumnNameLength()
     */
    public int getMaxColumnNameLength()
    {
        return 30;
    }

    /**
     * @see Platform#getNativeIdMethod()
     */
    public String getNativeIdMethod()
    {
        return Platform.SEQUENCE;
    }

    /**
     * @see Platform#getAutoIncrement()
     */
    public String getAutoIncrement()
    {
        return "";
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
                boolean istimestamp = domain.getType().equals(SchemaType.DATE) || domain.getType().equals(SchemaType.TIME) || domain.getType().equals(SchemaType.TIMESTAMP) ;
                if (!istimestamp)
                {
                    return new StringBuffer().append('\'').append(defaultValue).append('\'').toString();
                }
                
                {
                    if (domain.getType().equals(SchemaType.TIMESTAMP) && (defaultValue.equals("CURRENT_TIMESTAMP") || defaultValue.equals("SYSTIMESTAMP")))
                        return "SYSTIMESTAMP";
                    else if (domain.getType().equals(SchemaType.DATE) && (defaultValue.equals("CURRENT_TIMESTAMP") || defaultValue.equals("sysdate")))
                        return "sysdate";
                    else
                    {
                    	if(defaultValue.toLowerCase().startsWith("to_date("))
                    	{
                    		return defaultValue;
                    	}
                    	else
                    	{
                    		if(defaultValue.equals("0000-00-00 00:00:00"))
                    			return null;
                    		return new StringBuffer().append("to_date('").append(defaultValue).append("','YYYY:MM:DD HH24:MI:SS')").toString();
                    	}
                    }
                }
            }
            else
            {
                return defaultValue;
            }
        }
        return null;
    }
    
    public String handleColumnName(String columnName)
    {
        if(inkeys(columnName,keys))
        {
            return "\"" + columnName + "\"";
        }
        else
            return columnName;
    }
    
    
    public boolean hasSize(String sqlType)
	{

		return !("CLOB".equals(sqlType) 
				|| "BLOB".equals(sqlType));
	}
}
