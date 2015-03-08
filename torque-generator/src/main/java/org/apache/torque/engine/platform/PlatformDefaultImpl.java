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

import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.torque.engine.database.model.Column;
import org.apache.torque.engine.database.model.Domain;
import org.apache.torque.engine.database.model.SchemaType;
import org.apache.torque.engine.database.model.TypeMap;


/**
 * Default implementation for the Platform interface.
 *
 * @author <a href="mailto:mpoeschl@marmot.at">Martin Poeschl</a>
 * @version $Id: PlatformDefaultImpl.java 473814 2006-11-11 22:30:30Z tv $
 */
public class PlatformDefaultImpl implements Platform
{
    private Map schemaDomainMap;
    
    protected String[] keys = new String[] {
            "DESC",
            "WHEN",
            "KEY"
    };
    

    /**
     * Default constructor.
     */
    public PlatformDefaultImpl()
    {
        initialize();
    }

    private void initialize()
    {
        schemaDomainMap = new Hashtable(30);
        Iterator iter = SchemaType.iterator();
        while (iter.hasNext())
        {
            SchemaType type = (SchemaType) iter.next();
            schemaDomainMap.put(type, new Domain(type));
        }
        setSchemaDomainMapping(new Domain(SchemaType.NVARCHAR, "VARCHAR"));
        schemaDomainMap.put(SchemaType.BOOLEANCHAR,
                new Domain(SchemaType.BOOLEANCHAR, "CHAR"));
        schemaDomainMap.put(SchemaType.BOOLEANINT,
                new Domain(SchemaType.BOOLEANINT, "INTEGER"));
    }

    protected void setSchemaDomainMapping(Domain domain)
    {
        schemaDomainMap.put(domain.getType(), domain);
    }

    /**
     * @see Platform#getMaxColumnNameLength()
     */
    public int getMaxColumnNameLength()
    {
        return 64;
    }

    /**
     * @see Platform#getNativeIdMethod()
     */
    public String getNativeIdMethod()
    {
        return Platform.IDENTITY;
    }

    /**
     * @see Platform#getDomainForSchemaType(SchemaType)
     */
    public Domain getDomainForSchemaType(SchemaType jdbcType)
    {
        return (Domain) schemaDomainMap.get(jdbcType);
    }

    /**
     * @return Only produces a SQL fragment if null values are
     * disallowed.
     * @see Platform#getNullString(boolean)
     */
    public String getNullString(Domain domain,boolean notNull)
    {
        // TODO: Check whether this is true for all DBs.  Also verify
        // the old Sybase templates.
        return (notNull ? "NOT NULL" : "");
    }

    /**
     * @see Platform#getAutoIncrement()
     */
    public String getAutoIncrement()
    {
        return "IDENTITY";
    }

    /**
     * @see Platform#hasScale(String)
     * TODO collect info for all platforms
     */
    public boolean hasScale(String sqlType)
    {
        return true;
    }

    /**
     * @see Platform#hasSize(String)
     * TODO collect info for all platforms
     */
    public boolean hasSize(String sqlType)
    {
        return true;
    }

    /**
     * @see Platform#createNotNullBeforeAutoincrement()
     */
    public boolean createNotNullBeforeAutoincrement()
    {
        return true;
    }
    
    /**
     * 
     */
    public String getDefaultValue(Domain domain)
    {
    	String  defaultValue = domain.getDefaultValue(); 
    	if(StringUtils.isNotEmpty(defaultValue))
    	{
	    	
	        
	        if (TypeMap.isTextType(domain.getType()))
	        {
	            // TODO: Properly SQL-escape the text.
	        	
	                   return  new StringBuffer()
	                    .append('\'')
	                    .append(defaultValue)
	                    .append('\'').toString();
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
        return domain.getSqlType();
    }
    
    protected boolean inkeys(String columnName,String[] keys)
    {
        for(String key : keys)
        {
            if(columnName.toUpperCase().equals(key))
                return true;
        }
        return false;
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
    
    
    public String tuneFKSize(Column primaryKey)
    {
        return primaryKey.getSize();
    }
}
