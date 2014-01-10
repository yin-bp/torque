/*
 *  Copyright 2008 biaoping.yin
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

package org.apache.torque.task;

import java.io.File;

import org.junit.Test;

/**
 * <p>Title: TestTorqueDataModelTask.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2008</p>
 * @Date 2010-1-27 ÏÂÎç01:54:12
 * @author biaoping.yin
 * @version 1.0
 */
public class TorqueDataModelTaskTest
{
    @Test
    public void test()
    {
        TorqueDataModelTask task = new TorqueDataModelTask();
        /**
         *  <torque-data-model
      controlTemplate="${torque.template.sqlDbInit}"
      outputDirectory="${torque.sql.dir}"
      outputFile="create-db.sql"
      targetDatabase="${torque.database}"
      templatePath="${torque.templatePath}"
      useClasspath="${torque.useClasspath}">
      <fileset dir="${torque.schema.dir}"
        includes="${torque.schema.create-db.includes}"
        excludes="${torque.schema.create-db.excludes}"
      />
    </torque-data-model>

    <echo>
      Executing the create-db.sql script ...
    </echo>

    <sql
      autocommit="true"
      driver="${torque.database.driver}"
      onerror="continue"
      password="${torque.database.password}"
      src="${torque.sql.dir}/create-db.sql"
      url="${torque.database.createUrl}"
      userid="${torque.database.user}">
      <classpath refid="torque-classpath"/>
    </sql>
         */
        task.setControlTemplate("sql/db-init/Control.vm");
        task.setOutputDirectory(new File("torque-test/sql"));
        task.setOutputFile("create-db.sql");
        task.setTargetDatabase("oracle");
//        task.settOutputDirectory(new File("torque-temp/sql"));
        task.setXmlFile("d:/oracleoutputFile.xml");
        task.setUseClasspath(true);
        task.execute();
        
    }
}
