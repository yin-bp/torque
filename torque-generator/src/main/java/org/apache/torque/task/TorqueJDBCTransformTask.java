package org.apache.torque.task;

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

import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.Task;
import org.apache.torque.engine.database.model.TypeMap;
import org.apache.torque.engine.database.transform.DTDResolver;
import org.apache.xerces.dom.DocumentImpl;
import org.apache.xerces.dom.DocumentTypeImpl;
import org.apache.xml.serialize.Method;
import org.apache.xml.serialize.OutputFormat;
import org.apache.xml.serialize.XMLSerializer;
import org.w3c.dom.Element;

import com.frameworkset.common.poolman.DBUtil;

/**
 * This class generates an XML schema of an existing database from
 * JDBC metadata.
 *
 * @author <a href="mailto:jvanzyl@periapt.com">Jason van Zyl</a>
 * @author <a href="mailto:fedor.karpelevitch@barra.com">Fedor Karpelevitch</a>
 * @version $Id: TorqueJDBCTransformTask.java 502761 2007-02-02 21:52:05Z tfischer $
 */
public class TorqueJDBCTransformTask extends Task
{
    /** Name of XML database schema produced. */
    protected String xmlSchema;

    /** JDBC URL. */
    protected String dbUrl;

    /** JDBC driver. */
    protected String dbDriver;

    /** JDBC user name. */
    protected String dbUser;

    /** JDBC password. */
    protected String dbPassword;

    /** DB schema to use. */
    protected String dbSchema;

    /** DOM document produced. */
    protected DocumentImpl doc;

    /** The document root element. */
    protected Element databaseNode;

    /** Hashtable of columns that have primary keys. */
    protected Hashtable primaryKeys;

    /** Hashtable to track what table a column belongs to. */
    protected Hashtable columnTableMap;

    protected boolean sameJavaName;

    private XMLSerializer xmlSerializer;
    
    /**
     * 需要导出的表，如果为空导出所有的表
     */
    private String[] includeTables;
    /**
     * 需要排除的表，如果为空，导出所有的表
     */
    private String[] execludeTables;
    
    private String dbname ;

    public String getDbSchema()
    {
        return  dbSchema == null?dbSchema = DBUtil.getJDBCPoolMetaData(dbname).getUserName().toUpperCase():dbSchema;
    }

    public void setDbSchema(String dbSchema)
    {
    	if(dbSchema != null)
    		dbSchema = dbSchema.toUpperCase();
        this.dbSchema = dbSchema;
    }

    public void setDbUrl(String v)
    {
        dbUrl = v;
    }

    public void setDbDriver(String v)
    {
        dbDriver = v;
    }

    public void setDbUser(String v)
    {
        dbUser = v;
    }

    public void setDbPassword(String v)
    {
        dbPassword = v;
    }

    public void setOutputFile (String v)
    {
        xmlSchema = v;
    }

    public void setSameJavaName(boolean v)
    {
        this.sameJavaName = v;
    }

    public boolean isSameJavaName()
    {
        return this.sameJavaName;
    }

    /**
     * Default constructor.
     *
     * @throws BuildException
     */
    public void execute() throws BuildException
    {
        log("Torque - JDBCToXMLSchema starting");
        log("Your DB settings are:");
        log("driver : " + dbDriver);
        log("URL : " + dbUrl);
        log("user : " + dbUser);
        // log("password : " + dbPassword);
        log("schema : " + dbSchema);

        DocumentTypeImpl docType = new DocumentTypeImpl(null, "database", null,
                DTDResolver.WEB_SITE_DTD);
        doc = new DocumentImpl(docType);
//        doc.setXmlEncoding("GBK");
        doc.appendChild(doc.createComment(
                " Autogenerated by JDBCToXMLSchema! "));

        try
        {
            generateXML();
            log(xmlSchema);
            File xml = new File(xmlSchema);
            if(!xml.exists())
            {
            	if(!xml.getParentFile().exists())
            	{
            		xml.getParentFile().mkdirs();
            		xml.createNewFile();
            	}
            	xml.createNewFile();
            		
            }
            xmlSerializer = new XMLSerializer(
                    new PrintWriter(
                    new FileOutputStream(xmlSchema)),
                    new OutputFormat(Method.XML, "GBK", true));
            xmlSerializer.serialize(doc);
        }
        catch (Exception e)
        {
            throw new BuildException(e);
        }
        log("Torque - JDBCToXMLSchema finished");
    }

