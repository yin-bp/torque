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
 * <p>Title: TorqueDataDumpTaskTest.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2008</p>
 * @Date 2010-1-27 ÏÂÎç02:51:45
 * @author biaoping.yin
 * @version 1.0
 */
public class TorqueDataDumpTaskTest
{
    
    @Test
    public void test() throws Exception
    {
        /**
         * <echo message="+-----------------------------------------------+"/>
            <echo message="|                                               |"/>
            <echo message="| Dumping the data from database into XML       |"/>
            <echo message="|                                               |"/>
            <echo message="+-----------------------------------------------+"/>
        
            <torque-data-dump
              contextProperties="${torque.contextProperties}"
              controlTemplate="${torque.template.dataDump}"
              databaseDriver="${torque.database.driver}"
              databaseName="${torque.database.name}"
              databaseUrl="${torque.database.url}"
              databaseUser="${torque.database.user}"
              databasePassword="${torque.database.password}"
              outputDirectory="${torque.output.dir}"
              outputFile="report.${torque.project}.datadump.generation"
              templatePath="${torque.templatePath}"
              useClasspath="${torque.useClasspath}"
              xmlFile="${torque.schema.dir}/${torque.project}-schema.xml"
            />
         */
        DataDumpTask task = new DataDumpTask();
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
//        task.setContextProperties(file);
        task.setControlTemplate("data/dump/Control.vm");
        
//        task.setDatabaseDriver("oracle.jdbc.driver.OracleDriver");
//        task.setDatabaseUrl("jdbc:oracle:thin:@//172.16.17.219:1521/orcl");
//        task.setDatabaseName("oracle");
//        task.setDatabasePassword("baseline");
//        task.setDatabaseUser("baseline");
        task.setOutputDirectory(new File("torque-test/dump-oracle"));
        task.setOutputFile("amqdumpFile.xml");
        task.setTemplatePath("templates");
        task.setUseClasspath(false);
        task.setXmlFile("torque-test/schema/oracleoutputFile.xml");
        task.execute();
        
        
        
        
        
        
    }

}
