package org.apache.torque.engine.database.transform;

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

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.torque.engine.database.model.Column;
import org.apache.torque.engine.database.model.Database;
import org.apache.torque.engine.database.model.ForeignKey;
import org.apache.torque.engine.database.model.IDMethod;
import org.apache.torque.engine.database.model.Table;
import org.apache.torque.engine.sql.ParseException;
import org.apache.torque.engine.sql.SQLScanner;
import org.apache.torque.engine.sql.Token;

/**
 * A Class that converts an sql input file to a Database structure.
 * The class makes use of SQL Scanner to get
 * sql tokens and the parses these to create the Database
 * class. SQLToAppData is in effect a simplified sql parser.
 *
 * @author <a href="mailto:leon@opticode.co.za">Leon Messerschmidt</a>
 * @author <a href="mailto:jon@latchkey.com">Jon S. Stevens</a>
 * @version $Id: SQLToAppData.java 473814 2006-11-11 22:30:30Z tv $
 */
public class SQLToAppData
{
    private String sqlFile;
    private List tokens;
    private Token token;
    private Database appDataDB;
    private int count;
    private String databaseType;

    /**
     * Create a new class with an input Reader
     *
     * @param sqlFile the sql file
     */
    public SQLToAppData(String sqlFile)
    {
        this.sqlFile = sqlFile;
    }

    /**
     * Create a new class with an input Reader.  This ctor is not used
     * but putting here in the event db.props properties are found to
     * be useful converting sql to xml, the infrastructure will exist
     *
     * @param sqlFile the sql file
     * @param databaseType
     */
    public SQLToAppData(String sqlFile, String databaseType)
    {
        this.sqlFile = sqlFile;
        this.databaseType = databaseType;
    }

    /**
     * Get the current input sql file
     *
     * @return the sql file
     */
    public String getSqlFile()
    {
        return sqlFile;
    }

    /**
     * Set the current input sql file
     *
     * @param sqlFile the sql file
     */
    public void setSqlFile(String sqlFile)
    {
        this.sqlFile = sqlFile;
    }

    /**
     * Move to the next token.
     *
     * @throws ParseException if there is no more tokens available.
     */
    private void next() throws ParseException
    {
        if (count < tokens.size())
        {
            token = (Token) tokens.get(count++);
        }
        else
        {
            throw new ParseException("No More Tokens");
        }
    }

    /**
     * Creates an error condition and adds the line and
     * column number of the current token to the error
     * message.
     *
     * @param name name of the error
     * @throws ParseException
     */
    private void err(String name) throws ParseException
    {
        throw new ParseException (name + " at [ line: " + token.getLine()
                + " col: " + token.getCol() + " ]");
    }

    /**
     * Check if there is more tokens available for parsing.
     *
     * @return true if there are more tokens available
     */
    private boolean hasTokens()
    {
        return count < tokens.size();
    }

    /**
     * Parses a CREATE TABLE FOO command.
     *
     * @throws ParseException
     */
    private void create() throws ParseException
    {
        
        next();
        if (token.getStr().toUpperCase().equals("TABLE"))
        {
            create_Table();
        }
    }

    /**
     * Parses a CREATE TABLE sql command
     *
     * @throws ParseException error parsing the input file
     */
    private void create_Table() throws ParseException
    {
        next();
        String tableName = token.getStr(); // name of the table
        next();
        if (!token.getStr().equals("("))
        {
            err("( expected");
        }
        next();

        Table tbl = new Table (tableName);
        //tbl.setIdMethod("none");
        while (!token.getStr().equals(";"))
        {
            create_Table_Column(tbl);
        }

        if (tbl.getPrimaryKey().size() == 1)
        {
            tbl.setIdMethod(IDMethod.ID_BROKER);
        }
        else
        {
            tbl.setIdMethod(IDMethod.NO_ID_METHOD);
        }
        appDataDB.addTable (tbl);
    }

