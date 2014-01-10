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

import junit.framework.TestCase;

import org.apache.torque.engine.database.transform.XmlToAppData;

/**
 * Tests for domain handling (for Postgresql).
 *
 * @author <a href="mailto:mpoeschl@marmot.at>Martin Poeschl</a>
 * @version $Id: PostgresqlDomainTest.java 692847 2008-09-07 13:37:40Z tfischer $
 */
public class PostgresqlDomainTest extends TestCase
{
    private XmlToAppData xmlToAppData = null;
    private Database db = null;

    public PostgresqlDomainTest(String name)
    {
        super(name);
    }

    protected void setUp() throws Exception
    {
        super.setUp();
        xmlToAppData = new XmlToAppData("postgresql", "defaultpackage");
        db = xmlToAppData.parseFile(
            "src/test/java/org/apache/torque/engine/database/model/domaintest-schema.xml");
    }

    protected void tearDown() throws Exception
    {
        xmlToAppData = null;
        super.tearDown();
    }

    /**
     * test if the tables get the package name from the properties file
     */
    public void testDomainColumn() throws Exception
    {
        Table table = db.getTable("product");
        Column name = table.getColumn("name");
        assertEquals("VARCHAR", name.getDomain().getSqlType());
        assertEquals("40", name.getSize());
        assertEquals("name VARCHAR(40)", name.getSqlString());
        Column price = table.getColumn("price");
        assertEquals("NUMERIC", price.getTorqueType());
        assertEquals("NUMERIC", price.getDomain().getSqlType());
        assertEquals("10", price.getSize());
        assertEquals("2", price.getScale());
        assertEquals("0", price.getDefaultValue());
        assertEquals("(10,2)", price.printSize());
        assertEquals("price NUMERIC(10,2) default 0", price.getSqlString());
    }

    /**
     * test if the tables get the package name from the properties file
     */
    public void testExtendedDomainColumn() throws Exception
    {
        Table table = db.getTable("article");
        Column price = table.getColumn("price");
        assertEquals("NUMERIC", price.getTorqueType());
        assertEquals("NUMERIC", price.getDomain().getSqlType());
        assertEquals("12", price.getSize());
        assertEquals("2", price.getScale());
        assertEquals("1000", price.getDefaultValue());
        assertEquals("(12,2)", price.printSize());
        assertEquals("price NUMERIC(12,2) default 1000", price.getSqlString());
    }

    public void testDecimalColumn() throws Exception
    {
        Table table = db.getTable("article");
        Column col = table.getColumn("decimal_col");
        assertEquals("DECIMAL", col.getTorqueType());
        assertEquals("DECIMAL", col.getDomain().getSqlType());
        assertEquals("10", col.getSize());
        assertEquals("3", col.getScale());
        assertEquals("(10,3)", col.printSize());
        assertEquals("decimal_col DECIMAL(10,3)", col.getSqlString());
    }

    public void testDateColumn() throws Exception
    {
        Table table = db.getTable("article");
        Column col = table.getColumn("date_col");
        assertEquals("DATE", col.getTorqueType());
        assertEquals("DATE", col.getDomain().getSqlType());
        assertEquals("", col.printSize());
        assertEquals("date_col DATE", col.getSqlString());
    }

    public void testNativeAutoincrement() throws Exception
    {
        Table table = db.getTable("native");
        Column col = table.getColumn("native_id");
        assertEquals("", col.getAutoIncrementString());
        assertEquals("native_id INTEGER NOT NULL", col.getSqlString());
        col = table.getColumn("name");
        assertEquals("", col.getAutoIncrementString());
    }

    public void testIdBrokerAutoincrement() throws Exception
    {
        Table table = db.getTable("article");
        Column col = table.getColumn("article_id");
        assertEquals("", col.getAutoIncrementString());
        assertEquals("article_id INTEGER NOT NULL", col.getSqlString());
        col = table.getColumn("name");
        assertEquals("", col.getAutoIncrementString());
    }

    public void testBooleanint() throws Exception
    {
        Table table = db.getTable("types");
        Column col = table.getColumn("cbooleanint");
        assertEquals("", col.getAutoIncrementString());
        assertEquals("BOOLEANINT", col.getTorqueType());
        assertEquals("INT2", col.getDomain().getSqlType());
        assertEquals("cbooleanint INT2", col.getSqlString());
    }

}