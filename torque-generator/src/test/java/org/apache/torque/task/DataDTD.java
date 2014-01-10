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
 * <p>Title: DataDTD.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2008</p>
 * @Date 2010-1-29 ÏÂÎç04:43:16
 * @author biaoping.yin
 * @version 1.0
 */
public class DataDTD
{
    @Test
    public void test()
    {
//        <!-- ================================================================ -->
//        <!-- G E N E R A T E  P R O J E C T  D A T A  D T D                   -->
//        <!-- ================================================================ -->
//        <!-- Generate the DATA DTD for your project                           -->
//        <!-- ================================================================ -->
//
//        <target
//          name="datadtd"
//          description="==> generates the DATA DTD for your project">
//
//          <echo message="+-----------------------------------------------+"/>
//          <echo message="|                                               |"/>
//          <echo message="| Generating Data DTD for YOUR Torque project!  |"/>
//          <echo message="|                                               |"/>
//          <echo message="+-----------------------------------------------+"/>
//
//          <torque-data-model
//            contextProperties="${torque.contextProperties}"
//            controlTemplate="${torque.template.dataDtd}"
//            outputDirectory="${torque.schema.dir}"
//            outputFile="report.${torque.project}.datadtd.generation"
//            templatePath="${torque.templatePath}"
//            useClasspath="${torque.useClasspath}"
//            xmlFile="${torque.schema.dir}/${torque.project}-schema.xml"
//          />
//        </target>
        TorqueDataModelTask task = new TorqueDataModelTask();
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setControlTemplate("data/Control.vm");
        task.setOutputDirectory(new File("torque-test/dtd"));
        task.setOutputFile("baseline-data.dtd");
        task.setUseClasspath(true);
        task.setXmlFile("torque-test/schema/oracleoutputFile.xml");
        task.execute();
    }
}
