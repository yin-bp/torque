package org.apache.torque.engine.database.model;

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

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.ListOrderedMap;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.torque.engine.EngineException;
import org.apache.torque.engine.database.transform.DTDResolver;
import org.apache.torque.engine.platform.Platform;
import org.apache.torque.engine.platform.PlatformFactory;

import org.xml.sax.Attributes;


/**
 * A class for holding application data structures.
 *
 * @author <a href="mailto:leon@opticode.co.za>Leon Messerschmidt</a>
 * @author <a href="mailto:jmcnally@collab.net>John McNally</a>
 * @author <a href="mailto:mpoeschl@marmot.at>Martin Poeschl</a>
 * @author <a href="mailto:dlr@collab.net>Daniel Rall</a>
 * @author <a href="mailto:byron_foster@byron_foster@yahoo.com>Byron Foster</a>
 * @author <a href="mailto:monroe@dukece.com>Greg Monroe</a>
 * @version $Id: Database.java 473814 2006-11-11 22:30:30Z tv $
 */
public class Database
{
    /** Logging class from commons.logging */
    private static Log log = LogFactory.getLog(Database.class);

    private String databaseType = null;
    private List tableList = new ArrayList(100);
    private Map domainMap = new HashMap();
    private String name;
    private String javaName;
    private String pkg;
    private String baseClass;
    private String basePeer;
    private String defaultIdMethod;
    private String defaultJavaType;
    private String defaultJavaNamingMethod;
    private Hashtable tablesByName = new Hashtable();
    private Hashtable tablesByJavaName = new Hashtable();
    private boolean heavyIndexing;
    /** the name of the definition file */
    private String fileName;
    private Map options = Collections.synchronizedMap(new ListOrderedMap());


    /**
     * Creates a new instance for the specified database type.
     *
     * @param databaseType The default type for this database.
     */
    public Database(String databaseType)
    {
        this.databaseType = databaseType;
    }

    /**
     * Load the database object from an xml tag.
     *
     * @param attrib the xml attributes
     */
    public void loadFromXML(Attributes attrib)
    {
        setName(attrib.getValue("name"));
        pkg = attrib.getValue("package");
        baseClass = attrib.getValue("baseClass");
        basePeer = attrib.getValue("basePeer");
        defaultJavaType = attrib.getValue("defaultJavaType");
        defaultIdMethod = attrib.getValue("defaultIdMethod");
        defaultJavaNamingMethod = attrib.getValue("defaultJavaNamingMethod");
        if (defaultJavaNamingMethod == null)
        {
            defaultJavaNamingMethod = NameGenerator.CONV_METHOD_UNDERSCORE;
        }
        heavyIndexing = "true".equals(attrib.getValue("heavyIndexing"));
    }

    /**
     * Get the name of the Database
     *
     * @return name of the Database
     */
    public String getName()
    {
        return name;
    }

    /**
     * Set the name of the Database
     *
     * @param name name of the Database
     */
    public void setName(String name)
    {
        /** @task check this */
//        this.name = (name == null ? Torque.getDefaultDB() : name);
        this.name = (name == null ? "default" : name);
    }

    public String getFileName()
    {
        return fileName;
    }

    public void setFileName(String name)
    {
        this.fileName = name;
    }

    /**
     * Get the value of package.
     * @return value of package.
     */
    public String getPackage()
    {
        return pkg;
    }

    /**
     * Set the value of package.
     * @param v  Value to assign to package.
     */
    public void setPackage(String v)
    {
        this.pkg = v;
    }

    /**
     * Get the value of baseClass.
     * @return value of baseClass.
     */
    public String getBaseClass()
    {
        if (baseClass == null)
        {
            return "BaseObject";
        }
        return baseClass;
    }

    /**
     * Set the value of baseClass.
     * @param v  Value to assign to baseClass.
     */
    public void setBaseClass(String v)
    {
        this.baseClass = v;
    }

    /**
     * Get the value of basePeer.
     * @return value of basePeer.
     */
    public String getBasePeer()
    {
        if (basePeer == null)
        {
            return "BasePeer";
        }
        return basePeer;
    }

    /**
     * Set the value of basePeer.
     * @param v Value to assign to basePeer.
     */
    public void setBasePeer(String v)
    {
        this.basePeer = v;
    }

