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

import org.apache.torque.engine.database.model.Domain;
import org.apache.torque.engine.database.model.SchemaType;

/**
 * Cloudscape Platform implementation.
 *
 * @author <a href="mailto:mpoeschl@marmot.at">Martin Poeschl</a>
 * @version $Id: PlatformCloudscapeImpl.java 473814 2006-11-11 22:30:30Z tv $
 */
public class PlatformCloudscapeImpl extends PlatformDefaultImpl
{
    /**
     * Default constructor.
     */
    public PlatformCloudscapeImpl()
    {
        super();
        initialize();
    }

    /**
     * Initializes db specific domain mapping.
     */
    private void initialize()
    {
        setSchemaDomainMapping(new Domain(SchemaType.INTEGER, "INT"));
        setSchemaDomainMapping(new Domain(SchemaType.BOOLEANINT, "INT"));
        setSchemaDomainMapping(new Domain(SchemaType.BIGINT, "LONGINT"));
        setSchemaDomainMapping(new Domain(SchemaType.DOUBLE, "DOUBLE PRECISION"));
        setSchemaDomainMapping(new Domain(SchemaType.LONGVARCHAR, "LONG VARCHAR"));
        setSchemaDomainMapping(new Domain(SchemaType.BINARY, "LONG BINARY"));
        setSchemaDomainMapping(new Domain(SchemaType.VARBINARY, "LONG BINARY"));
        setSchemaDomainMapping(new Domain(SchemaType.LONGVARBINARY, "LONG VARBINARY"));
        setSchemaDomainMapping(new Domain(SchemaType.JAVA_OBJECT, "SERIALIZE"));
    }

    /**
     * @see Platform#getAutoIncrement()
     */
    public String getAutoIncrement()
    {
        return "DEFAULT AUTOINCREMENT";
    }

}