    /**
     * Generates an XML database schema from JDBC metadata.
     *
     * @throws Exception a generic exception.
     */
    public void generateXML() throws Exception
    {
        // Load the Interbase Driver.
        

        Connection con = null;
        try
        {
        	if(this.dbname == null)
        	{
	        	Class.forName(dbDriver);
	            log("DB driver sucessfuly instantiated");
	            // Attempt to connect to a database.
	            con = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
	            log("DB connection established");
        	}
        	else
        	{
        		con = DBUtil.getConection(dbname);
        	}

            // Get the database Metadata.
            DatabaseMetaData dbMetaData = con.getMetaData();

            // The database map.
            List tableList = getTableNames(dbMetaData);

            databaseNode = doc.createElement("database");
            databaseNode.setAttribute("name", dbUser);

            // Build a database-wide column -> table map.
            columnTableMap = new Hashtable();

            log("Building column/table map...");
            for (int i = 0; i < tableList.size(); i++)
            {
                String curTable = (String) tableList.get(i);
                List columns = getColumns(dbMetaData, curTable);

                for (int j = 0; j < columns.size(); j++)
                {
                    List col = (List) columns.get(j);
                    String name = (String) col.get(0);

                    columnTableMap.put(name, curTable);
                }
            }

            for (int i = 0; i < tableList.size(); i++)
            {
                // Add Table.
                String curTable = (String) tableList.get(i);
                // dbMap.addTable(curTable);
                log("Processing table: " + curTable);

                Element table = doc.createElement("table");
                table.setAttribute("name", curTable);
                if (isSameJavaName())
                {
                    table.setAttribute("javaName", curTable);
                }

                // Add Columns.
                // TableMap tblMap = dbMap.getTable(curTable);

                List columns = getColumns(dbMetaData, curTable);
                List primKeys = getPrimaryKeys(dbMetaData, curTable);
                Collection forgnKeys = getForeignKeys(dbMetaData, curTable);
//                List uniques = this.getIndexKeys(dbMetaData, curTable);
                

                // Set the primary keys.
                primaryKeys = new Hashtable();

                for (int k = 0; k < primKeys.size(); k++)
                {
                    String curPrimaryKey = (String) primKeys.get(k);
                    primaryKeys.put(curPrimaryKey, curPrimaryKey);
                }

                for (int j = 0; j < columns.size(); j++)
                {
                    List col = (List) columns.get(j);
                    String name = (String) col.get(0);
                    Integer type = ((Integer) col.get(1));
                    int size = ((Integer) col.get(2)).intValue();
                    int scale = ((Integer) col.get(5)).intValue();

                    // From DatabaseMetaData.java
                    //
                    // Indicates column might not allow NULL values.  Huh?
                    // Might? Boy, that's a definitive answer.
                    /* int columnNoNulls = 0; */

                    // Indicates column definitely allows NULL values.
                    /* int columnNullable = 1; */

                    // Indicates NULLABILITY of column is unknown.
                    /* int columnNullableUnknown = 2; */

                    Integer nullType = (Integer) col.get(3);
                    String defValue = (String)col.get(4);                                        
                    Element column = doc.createElement("column");
                    column.setAttribute("name", name);
                    if (isSameJavaName())
                    {
                        column.setAttribute("javaName", name);
                    }
                    String typeName = TypeMap.getTorqueType(type).getName();
                    column.setAttribute("type", typeName);

                    if (size > 0 && (type.intValue() == Types.CHAR
                            || type.intValue() == Types.VARCHAR
                            || type.intValue() == Types.NVARCHAR
                            || type.intValue() == Types.LONGVARCHAR
                            || type.intValue() == Types.DECIMAL
                            || type.intValue() == Types.NUMERIC || (typeName!=null && typeName.equals("NVARCHAR"))))
                    {
                        column.setAttribute("size", String.valueOf(size));
                    }

                    if (scale > 0 && (type.intValue() == Types.DECIMAL
                            || type.intValue() == Types.NUMERIC))
                    {
                        column.setAttribute("scale", String.valueOf(scale));
                    }

                    if (nullType.intValue() == 0)
                    {
                        column.setAttribute("required", "true");
                    }

                    if (primaryKeys.containsKey(name))
                    {
                        column.setAttribute("primaryKey", "true");
                    }
                    
                        
                    if (StringUtils.isNotEmpty(defValue))
                    {
                       
                        // trim out parens & quotes out of def value.
                        // makes sense for MSSQL. not sure about others.
                        if (defValue.startsWith("(") && defValue.endsWith(")"))
                        {
                            defValue = defValue.substring(1, defValue.length() - 1);
                        }
                        String temp = defValue.trim();
                        if(temp.startsWith("'") && temp.endsWith("'"))
                        {
                            defValue = temp.substring(1, temp.length() - 1);
                        }
                        else if (defValue.startsWith("'") && defValue.endsWith("'"))
                        {
                            defValue = defValue.substring(1, defValue.length() - 1);
                        }
                        
                        if(type.intValue() == Types.DECIMAL
                                || type.intValue() == Types.NUMERIC)
                        {
                            defValue = defValue .trim();
                        }
                        
//                        if (defValue.startsWith("‘") && defValue.endsWith("’"))
//                        {
//                            defValue = defValue.substring(1, defValue.length() - 1);
//                        }
//                        
//                        if (defValue.startsWith("'") && defValue.endsWith("’"))
//                        {
//                            defValue = defValue.substring(1, defValue.length() - 1);
//                        }
//                        
//                        if (defValue.startsWith("‘") && defValue.endsWith("'"))
//                        {
//                            defValue = defValue.substring(1, defValue.length() - 1);
//                        }

                        column.setAttribute("default", defValue);
                    }
                    table.appendChild(column);
                }

                // Foreign keys for this table.
                for (Iterator l = forgnKeys.iterator(); l.hasNext();)
                {
                    Object[] forKey = (Object[]) l.next();
                    String foreignKeyTable = (String) forKey[0];
                    List refs = (List) forKey[1];
                    Element fk = doc.createElement("foreign-key");
                    fk.setAttribute("foreignTable", foreignKeyTable);
                    for (int m = 0; m < refs.size(); m++)
                    {
                        Element ref = doc.createElement("reference");
                        String[] refData = (String[]) refs.get(m);
                        ref.setAttribute("local", refData[0]);
                        ref.setAttribute("foreign", refData[1]);
                        fk.appendChild(ref);
                    }
                    table.appendChild(fk);
                }
                databaseNode.appendChild(table);
            }
            doc.appendChild(databaseNode);
        }
        finally
        {
            if (con != null)
            {
                con.close();
                con = null;
            }
        }
    }