    /**
     * Parses column information between the braces of a CREATE
     * TABLE () sql statement.
     *
     * @throws ParseException error parsing the input file
     */
    private void create_Table_Column(Table tbl) throws ParseException
    {
        // The token should be the first item
        // which is the name of the column or
        // PRIMARY/FOREIGN/UNIQUE
        if (token.getStr().equals(","))
        {
            next();
        }

        if (token.getStr().toUpperCase().equals("PRIMARY"))
        {
            create_Table_Column_Primary(tbl);
        }
        else if (token.getStr().toUpperCase().equals("FOREIGN"))
        {
            create_Table_Column_Foreign(tbl);
        }
        else if (token.getStr().toUpperCase().equals("UNIQUE"))
        {
            create_Table_Column_Unique(tbl);
        }
        else
        {
            create_Table_Column_Data(tbl);
        }
    }

    /**
     * Parses PRIMARY KEY (FOO,BAR) statement
     *
     * @throws ParseException error parsing the input file
     */
    private void create_Table_Column_Primary (Table tbl) throws ParseException
    {
        next();
        if (!token.getStr().toUpperCase().equals("KEY"))
        {
            err("KEY expected");
        }
        next();
        if (!token.getStr().toUpperCase().equals("("))
        {
            err("( expected");
        }
        next();

        String colName = token.getStr();
        Column c = tbl.getColumn(colName);
        if (c == null)
        {
            err("Invalid column name: " + colName);
        }
        c.setPrimaryKey(true);
        next();
        while (token.getStr().equals(","))
        {
            next();
            colName = token.getStr();
            c = tbl.getColumn(colName);
            if (c == null)
            {
                err("Invalid column name: " + colName);
            }
            c.setPrimaryKey(true);
            next();
        }

        if (!token.getStr().toUpperCase().equals(")"))
        {
            err(") expected");
        }
        next(); // skip the )
    }

    /**
     * Parses UNIQUE (NAME,FOO,BAR) statement
     *
     * @throws ParseException error parsing the input file
     */
    private void create_Table_Column_Unique(Table tbl) throws ParseException
    {
        next();
        if (!token.getStr().toUpperCase().equals("("))
        {
            err("( expected");
        }
        next();
        while (!token.getStr().equals(")"))
        {
            if (!token.getStr().equals(","))
            {
                String colName = token.getStr();
                Column c = tbl.getColumn(colName);
                if (c == null)
                {
                    err("Invalid column name: " + colName);
                }
                c.setUnique(true);
            }
            next();
        }
        if (!token.getStr().toUpperCase().equals(")"))
        {
            err(") expected got: " + token.getStr());
        }

        next(); // skip the )
    }

    /**
     * Parses FOREIGN KEY (BAR) REFERENCES TABLE (BAR) statement
     *
     * @throws ParseException error parsing the input file
     */
    private void create_Table_Column_Foreign(Table tbl) throws ParseException
    {
        next();
        if (!token.getStr().toUpperCase().equals("KEY"))
        {
            err("KEY expected");
        }
        next();
        if (!token.getStr().toUpperCase().equals("("))
        {
            err("( expected");
        }
        next();

        ForeignKey fk = new ForeignKey();
        List localColumns = new ArrayList();
        tbl.addForeignKey(fk);

        String colName = token.getStr();
        localColumns.add(colName);
        next();
        while (token.getStr().equals(","))
        {
            next();
            colName = token.getStr();
            localColumns.add(colName);
            next();
        }
        if (!token.getStr().toUpperCase().equals(")"))
        {
            err(") expected");
        }

        next();

        if (!token.getStr().toUpperCase().equals("REFERENCES"))
        {
            err("REFERENCES expected");
        }

        next();

        fk.setForeignTableName(token.getStr());

        next();

        if (token.getStr().toUpperCase().equals("("))
        {
            next();
            int i = 0;
            fk.addReference((String) localColumns.get(i++), token.getStr());
            next();
            while (token.getStr().equals(","))
            {
                next();
                fk.addReference((String) localColumns.get(i++), token.getStr());
                next();
            }
            if (!token.getStr().toUpperCase().equals(")"))
            {
                err(") expected");
            }
            next();
        }
    }
    
