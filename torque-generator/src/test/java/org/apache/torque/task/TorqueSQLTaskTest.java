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
 * <p>Title: TestTorqueSQLTask.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2008</p>
 * @Date 2010-1-27 下午02:24:03
 * @author biaoping.yin
 * @version 1.0
 */
public class TorqueSQLTaskTest
{
    @Test
    public void testDerby() throws Exception
    {
        TorqueSQLTask task = new TorqueSQLTask();
        /**
         * <torque-sql
      contextProperties="${torque.contextProperties}"
      controlTemplate="${torque.template.sql}"
      idTableXMLFile="${torque.idTableXMLFile}"
      outputDirectory="${torque.sql.dir}"
      outputFile="report.${torque.project}.sql.generation"
      sqldbmap="${torque.sql.dir}/sqldb.map"
      targetDatabase="${torque.database}"
      useClasspath="${torque.useClasspath}">
      <fileset dir="${torque.schema.dir}"
        includes="${torque.schema.sql.includes}"
        excludes="${torque.schema.sql.excludes}"
      />
    </torque-sql>
         */
//        task.setContextProperties("D:\\workspace\\torque\\torque4\\torque-generator\\src\\conf\\build.properties");
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setControlTemplate("sql/base/Control.vm");
        task.setUseClasspath(false);
        task.setTemplatePath("templates");
//        task.setIdTableXMLFile("D:\\workspace\\torque\\torque4\\torque-generator/src/schema/id-table-schema.xml");
        task.setOutputDirectory(new File("torque-test/sql-derby"));
        task.setOutputFile("test.sql.generation");
        task.setTargetDatabase("derby");
        task.setXmlFile("torque-test/schema/oracleoutputFile.xml");
        task.execute();
        
    }
    
    @Test
    public void testoracle() throws Exception
    {
        TorqueSQLTask task = new TorqueSQLTask();
        /**
         * <torque-sql
      contextProperties="${torque.contextProperties}"
      controlTemplate="${torque.template.sql}"
      idTableXMLFile="${torque.idTableXMLFile}"
      outputDirectory="${torque.sql.dir}"
      outputFile="report.${torque.project}.sql.generation"
      sqldbmap="${torque.sql.dir}/sqldb.map"
      targetDatabase="${torque.database}"
      useClasspath="${torque.useClasspath}">
      <fileset dir="${torque.schema.dir}"
        includes="${torque.schema.sql.includes}"
        excludes="${torque.schema.sql.excludes}"
      />
    </torque-sql>
         */
//        task.setContextProperties("D:\\workspace\\torque\\torque4\\torque-generator\\src\\conf\\build.properties");
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setControlTemplate("sql/base/Control.vm");
        task.setUseClasspath(false);
//        task.setIdTableXMLFile("D:\\workspace\\torque\\torque4\\torque-generator/src/schema/id-table-schema.xml");
        task.setOutputDirectory(new File("torque-test/sql-oracle"));
        task.setOutputFile("test.sql.generation");
        task.setTargetDatabase("oracle");
        task.setTemplatePath("templates");
        task.setXmlFile("torque-test/schema/oracleoutputFile.xml");
        task.execute();
        
    }
    
    @Test
    public void testmysql() throws Exception
    {
        TorqueSQLTask task = new TorqueSQLTask();
        /**
         * <torque-sql
      contextProperties="${torque.contextProperties}"
      controlTemplate="${torque.template.sql}"
      idTableXMLFile="${torque.idTableXMLFile}"
      outputDirectory="${torque.sql.dir}"
      outputFile="report.${torque.project}.sql.generation"
      sqldbmap="${torque.sql.dir}/sqldb.map"
      targetDatabase="${torque.database}"
      useClasspath="${torque.useClasspath}">
      <fileset dir="${torque.schema.dir}"
        includes="${torque.schema.sql.includes}"
        excludes="${torque.schema.sql.excludes}"
      />
    </torque-sql>
         */
//        task.setContextProperties("D:\\workspace\\torque\\torque4\\torque-generator\\src\\conf\\build.properties");
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setControlTemplate("sql/base/Control.vm");
        task.setUseClasspath(false);
//        task.setIdTableXMLFile("D:\\workspace\\torque\\torque4\\torque-generator/src/schema/id-table-schema.xml");
        task.setOutputDirectory(new File("torque-test/sql-mysql"));
        task.setOutputFile("test.sql.generation");
        task.setTargetDatabase("mysql");
        task.setTemplatePath("templates");
        task.setXmlFile("torque-test/schema/oracleoutputFile.xml");
        task.execute();
    }
}