    /**
     * Get the value of defaultIdMethod.
     * @return value of defaultIdMethod.
     */
    public String getDefaultIdMethod()
    {
        return defaultIdMethod;
    }

    /**
     * Set the value of defaultIdMethod.
     * @param v Value to assign to defaultIdMethod.
     */
    public void setDefaultIdMethod(String v)
    {
        this.defaultIdMethod = v;
    }

    /**
     * Get type to use in Java sources (primitive || object)
     *
     * @return the type to use
     */
    public String getDefaultJavaType()
    {
        return defaultJavaType;
    }

    /**
     * Get the value of defaultJavaNamingMethod which specifies the
     * method for converting schema names for table and column to Java names.
     *
     * @return The default naming conversion used by this database.
     */
    public String getDefaultJavaNamingMethod()
    {
        return defaultJavaNamingMethod;
    }

    /**
     * Set the value of defaultJavaNamingMethod.
     * @param v The default naming conversion for this database to use.
     */
    public void setDefaultJavaNamingMethod(String v)
    {
        this.defaultJavaNamingMethod = v;
    }

    /**
     * Get the value of heavyIndexing.
     * @return value of heavyIndexing.
     */
    public boolean isHeavyIndexing()
    {
        return heavyIndexing;
    }

    /**
     * Set the value of heavyIndexing.
     * @param v  Value to assign to heavyIndexing.
     */
    public void setHeavyIndexing(boolean v)
    {
        this.heavyIndexing = v;
    }

    /**
     * Return an List of all tables
     *
     * @return List of all tables
     */
    public List getTables()
    {
        return tableList;
    }

    /**
     * Return the table with the specified name.
     *
     * @param name table name
     * @return A Table object.  If it does not exist it returns null
     */
    public Table getTable(String name)
    {
        return (Table) tablesByName.get(name);
    }

    /**
     * Return the table with the specified javaName.
     *
     * @param javaName name of the java object representing the table
     * @return A Table object.  If it does not exist it returns null
     */
    public Table getTableByJavaName(String javaName)
    {
        return (Table) tablesByJavaName.get(javaName);
    }

    /**
     * An utility method to add a new table from an xml attribute.
     *
     * @param attrib the xml attributes
     * @return the created Table
     */
    public Table addTable(Attributes attrib)
    {
        Table tbl = new Table();
        tbl.setDatabase(this);
        tbl.loadFromXML(attrib, this.getDefaultIdMethod());
        addTable(tbl);
        return tbl;
    }

    /**
     * Add a table to the list and sets the Database property to this Database
     *
     * @param tbl the table to add
     */
    public void addTable(Table tbl)
    {
        tbl.setDatabase(this);
        tbl.setPosition(this.tableList.size());
        tableList.add(tbl);
        
        tablesByName.put(tbl.getName(), tbl);
        tablesByJavaName.put(tbl.getJavaName(), tbl);
        tbl.setPackage(getPackage());
    }

    public void addDomain(Domain domain)
    {
        domainMap.put(domain.getName(), domain);
    }

    public Domain getDomain(String domainName)
    {
        return (Domain) domainMap.get(domainName);
    }

    protected String getDatabaseType()
    {
        return databaseType;
    }

    public void setDatabaseType(String databaseType)
    {
        this.databaseType = databaseType;
    }

    /**
     * Returns the Platform implementation for this database.
     *
     * @return a Platform implementation
     */
    public Platform getPlatform()
    {
        return PlatformFactory.getPlatformFor(databaseType);
    }

    /**
     * Determines if this database will be using the
     * <code>IDMethod.ID_BROKER</code> to create ids for torque OM
     * objects.
     * @return true if there is at least one table in this database that
     * uses the <code>IDMethod.ID_BROKER</code> method of generating
     * ids. returns false otherwise.
     */
    public boolean requiresIdTable()
    {
        Iterator iter = getTables().iterator();
        while (iter.hasNext())
        {
            Table table = (Table) iter.next();
            if (table.getIdMethod().equals(IDMethod.ID_BROKER))
            {
                return true;
            }
        }
        return false;
    }
   //FIX reorder the tables sequence by foreignkeys
   //FIX constraint error;
    private void reorderTablesByReferences()
    {
        doOrder();
    }
    