    private boolean include(String tablename)
    {
        if(this.includeTables == null || this.includeTables.length == 0)
            return true;
        else
        {
            for(String tablename_:this.includeTables)
            {
                if(tablename.toLowerCase().startsWith(tablename_.toLowerCase()))
                    return true;
            }
        }
        return false;
    }
    
    private boolean exclude(String tablename)
    {
        if(this.execludeTables == null || this.execludeTables.length == 0)
            return false;
        else
        {
            for(String tablename_:this.execludeTables)
            {
                if(tablename_.equalsIgnoreCase(tablename))
                    return true;
            }
        }
        return false;
    }
    /**
     * Get all the table names in the current database that are not
     * system tables.
     *
     * @param dbMeta JDBC database metadata.
     * @return The list of all the tables in a database.
     * @throws SQLException
     */
    public List getTableNames(DatabaseMetaData dbMeta)
        throws SQLException
    {
        log("Getting table list...");
        List tables = new ArrayList();
        ResultSet tableNames = null;
        // these are the entity types we want from the database
//        String[] types = {"TABLE", "VIEW"};
        String[] types = {"TABLE"};
        try
        {
            tableNames = dbMeta.getTables(null, getDbSchema(), "%", types);
            while (tableNames.next())
            {
                
                String name = tableNames.getString(3);
                if(this.exclude(name) || !this.include(name))
                    continue;
                /**
                 * 过滤oracle特殊格式的表名BIN$....
                 */
                if(name.contains("$"))
                    continue;
                tables.add(name);
            }
        }
        finally
        {
            if (tableNames != null)
            {
                tableNames.close();
            }
        }
        return tables;
    }

