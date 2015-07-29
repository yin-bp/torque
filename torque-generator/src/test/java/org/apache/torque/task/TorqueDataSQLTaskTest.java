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

import org.apache.tools.ant.Project;
import org.junit.Test;

/**
 * <p>Title: TorqueDataSQLTaskTest.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2008</p>
 * @Date 2010-1-27 下午02:49:39
 * @author biaoping.yin
 * @version 1.0
 */
public class TorqueDataSQLTaskTest
{
    @Test
    public void test() throws Exception
    {
        /**
         * <echo message="+-----------------------------------------------+"/>
    <echo message="|                                               |"/>
    <echo message="| Generating SQL from data XML !                |"/>
    <echo message="|                                               |"/>
    <echo message="+-----------------------------------------------+"/>

    <torque-data-sql
      contextProperties="${torque.contextProperties}"
      controlTemplate="${torque.template.dataSql}"
      dataDTD="${torque.schema.dir}/${torque.project}-data.dtd"
      dataXmlFile="${torque.schema.dir}/${torque.project}-data.xml"
      outputDirectory="${torque.output.dir}"
      outputFile="${torque.project}-data.sql"
      sqldbmap="${torque.sql.dir}/sqldb.map"
      targetDatabase="${torque.database}"
      templatePath="${torque.templatePath}"
      useClasspath="${torque.useClasspath}"
      xmlFile="${torque.schema.dir}/${torque.project}-schema.xml"
    />
         */
        TorqueDataSQLTask task = new TorqueDataSQLTask();
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setControlTemplate("sql/load/Control.vm");
        task.setDataDTD("torque-test/dtd/test-data.dtd");
        task.setDataXmlFile("D:/workspace/torque/torque4/torque-generator/torque-test/dump/amqdumpFile.xml");
        task.setOutputDirectory(new File("torque-test/datasql"));
        task.setOutputFile("test-data.sql");
        task.setTargetDatabase("oracle");
        task.setTemplatePath("templates");
        task.setUseClasspath(false);
        task.setSqlDbMap("torque-test/datasql/sqldb.map");
        task.setXmlFile("torque-test/schema/oracleoutputFile.xml");
        task.execute();
        
    }
}
