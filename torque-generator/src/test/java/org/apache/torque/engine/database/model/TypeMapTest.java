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

import java.sql.Types;

import junit.framework.TestCase;

/**
 * Tests for TypeMap.
 *
 * @author <a href="mailto:mpoeschl@marmot.at>Martin Poeschl</a>
 */
public class TypeMapTest extends TestCase {

    public void testGetJavaObject() {
        assertEquals(TypeMap.getJavaObject(SchemaType.INTEGER), "new Integer(0)");
    }

    public void testGetJavaNative() {
        assertEquals(TypeMap.getJavaNative(SchemaType.INTEGER), "int");
    }

    public void testGetJavaNativeObject() {
        assertEquals(TypeMap.getJavaNativeObject(SchemaType.INTEGER), "Integer");
    }

    public void testGetVillageMethod() {
        assertEquals(TypeMap.getVillageMethod(SchemaType.INTEGER), "asInt()");
    }

    public void testGetVillageObjectMethod() {
        assertEquals(TypeMap.getVillageObjectMethod(SchemaType.INTEGER), "asIntegerObj()");
    }

    public void testGetPPMethod() {
        assertEquals(TypeMap.getPPMethod(SchemaType.INTEGER), "getInt(ppKey)");
    }

    public void testGetTorqueType() {
        assertEquals(TypeMap.getTorqueType(new Integer(Types.FLOAT)),
                SchemaType.FLOAT);
        assertEquals(TypeMap.getTorqueType(new Integer(Types.CHAR)),
                SchemaType.CHAR);
    }

    public void testIsBooleanInt() {
        assertFalse(TypeMap.isBooleanInt(SchemaType.FLOAT));
        assertTrue(TypeMap.isBooleanInt(SchemaType.BOOLEANINT));
    }

    public void testIsBooleanChar() {
        assertFalse(TypeMap.isBooleanChar(SchemaType.FLOAT));
        assertTrue(TypeMap.isBooleanChar(SchemaType.BOOLEANCHAR));
    }

    public void testIsTextType() {
        assertFalse(TypeMap.isTextType(SchemaType.FLOAT));
        assertTrue(TypeMap.isTextType(SchemaType.CHAR));
    }

}