    /**
     * Parses FOREIGN KEY (BAR) REFERENCES TABLE (BAR) statement
     *
     * @throws ParseException error parsing the input file
     */
    private void create_OtherTable_Column_Foreign(Table tbl) throws ParseException
    {
        next();
        if (!token.getStr().toUpperCase().equals("CONSTRAINT"))
        {
            err("CONSTRAINT expected");
        }
        /**
         *     ADD CONSTRAINT MQ_VIRTUAL_NODES_FK_1 
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
         */
        next();
        String keyname = token.getStr();
        next();
        if (!token.getStr().toUpperCase().equals("FOREIGN"))
        {
            err("FOREIGN expected");
        }
        next();
        if (!token.getStr().toUpperCase().equals("KEY"))
        {
            err("KEY expected");
        }
        
        next();
        if (!token.getStr().toUpperCase().equals("("))
        {
            err("( expected");
        }

        ForeignKey fk = new ForeignKey();
        fk.setName(keyname);
        List localColumns = new ArrayList();
        tbl.addForeignKey(fk);
        next();
        String colName = token.getStr();
        localColumns.add(colName);
        next();
        while (token.getStr().equals(","))
        {
            next();
            colName = token.getStr();
            localColumns.add(colName);
            next();
        }
        if (!token.getStr().toUpperCase().equals(")"))
        {
            err(") expected");
        }

        next();

        if (!token.getStr().toUpperCase().equals("REFERENCES"))
        {
            err("REFERENCES expected");
        }

        next();

        fk.setForeignTableName(token.getStr());

        next();

        if (token.getStr().toUpperCase().equals("("))
        {
            next();
            int i = 0;
            fk.addReference((String) localColumns.get(i++), token.getStr());
            next();
            while (token.getStr().equals(","))
            {
                next();
                fk.addReference((String) localColumns.get(i++), token.getStr());
                next();
            }
            if (!token.getStr().toUpperCase().equals(")"))
            {
                err(") expected");
            }
            next();
        }
    }

