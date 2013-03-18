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



import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

import org.apache.texen.Generator;
import org.apache.texen.ant.TexenTask;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.DirectoryScanner;
import org.apache.tools.ant.types.FileSet;
import org.apache.torque.engine.EngineException;
import org.apache.torque.engine.database.model.Database;
import org.apache.torque.engine.database.transform.XmlToAppData;
import org.apache.torque.task.TorqueDataModelTask.TorqueClasspathResourceLoader;
import org.apache.torque.task.TorqueDataModelTask.TorqueFileResourceLoader;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.context.Context;
import org.apache.velocity.exception.MethodInvocationException;
import org.apache.velocity.exception.ParseErrorException;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader;
import org.apache.velocity.runtime.resource.loader.FileResourceLoader;

/**
 * <p>Title: DataDumpTask.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2008</p>
 * @Date 2010-2-3 下午05:28:35
 * @author biaoping.yin
 * @version 1.0
 */
public class DataDumpTask extends TexenTask
{
    /**
     * This message fragment (telling users to consult the log or
     * invoke ant with the -debug flag) is appended to rethrown
     * exception messages.
     */
    private final static String ERR_MSG_FRAGMENT = 
        ". For more information consult the velocity log, or invoke ant " +
    "with the -debug flag.";

    private String xmlFile;
    private String targetDatabase;
    private String targetPackage;
    /** Velocity context which exposes our objects in the templates. */
    protected Context context;
    /** Fileset of XML schemas which represent our data models. */
    protected List filesets = new ArrayList();

    /** Data models that we collect. One from each XML schema file. */
    protected List dataModels = new ArrayList();
    private Hashtable dataModelDbMap;
    private Hashtable databaseNames;


    /**
     * Get the current target database.
     *
     * @return String target database(s)
     */
    public String getTargetDatabase()
    {
        return targetDatabase;
    }

    /**
     * Set the current target database. (e.g. mysql, oracle, ..)
     *
     * @param v target database(s)
     */
    public void setTargetDatabase(String v)
    {
        targetDatabase = v;
    }

    /**
     * Get the current target package.
     *
     * @return return target java package.
     */
    public String getTargetPackage()
    {
        return targetPackage;
    }

    /**
     * Set the current target package. This is where generated java classes will
     * live.
     *
     * @param v target java package.
     */
    public void setTargetPackage(String v)
    {
        targetPackage = v;
    }
    
    /**
     * Gets a name to use for the application's data model.
     *
     * @param xmlFile The path to the XML file housing the data model.
     * @return The name to use for the <code>AppData</code>.
     */
    private String grokName(String xmlFile)
    {
        // This can't be set from the file name as it is an unreliable
        // method of naming the descriptor. Not everyone uses the same
        // method as I do in the TDK. jvz.

        String name = "data-model";
        int i = xmlFile.lastIndexOf(System.getProperty("file.separator"));
        if (i != -1)
        {
            // Creep forward to the start of the file name.
            i++;

            int j = xmlFile.lastIndexOf('.');
            if (i < j)
            {
                name = xmlFile.substring(i, j);
            }
            else
            {
                // Weirdo
                name = xmlFile.substring(i);
            }
        }
        return name;
    }
    