    private Table in(String tableName ,List<Table> tables)
    {
        for(Table t : tables)
        {
            if(t.getName().equals(tableName))
                return t;
        }
        return null;
    }
    
    private void doOrder()
    {
        //一次分类
        for(int i = 0; tableList != null && i < this.tableList.size(); i ++)
        {
            Table table = (Table)this.tableList.get(i);
            if(table.getForeignTableNames().size() > 0)
            {
                this.hasforeigntracks.add(table);
            }
            else
            {
                table.setPosition(tracks.size());
                this.tracks.add(table);
            }
            
        }
        //二次分类
        for(int i = 0; hasforeigntracks != null && i < hasforeigntracks.size(); i ++)
        {
            Table table = (Table)this.hasforeigntracks.get(i);
            if(table.getReferrers() != null && table.getReferrers().size() > 0)
            {

                this.hasrefforeigntracks.add(table);
            }
            else
            {

                this.norefforeigntracks.add(table);
            }                
        }
        
        
        
        //三次分类,对 有外键有引用表集合  进行再次在hasrefforeigntracks内进行排序       
        /**
         * B中的表对应的B集合中的应用表，需要再次排序
         */        

        List<Table> tablerefinc = new ArrayList<Table>(); 
        List<Table> tablerefinb = new ArrayList<Table>();
        /**
         * 排序规则：
         * 0----------------------------------------------------------------------------hasrefforeigntracks.size()
         * 引用表在C中                    引用表在B中                    
         * 
         * 说明:B---有外键有引用表集合（hasrefforeigntracks） C----有外键无引用表结合(norefforeigntracks)
         * 
         */
        for(int i = 0; hasrefforeigntracks != null && i < hasrefforeigntracks.size(); i ++)
        {
            Table table = (Table)this.hasrefforeigntracks.get(i);
            List<ForeignKey> rtbls = table.getReferrers();
            
            boolean flag = false;
            for(int j = 0; j < rtbls.size(); j ++)
            {
                String rtbl = rtbls.get(j).getTableName();
                Table t = in(rtbl,hasrefforeigntracks);
                if(t != null)
                {
                     flag = true;
                }
            }            
            if(flag)
            {
                tablerefinb.add(table);
            }
            else
            {
                tablerefinc.add(table);
            }
        }
        
        
        hasrefforeigntracks.clear();
        hasrefforeigntracks.addAll(tablerefinc);
        tablerefinc.clear();
        
        /**
         *  4+n次分类, tablerefinb
         * 排序规则：
         * 0----------------------------------------------------------------------------hasrefforeigntracks.size()
         * 引用表在C中                    引用表在B中                    
         * 
         * 说明:B---引用表B（tablerefinb） C----引用表C(tablerefinc)
         * 
         */
        while(tablerefinb.size() > 0)        {
	         
	        List<Table> intablerefinb = new ArrayList<Table>();
	       
	        for(int i = 0; i < tablerefinb.size(); i ++)
	        {
	            Table table = tablerefinb.get(i);
	            List<ForeignKey> rtbls = table.getReferrers();
	            
	            boolean flag = false;
	            for(int j = 0; j < rtbls.size(); j ++)
	            {
	                String rtbl = rtbls.get(j).getTableName();
	                Table t = in(rtbl,tablerefinb);
	                if(t != null)
	                {
	                     flag = true;
	                }
	            }            
	            if(flag)
	            {
	            	intablerefinb.add(table);
	            }
	            else
	            {
	                tablerefinc.add(table);
	            }	            
	        }	 
	        if(tablerefinc.size() > 0)
	        {
	            hasrefforeigntracks.addAll(tablerefinc);
	            tablerefinc.clear();
	        }
	        else
	        {
	            System.out.println();
	            hasrefforeigntracks.addAll(intablerefinb);
	            intablerefinb.clear();
	        }
	        tablerefinb.clear();
	        if(intablerefinb.size() > 0)
	            tablerefinb.addAll(intablerefinb);
	        
        }
        
        
        /******
         * 排序规则：
         * 0-------------------------------------------------------tableList.size()
         *                 有外键表                                                                          无外键表(A)          -------第一次排序 
         * 有外键无引用表结合(C)      有外键有引用表集合(B)                          -------第二次排序  
         *                        引用表在 C中          引用表在B中                                                                -------第三次排序
         *                                   4+n次拆分                                                                              -------4+n次排序
         */
        //汇总结果集
        this.tableList.clear();
        
        
      
        int k = 0;

        
        for(int i = 0 ; i < this.norefforeigntracks.size(); i ++)
          {
            Table t = norefforeigntracks.get(i);
            t.setPosition(k);
              this.tableList.add(t);
              k ++;
          }
          

        for(int i = 0 ; i < hasrefforeigntracks.size(); i ++)
          {
              Table t = hasrefforeigntracks.get(i);
              t.setPosition(k);
              this.tableList.add(t);
              k ++;
          }
          for(int i = 0 ; i < this.tracks.size(); i ++)
          {
              Table t = tracks.get(i);
              t.setPosition(k);
              this.tableList.add(t);
              k ++;
          }
        
        
    }
    