    /**
     * Parse the data definition of the column statement.
     *
     * @throws ParseException error parsing the input file
     */
    private void create_Table_Column_Data(Table tbl) throws ParseException
    {
        String columnSize = null;
        String columnPrecision = null;
        String columnDefault = null;
        boolean inEnum = false;

        String columnName = token.getStr();
        next();
        String columnType = token.getStr();

        if (columnName.equals(")") && columnType.equals(";"))
        {
            return;
        }

        next();

        // special case for MySQL ENUM's which are stupid anyway
        // and not properly handled by Torque.
        if (columnType.toUpperCase().equals("ENUM"))
        {
            inEnum = true;
            next(); // skip (
            while (!token.getStr().equals(")"))
            {
                // skip until )
                next();
            }
            while (!token.getStr().equals(","))
            {
                if (token.getStr().toUpperCase().equals("DEFAULT"))
                {
                    next();
                    if (token.getStr().equals("'"))
                    {
                        next();
                    }
                    columnDefault = token.getStr();
                    next();
                    if (token.getStr().equals("'"))
                    {
                        next();
                    }
                }
                // skip until ,
                next();
            }
            next(); // skip ,
            columnType = "VARCHAR";
        }
        else if (token.getStr().toUpperCase().equals("("))
        {
            next();
            columnSize = token.getStr();
            next();
            if (token.getStr().equals(","))
            {
                next();
                columnPrecision = token.getStr();
                next();
            }

            if (!token.getStr().equals(")"))
            {
                err(") expected");
            }
            next();
        }

        Column col = new Column(columnName);
        if (columnPrecision != null)
        {
            columnSize = columnSize + columnPrecision;
        }
        col.setTypeFromString(columnType, columnSize);
        tbl.addColumn(col);

        if (inEnum)
        {
            col.setNotNull(true);
            if (columnDefault != null)
            {
                col.setDefaultValue(columnDefault);
            }
        }
        else
        {
            while (!token.getStr().equals(",") && !token.getStr().equals(")"))
            {             
                if (token.getStr().toUpperCase().equals("NOT"))
                {
                    next();
                    if (!token.getStr().toUpperCase().equals("NULL"))
                    {
                        err("NULL expected after NOT");
                    }
                    col.setNotNull(true);
                    next();
                }
                else if (token.getStr().toUpperCase().equals("PRIMARY"))
                {
                    next();
                    if (!token.getStr().toUpperCase().equals("KEY"))
                    {
                        err("KEY expected after PRIMARY");
                    }
                    col.setPrimaryKey(true);
                    next();
                }
                else if (token.getStr().toUpperCase().equals("UNIQUE"))
                {
                    col.setUnique(true);
                    next();
                }
                else if (token.getStr().toUpperCase().equals("NULL"))
                {
                    col.setNotNull(false);
                    next();
                }
                else if (token.getStr().toUpperCase().equals("AUTO_INCREMENT"))
                {
                    col.setAutoIncrement(true);
                    next();
                }
                else if (token.getStr().toUpperCase().equals("DEFAULT"))
                {
                    next();
                  //@fixed begin by biaoping.yin 2010.01.27
                    //fixed before
//                    if (token.getStr().equals("'"))
//                    {                     
//                        next();
//                    }
//                    col.setDefaultValue(token.getStr());
//                    next();
//                    
//                    if (token.getStr().equals("'"))
//                    {
//                        next();
//                    }
                  //fixed after
                    boolean ischar = false;                    
                    if (token.getStr().equals("'"))
                    {
                        ischar = true;
                        next();
                    }
                     
                    StringBuffer value = new StringBuffer(token.getStr());
                    if(ischar)
                    {
                        next();
                        
                        while(!token.getStr().equals("'"))
                        {
                            value.append(token.getStr());
                            next();
                        }
                        col.setDefaultValue(value.toString());
                        next();
                        
                    }
                    else
                    {
                        col.setDefaultValue(value.toString());
                        next();
                        
                        if (token.getStr().equals("'"))
                        {
                            next();
                        }
                    }
                  //@fixed end by biaoping.yin 2010.01.27  
                }
                else
                {
                    StringBuffer line = new StringBuffer();
                    for (Iterator tokenIt = tokens.iterator();
                       tokenIt.hasNext();)
                    {
                        line.append(tokenIt.next());
                        if (tokenIt.hasNext())
                        {
                            line.append(" ");
                        }
                    }
                    
                    throw new ParseException("Error parsing line "
                            + line + " : Unknown token Nr. "
                            + count
                            + " : "
                            + token);
                }
            }
            next(); // eat the ,
        }
    }

    /**
     * Execute the parser.
     *
     * @throws IOException If an I/O error occurs
     * @throws ParseException error parsing the input file
     */
    public Database execute() throws IOException, ParseException
    {
        count = 0;
        appDataDB = new Database(databaseType);

        FileReader fr = new FileReader(sqlFile);
        BufferedReader br = new BufferedReader(fr);
        SQLScanner scanner = new SQLScanner(br);

        tokens = scanner.scan();

        br.close();
        
        
        while (hasTokens())
        {
            if (token == null)
            {
                next();
            }
            //FIXED 已经处理
            if(this.token.getStr().toUpperCase().equals("ALTER"))
               
            {
                addConstraint();
                
            }

            if (token.getStr().toUpperCase().equals("CREATE"))
            {
                create();
            }
            if (hasTokens())
            {
                next();
            }
        }
        return appDataDB;
    }

    /**
     * @throws ParseException 
     * 
     */
    private void addConstraint() throws ParseException
    {
        next();
        
        if (!token.getStr().toUpperCase().equals("TABLE"))
        {
            err("TABLE expected");
        }
        next();
        
        String tablename = this.token.getStr();
        Table tbl = this.appDataDB.getTable(tablename);
        next();

        if (!token.getStr().toUpperCase().equals("ADD"))
        {
            err("ADD expected");
        }
        create_OtherTable_Column_Foreign(tbl);
        
    }
}