    /**
     * Set up the initial context for generating the SQL from the XML schema.
     *
     * @return the context
     * @throws Exception
     */
    public Context initControlContext() throws Exception
    {
        XmlToAppData xmlParser;

        if (xmlFile == null && filesets.isEmpty())
        {
            throw new BuildException("You must specify an XML schema or "
                    + "fileset of XML schemas!");
        }

        try
        {
            if (xmlFile != null)
            {
                // Transform the XML database schema into
                // data model object.
                xmlParser = new XmlToAppData(getTargetDatabase(),
                        getTargetPackage());
                Database ad = xmlParser.parseFile(xmlFile);
                ad.setFileName(grokName(xmlFile));
                dataModels.add(ad);
            }
            else
            {
                // Deal with the filesets.
                for (int i = 0; i < filesets.size(); i++)
                {
                    FileSet fs = (FileSet) filesets.get(i);
                    DirectoryScanner ds = fs.getDirectoryScanner(getProject());
                    File srcDir = fs.getDir(getProject());

                    String[] dataModelFiles = ds.getIncludedFiles();

                    // Make a transaction for each file
                    for (int j = 0; j < dataModelFiles.length; j++)
                    {
                        File f = new File(srcDir, dataModelFiles[j]);
                        xmlParser = new XmlToAppData(getTargetDatabase(),
                                getTargetPackage());
                        Database ad = xmlParser.parseFile(f.toString());
                        ad.setFileName(grokName(f.toString()));
                        dataModels.add(ad);
                    }
                }
            }

            Iterator i = dataModels.iterator();
            databaseNames = new Hashtable();
            dataModelDbMap = new Hashtable();

            // Different datamodels may state the same database
            // names, we just want the unique names of databases.
            while (i.hasNext())
            {
                Database database = (Database) i.next();
                databaseNames.put(database.getName(), database.getName());
                dataModelDbMap.put(database.getFileName(), database.getName());
            }
        }
        catch (EngineException ee)
        {
            throw new BuildException(ee);
        }

        context = new VelocityContext();
//
//        // Place our set of data models into the context along
//        // with the names of the databases as a convenience for now.
//        context.put("dataModels", dataModels);
//        context.put("databaseNames", databaseNames);
//        context.put("targetDatabase", targetDatabase);
//        context.put("targetPackage", targetPackage);
//
        return context;
    }
    
    public void execute() throws BuildException 
    {
        // Make sure the template path is set.
        if (templatePath == null && useClasspath == false)
        {
            throw new BuildException(
                "The template path needs to be defined if you are not using "
                        + "the classpath for locating templates!");
        }

        // Make sure the control template is set.
        if (controlTemplate == null)
        {
            throw new BuildException(
                    "The control template needs to be defined!");
        }

        // Make sure the output directory is set.
        if (outputDirectory == null)
        {
            throw new BuildException(
                    "The output directory needs to be defined!");
        }

        // Make sure there is an output file.
        if (outputFile == null)
        {
            throw new BuildException("The output file needs to be defined!");
        }

        try
        {
            Iterator i = dataModels.iterator();
            while(i.hasNext())
            {
                Database database = (Database)i.next();
                export(database,outputFile);
            }
        } 
        catch (BuildException e)
        {
            throw e;
        } 
        catch (MethodInvocationException e)
        {
            throw new BuildException("Exception thrown by '"
                    + e.getReferenceName() + "." + e.getMethodName() + "'"
                    + ERR_MSG_FRAGMENT, e.getWrappedThrowable());
        } 
        catch (ParseErrorException e)
        {
            throw new BuildException(
                    "Velocity syntax error" + ERR_MSG_FRAGMENT, e);
        } 
        catch (ResourceNotFoundException e)
        {
            throw new BuildException(
                    "Resource not found" + ERR_MSG_FRAGMENT, 
                    e);
        } 
        catch (Exception e)
        {
            throw new BuildException(
                    "Generation failed" + ERR_MSG_FRAGMENT, 
                    e);
        }
    }
    