    /**
     * Retrieves all the column names and types for a given table from
     * JDBC metadata.  It returns a List of Lists.  Each element
     * of the returned List is a List with:
     *
     * element 0 => a String object for the column name.
     * element 1 => an Integer object for the column type.
     * element 2 => size of the column.
     * element 3 => null type.
     *
     * @param dbMeta JDBC metadata.
     * @param tableName Table from which to retrieve column information.
     * @return The list of columns in <code>tableName</code>.
     * @throws SQLException
     */
    public List getColumns(DatabaseMetaData dbMeta, String tableName)
            throws SQLException
    {
        List columns = new ArrayList();
        ResultSet columnSet = null;
        try
        {
            columnSet = dbMeta.getColumns(null,  getDbSchema(), tableName, null);           
            while (columnSet.next())
            {
                String name = columnSet.getString(4);
                Integer sqlType = new Integer(columnSet.getString(5));
                Integer size = new Integer(columnSet.getInt(7));
                Integer decimalDigits = new Integer(columnSet.getInt(9));
                Integer nullType = new Integer(columnSet.getInt(11));
                String defValue = columnSet.getString(13);
//                Object defValue = columnSet.getObject(13);
                if(sqlType == java.sql.Types.INTEGER ||
                        sqlType == java.sql.Types.BIGINT||
                        sqlType == java.sql.Types.SMALLINT||
                        sqlType == java.sql.Types.NUMERIC||
                        sqlType == java.sql.Types.DECIMAL||
                        sqlType == java.sql.Types.FLOAT||
                        sqlType == java.sql.Types.DOUBLE||
                        sqlType == java.sql.Types.REAL)
                {
                    
                    if(defValue != null )
                        defValue = defValue.trim(); 
                }
                else if(sqlType == java.sql.Types.CHAR)
                {
                    
                    if(defValue != null  && size<defValue.length())
                        defValue = defValue.trim(); 
                }
                else if(sqlType == java.sql.Types.DATE || sqlType == java.sql.Types.TIMESTAMP)
                {
                    
                    if(defValue != null )
                        defValue = defValue.trim(); 
                }
                
                
                    
//                if(defValue!=null && defValue.contains("20m"))
//                    System.out.println(defValue);
                List col = new ArrayList(6);
                col.add(name);
                col.add(sqlType);
                col.add(size);
                col.add(nullType);
                col.add(defValue);
                col.add(decimalDigits);
                columns.add(col);
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            if (columnSet != null)
            {
                columnSet.close();
            }
        }
        return columns;
    }

    /**
     * Retrieves a list of the columns composing the primary key for a given
     * table.
     *
     * @param dbMeta JDBC metadata.
     * @param tableName Table from which to retrieve PK information.
     * @return A list of the primary key parts for <code>tableName</code>.
     * @throws SQLException
     */
    public List getPrimaryKeys(DatabaseMetaData dbMeta, String tableName)
            throws SQLException
    {
        List pk = new ArrayList();
        ResultSet parts = null;
        try
        {
            parts = dbMeta.getPrimaryKeys(null,  getDbSchema(), tableName);
            while (parts.next())
            {
                pk.add(parts.getString(4));
            }
        }
        finally
        {
            if (parts != null)
            {
                parts.close();
            }
        }
        return pk;
    }
    
    
    /**
     * Retrieves a list of the columns composing the primary key for a given
     * table.
     *
     * @param dbMeta JDBC metadata.
     * @param tableName Table from which to retrieve PK information.
     * @return A list of the primary key parts for <code>tableName</code>.
     * @throws SQLException
     */
    public List getIndexKeys(DatabaseMetaData dbMeta, String tableName)
            throws SQLException
    {
        List uniques = new ArrayList();
        ResultSet parts = null;
        try
        {
            parts = dbMeta.getIndexInfo(null,  getDbSchema(), tableName,true,true);            
            while (parts.next())
            {
                List index = new ArrayList(6);
                
                index.add(parts.getString(3));
                
                uniques.add(index);
                uniques.add(parts.getString(4));
            }
        }
        finally
        {
            if (parts != null)
            {
                parts.close();
            }
        }
        return uniques;
    }

    /**
     * Retrieves a list of foreign key columns for a given table.
     *
     * @param dbMeta JDBC metadata.
     * @param tableName Table from which to retrieve FK information.
     * @return A list of foreign keys in <code>tableName</code>.
     * @throws SQLException
     */
    public Collection getForeignKeys(DatabaseMetaData dbMeta, String tableName)
        throws SQLException
    {
        Hashtable fks = new Hashtable();
        ResultSet foreignKeys = null;
        try
        {
            foreignKeys = dbMeta.getImportedKeys(null,  getDbSchema(), tableName);
            while (foreignKeys.next())
            {
                String refTableName = foreignKeys.getString(3);
                String fkName = foreignKeys.getString(12);
                // if FK has no name - make it up (use tablename instead)
                if (fkName == null)
                {
                    fkName = refTableName;
                }
                Object[] fk = (Object[]) fks.get(fkName);
                List refs;
                if (fk == null)
                {
                    fk = new Object[2];
                    fk[0] = refTableName; //referenced table name
                    refs = new ArrayList();
                    fk[1] = refs;
                    fks.put(fkName, fk);
                }
                else
                {
                    refs = (ArrayList) fk[1];
                }
                String[] ref = new String[2];
                ref[0] = foreignKeys.getString(8); //local column
                ref[1] = foreignKeys.getString(4); //foreign column
                refs.add(ref);
            }
        }
        catch (SQLException e)
        {
            // this seems to be happening in some db drivers (sybase)
            // when retrieving foreign keys from views.
            log("WARN: Could not read foreign keys for Table "
                        + tableName
                        + " : "
                        + e.getMessage(),
                    Project.MSG_WARN);
        }
        finally
        {
            if (foreignKeys != null)
            {
                foreignKeys.close();
            }
        }
        return fks.values();
    }

    public String[] getIncludeTables()
    {
        return includeTables;
    }

    public void setIncludeTables(String[] includeTables)
    {
        this.includeTables = includeTables;
    }

    public String[] getExecludeTables()
    {
        return execludeTables;
    }

    public void setExecludeTables(String[] execludeTables)
    {
        this.execludeTables = execludeTables;
    }

	public void setDBName(String dbname) {
		this.dbname = dbname;
	}
}
