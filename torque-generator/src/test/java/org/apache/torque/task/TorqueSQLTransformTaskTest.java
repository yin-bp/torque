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

import org.apache.tools.ant.Project;
import org.junit.Test;

/**
 * <p>Title: TorqueSQLTransformTaskTest.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2008</p>
 * @Date 2010-1-28 上午09:46:07
 * @author biaoping.yin
 * @version 1.0
 */
public class TorqueSQLTransformTaskTest
{
    @Test
    public void test()
    {
        /**
         * <!-- =================================================================== -->
  <!-- S Q L  T O  X M L                                                   -->
  <!-- =================================================================== -->
  <!-- Create an xml schema from an sql schema.                            -->
  <!--                                                                     -->
  <!--  inputFile: The input sql file. This must be valid sql file but     -->
  <!--             it not not be in any specific format.                   -->
  <!-- outputFile: The file where the xml schema will be written           -->
  <!-- =================================================================== -->

  <target
    name="sql2xml"
    description="==> creates an xml schema from an sql schema">

    <torque-sql-transform
      inputFile="${torque.schema.dir}/schema.sql"
      outputFile="${torque.schema.dir}/schema.xml"
    />
  </target>
         */
        TorqueSQLTransformTask task = new TorqueSQLTransformTask();
        Project project = new Project();
        project.setSystemProperties();
        task.setProject(project);
        task.setInputFile("D:/workspace/torque/torque4/torque-generator/torque-test/sql/data-model.sql");
        task.setOutputFile("D:/workspace/torque/torque4/torque-generator/torque-test/sql/data-model.xml");
        task.execute();
      //FIXME 表相关的唯一索引没有导出，所以没有进行处理
        /**
         *
         */
        
    }
}