    /***************
     * 一级分类：无外键表集合，外键表集合
     **************/
    /**
     * 无外键表集合
     */
    private List<Table> tracks = new ArrayList<Table>();
    /**
     * 有外键表集合
     */
    private List<Table> hasforeigntracks = new ArrayList<Table>();
    
    /********************************
     * 二级分类，有外键表集合细分
     ********************************/
    
    /**
     * 有外键无引用表集合
     */
    private List<Table> norefforeigntracks = new ArrayList<Table>();
    
    
    /**
     * 有外键有引用表集合
     */
    private List<Table> hasrefforeigntracks = new ArrayList<Table>();
    
    
   
    /**
     * Initializes the model.
     * 
     *
     * @throws EngineException
     */
    public void doFinalInitialization() throws EngineException
    {
    	//FIX reorder the tables sequence by foreignkeys
        Iterator iter = getTables().iterator();
        while (iter.hasNext())
        {
            Table currTable = (Table) iter.next();

            // check schema integrity
            // if idMethod="autoincrement", make sure a column is
            // specified as autoIncrement="true"
            // FIXME: Handle idMethod="native" via DB adapter.
            // TODO autoincrement is no longer supported!!!
            if (currTable.getIdMethod().equals("autoincrement"))
            {
                boolean foundOne = false;
                Iterator colIter = currTable.getColumns().iterator();
                while (colIter.hasNext() && !foundOne)
                {
                    foundOne = ((Column) colIter.next()).isAutoIncrement();
                }

                if (!foundOne)
                {
                    String errorMessage = "Table '" + currTable.getName()
                            + "' is marked as autoincrement, but it does not "
                            + "have a column which declared as the one to "
                            + "auto increment (i.e. autoIncrement=\"true\")\n";
                    throw new EngineException("Error in XML schema: " + errorMessage);
                }
            }

            currTable.doFinalInitialization();

            // setup reverse fk relations
            Iterator fks = currTable.getForeignKeys().iterator();
            while (fks.hasNext())
            {
                ForeignKey currFK = (ForeignKey) fks.next();
                Table foreignTable = getTable(currFK.getForeignTableName());
                if (foreignTable == null)
                {
                	foreignTable = new Table (currFK.getForeignTableName());
                	List cls = currFK.getForeignColumns();
                	for(int i = 0; i < cls.size(); i ++)
                	{
	                	Column cl = new Column((String)cls.get(i));
	                	foreignTable.addColumn(cl);
                	}
                	foreignTable.setDatabase(this);
                	
//                    throw new EngineException("Attempt to set foreign"
//                            + " key to nonexistent table, "
//                            + currFK.getForeignTableName());
                }
//                else
                {
                    // TODO check type and size
                    List referrers = foreignTable.getReferrers();
                    if ((referrers == null || !referrers.contains(currFK)))
                    {
                        foreignTable.addReferrer(currFK);
                    }

                    // local column references
                    Iterator localColumnNames = currFK.getLocalColumns().iterator();
                    while (localColumnNames.hasNext())
                    {
                        Column local = currTable
                                .getColumn((String) localColumnNames.next());
                        // give notice of a schema inconsistency.
                        // note we do not prevent the npe as there is nothing
                        // that we can do, if it is to occur.
                        if (local == null)
                        {
                            throw new EngineException("Attempt to define foreign"
                                    + " key with nonexistent column in table, "
                                    + currTable.getName());
                        }
                        else
                        {
                            //check for foreign pk's
                            if (local.isPrimaryKey())
                            {
                                currTable.setContainsForeignPK(true);
                            }
                        }
                    }

                    // foreign column references
                    Iterator foreignColumnNames
                            = currFK.getForeignColumns().iterator();
                    while (foreignColumnNames.hasNext())
                    {
                        String foreignColumnName = (String) foreignColumnNames.next();
                        Column foreign = foreignTable.getColumn(foreignColumnName);
                        // if the foreign column does not exist, we may have an
                        // external reference or a misspelling
                        if (foreign == null)
                        {
                            throw new EngineException("Attempt to set foreign"
                                    + " key to nonexistent column: table="
                                    +  currTable.getName() + ", foreign column="
                                    +  foreignColumnName);
                        }
                        else
                        {
                            foreign.addReferrer(currFK);
                        }
                    }
                }
            }
        }
        //根据表与表之间的引用关系对所有表进行排序，引用表靠前-->引用其他表又被引用表--->自己引用自己表--->被引用表
        reorderTablesByReferences();
    }