    private void export(Database database,String outputFile) throws Exception
    {
     // Create the text generator.
//        Generator generator = Generator.getInstance();
//        generator.setVelocityEngine(ve);
//        generator.setOutputPath(outputDirectory);
//        generator.setInputEncoding(inputEncoding);
//        generator.setOutputEncoding(outputEncoding);
//        
//        if (templatePath != null)
//        {
//            generator.setTemplatePath(templatePath);
//        }

        // Make sure the output directory exists, if it doesn't
        // then create it.
        File file = new File(outputDirectory);
        if (!file.exists())
        {
            file.mkdirs();
        }

        String path = outputDirectory + File.separator + outputFile;
        log("Generating to file " + path, project.MSG_INFO);
        Writer writer = new BufferedWriter(new java.io.FileWriter(new File(path)));
        writer.write("<?xml version=\"1.0\" encoding=\"GBK\"?>\r\n"
                    + "<dataset name=\"" + database.getName() + "\">\r\n");
        //表记录数据输出
        
        
        writer.write("</dataset>");
        
        writer.flush();
        writer.close();
        
        cleanup();
        
    }
    
    
    /**
     * A custom classpath resource loader which filters tabs and removes spaces
     * from lines with velocity commands. 
     */
    public static class InnerClasspathResourceLoader 
            extends ClasspathResourceLoader
    {
        /**
         * The task in which this resource loader is used.
         */
        private DataDumpTask task;
        
        /**
         * Constructor.
         *
         * @param task the task in which this resource loader is used.
         */
        public InnerClasspathResourceLoader(DataDumpTask task)
        {
            this.task = task;
        }
        
        /**
         * @see org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader#getResourceStream(java.lang.String)
         */
        public synchronized InputStream getResourceStream(String name) 
                throws ResourceNotFoundException 
        {
            InputStream source = null;
            try 
            {
                source = super.getResourceStream(name);
                return task.filter(source);
            } 
            catch (IOException uee)
            {
                task.log(uee.getMessage());
                throw new ResourceNotFoundException(uee.getMessage());
            }
            finally
            {
                if (source != null)
                {
                    try
                    {
                        source.close();
                    }
                    catch (IOException e)
                    {
                        task.log(e.getMessage());
                    }
                }
            }
        }
    }
    
    
    /**
     * This method filters the template and replaces some
     * unwanted characters. For example it removes leading
     * spaces in front of velocity commands and replaces
     * tabs with spaces to prevent bounces in different
     * code editors with different tab-width-setting.
     * 
     * @param resource the input stream to filter
     * 
     * @return the filtered input stream.
     * 
     * @throws IOException if creating, reading or writing to a stream fails.
     */
    protected InputStream filter(InputStream resource) throws IOException
    {
        InputStreamReader streamReader;
        if (inputEncoding != null)
        {
            streamReader = new InputStreamReader(resource, inputEncoding);
        }
        else
        {
            streamReader = new InputStreamReader(resource);
        }
        LineNumberReader lineNumberReader = new LineNumberReader(streamReader);
        String line = null;
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PrintStream ps = null;
        if (inputEncoding != null)
        {
            ps = new PrintStream(baos, true, inputEncoding);
        }
        else
        {
            ps = new PrintStream(baos, true);
        }

        while ((line = lineNumberReader.readLine()) != null)
        {
            // remove leading spaces in front of velocity commands and comments
            line = line.replaceAll("^\\s*#", "#");
            // replace tabs with spaces to prevent bounces in editors
            line = line.replaceAll("\t", "    ");
            ps.println(line);
        }
        ps.flush();
        ps.close();

        return new ByteArrayInputStream(baos.toByteArray());
    }

    /**
     * A custom file resource loader which filters tabs and removes spaces
     * from lines with velocity commands. 
     */
    public static class InnerFileResourceLoader
            extends FileResourceLoader
    {
        /**
         * The task in which this resource loader is used.
         */
        private DataDumpTask task;
        
        /**
         * Constructor.
         *
         * @param task the task in which this resource loader is used.
         */
        public InnerFileResourceLoader(DataDumpTask task)
        {
            this.task = task;
        }
        
        /**
         * @see org.apache.velocity.runtime.resource.loader.FileResourceLoader#getResourceStream(java.lang.String)
         */
        public synchronized InputStream getResourceStream(
                String name) 
                throws ResourceNotFoundException
        {
            InputStream source = null;
            try 
            {
                source = super.getResourceStream(name);
                return task.filter(source);
            } 
            catch (IOException uee)
            {
                task.log(uee.getMessage());
                throw new ResourceNotFoundException(uee.getMessage());
            }
            finally
            {
                if (source != null)
                {
                    try
                    {
                        source.close();
                    }
                    catch (IOException e)
                    {
                        task.log(e.getMessage());
                    }
                }
            }
        }
    }
    
    /**
     * Get the xml schema describing the application model.
     *
     * @return  String xml schema file.
     */
    public String getXmlFile()
    {
        return xmlFile;
    }

    /**
     * Set the xml schema describing the application model.
     *
     * @param xmlFile The new XmlFile value
     */
    public void setXmlFile(String xmlFile)
    {
        this.xmlFile = getProject().resolveFile(xmlFile).toString();
//        this.xmlFile = xmlFile;
    }
}