    /**
     * Get the base name to use when creating related Java Classes.
     *
     * @return A Java syntax capatible version of the dbName using the method
     *         defined by the defaultJavaNamingMethod XML value.
     */
    public String getJavaName()
    {
        if (javaName == null)
        {
            List inputs = new ArrayList(2);
            inputs.add(name);
            inputs.add(defaultJavaNamingMethod);
            try
            {
                javaName = NameFactory.generateName(NameFactory.JAVA_GENERATOR,
                                                    inputs);
            }
            catch (EngineException e)
            {
                log.error(e, e);
            }
        }
        return javaName;
    }

    /**
     * Convert dbName to a Java compatible name by the JavaName method only
     * (ignores the defaultJavaNamingMethod).
     *
     * @return The current dbName converted to a standard format that can
     *          be used as part of a Java Object name.
     */
    public String getStandardJavaName()
    {
        if (javaName == null)
        {
            List inputs = new ArrayList(2);
            inputs.add(name);
            inputs.add(NameGenerator.CONV_METHOD_JAVANAME);
            try
            {
                javaName = NameFactory.generateName(NameFactory.JAVA_GENERATOR,
                                                    inputs);
            }
            catch (EngineException e)
            {
                log.error(e, e);
            }
        }
        return javaName;
    }

    /**
     * Creats a string representation of this Database.
     * The representation is given in xml format.
     *
     * @return string representation in xml
     */
    public String toString()
    {
        StringBuffer result = new StringBuffer();

        result.append ("<?xml version=\"1.0\"?>\n");
        result.append ("<!DOCTYPE database SYSTEM \""
                + DTDResolver.WEB_SITE_DTD + "\">\n");
        result.append("<!-- Autogenerated by SQLToXMLSchema! -->\n");
        result.append("<database name=\"").append(getName()).append('"')
            .append(" package=\"").append(getPackage()).append('"')
            .append(" defaultIdMethod=\"").append(getDefaultIdMethod())
            .append('"')
            .append(" baseClass=\"").append(getBaseClass()).append('"')
            .append(" basePeer=\"").append(getBasePeer()).append('"')
            .append(">\n");

        for (Iterator i = tableList.iterator(); i.hasNext();)
        {
            result.append(i.next());
        }

        result.append("</database>");
        return result.toString();
    }

    /**
     * Add an XML Specified option key/value pair to this element's option set.
     *
     * @param key the key of the option.
     * @param value the value of the option.
     */
    public void addOption(String key, String value)
    {
        options.put(key, value);
    }

    /**
     * Get the value that was associated with this key in an XML option
     * element.
     *
     * @param key the key of the option.
     * @return The value for the key or a null.
     */
    public String getOption(String key)
    {
        return (String) options.get(key);
    }

    /**
     * Gets the full ordered hashtable array of items specified by XML option
     * statements under this element.<p>
     *
     * Note, this is not thread save but since it's only used for
     * generation which is single threaded, there should be minimum
     * danger using this in Velocity.
     *
     * @return An Map of all options. Will not be null but may be empty.
     */
    public Map getOptions()
    {
        return options;
    }
}
