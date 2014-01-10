package org.apache.torque.task;

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

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Date;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.texen.Generator;
import org.apache.texen.ant.TexenTask;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.DirectoryScanner;
import org.apache.tools.ant.types.FileSet;
import org.apache.torque.engine.EngineException;
import org.apache.torque.engine.database.model.Database;
import org.apache.torque.engine.database.transform.XmlToAppData;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.context.Context;
import org.apache.velocity.exception.MethodInvocationException;
import org.apache.velocity.exception.ParseErrorException;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader;
import org.apache.velocity.runtime.resource.loader.FileResourceLoader;

/**
 * A base torque task that uses either a single XML schema
 * representing a data model, or a &lt;fileset&gt; of XML schemas.
 * We are making the assumption that an XML schema representing
 * a data model contains tables for a <strong>single</strong>
 * database.
 *
 * @author <a href="mailto:jvanzyl@zenplex.com">Jason van Zyl</a>
 * @author <a href="mailto:dlr@finemaltcoding.com">Daniel Rall</a>
 */
public class TorqueDataModelTask extends TexenTask
{
    /**
     * XML that describes the database model, this is transformed
     * into the application model object.
     */
    protected String xmlFile;

    /** Fileset of XML schemas which represent our data models. */
    protected List filesets = new ArrayList();

    /** Data models that we collect. One from each XML schema file. */
    protected List dataModels = new ArrayList();

    /** Velocity context which exposes our objects in the templates. */
    protected Context context;

    /**
     * Map of data model name to database name.
     * Should probably stick to the convention of them being the same but
     * I know right now in a lot of cases they won't be.
     */
    protected Hashtable dataModelDbMap;

    /**
     * Hashtable containing the names of all the databases
     * in our collection of schemas.
     */
    protected Hashtable databaseNames;

    //!! This is probably a crappy idea having the sql file -> db map
    // here. I can't remember why I put it here at the moment ...
    // maybe I was going to map something else. It can probably
    // move into the SQL task.

    /**
     * Name of the properties file that maps an SQL file
     * to a particular database.
     */
    protected String sqldbmap;

    /** The target database(s) we are generating SQL for. */
    private String targetDatabase;
    
    private String dbname ;

    /** Target Java package to place the generated files in. */
    private String targetPackage;


    /**
     * Set the sqldbmap.
     *
     * @param sqldbmap th db map
     */
    public void setSqlDbMap(String sqldbmap)
    {
        //!! Make all these references files not strings.
        this.sqldbmap = getProject().resolveFile(sqldbmap).toString();
    }

    /**
     * Get the sqldbmap.
     *
     * @return String sqldbmap.
     */
    public String getSqlDbMap()
    {
        return sqldbmap;
    }

    /**
     * Return the data models that have been processed.
     *
     * @return List data models
     */
    public List getDataModels()
    {
        return dataModels;
    }

    /**
     * Return the data model to database name map.
     *
     * @return Hashtable data model name to database name map.
     */
    public Hashtable getDataModelDbMap()
    {
        return dataModelDbMap;
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

    /**
     * Adds a set of xml schema files (nested fileset attribute).
     *
     * @param set a Set of xml schema files
     */
    public void addFileset(FileSet set)
    {
        filesets.add(set);
    }

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
                ad.setName(this.dbname);
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

        // Place our set of data models into the context along
        // with the names of the databases as a convenience for now.
        context.put("dataModels", dataModels);
        context.put("databaseNames", databaseNames);
        context.put("targetDatabase", targetDatabase);
        context.put("targetPackage", targetPackage);

        return context;
    }

    /**
     * Change type of "now" to java.util.Date
     *
     * @see org.apache.texen.ant.TexenTask#populateInitialContext(org.apache.velocity.context.Context)
     */
    protected void populateInitialContext(Context context) throws Exception
    {
        super.populateInitialContext(context);
        context.put("now", new Date());
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
     * Override Texen's context properties to map the
     * torque.xxx properties (including defaults set by the
     * org/apache/torque/defaults.properties) to just xxx.
     *
     * <p>
     * Also, move xxx.yyy properties to xxxYyy as Velocity
     * doesn't like the xxx.yyy syntax.
     * </p>
     *
     * @param file the file to read the properties from
     */
    public void setContextProperties(String file)
    {
        super.setContextProperties(file);

        // Map the torque.xxx elements from the env to the contextProperties
        Hashtable env = super.getProject().getProperties();
        for (Iterator i = env.entrySet().iterator(); i.hasNext();)
        {
            Map.Entry entry = (Map.Entry) i.next();
            String key = (String) entry.getKey();
            if (key.startsWith("torque."))
            {
                String newKey = key.substring("torque.".length());
                int j = newKey.indexOf(".");
                while (j != -1)
                {
                    newKey =
                        newKey.substring(0, j)
                        +  StringUtils.capitalize(newKey.substring(j + 1));
                    j = newKey.indexOf(".");
                }

                contextProperties.setProperty(newKey, entry.getValue());
            }
        }
    }
    /**
     * This message fragment (telling users to consult the log or
     * invoke ant with the -debug flag) is appended to rethrown
     * exception messages.
     */
    private final static String ERR_MSG_FRAGMENT = 
        ". For more information consult the velocity log, or invoke ant " +
    "with the -debug flag.";

    /**
     * This method creates an VelocityEngine instance, parses
     * every template and creates the corresponding output.
     * 
     * Unfortunately the TextenTask.execute() method makes
     * everything for us but we just want to set our own
     * VelocityTemplateLoader. 
     * TODO: change once TEXEN-14 is resolved and out.
     *  
     * @see org.apache.texen.ant.TexenTask#execute()
     */
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

        VelocityEngine ve = new VelocityEngine();

        try
        {
            // Setup the Velocity Runtime.
            if (templatePath != null)
            {
                log("Using templatePath: " + templatePath, project.MSG_VERBOSE);
                ve.setProperty("torque" + VelocityEngine.FILE_RESOURCE_LOADER_PATH,
                        templatePath);

                // TR: We need our own FileResourceLoader
                ve.addProperty(VelocityEngine.RESOURCE_LOADER, "torquefile");
                ve.setProperty("torquefile." + VelocityEngine.RESOURCE_LOADER
                            + ".instance",
                        new TorqueFileResourceLoader(this));
            }

            if (useClasspath)
            {
                log("Using classpath");
                // TR: We need our own ClasspathResourceLoader
                ve.addProperty(VelocityEngine.RESOURCE_LOADER, "classpath");

                ve.setProperty("classpath." + VelocityEngine.RESOURCE_LOADER
                        + ".instance", new TorqueClasspathResourceLoader(this));

                ve.setProperty("classpath." + VelocityEngine.RESOURCE_LOADER
                        + ".cache", "false");

                ve.setProperty("classpath." + VelocityEngine.RESOURCE_LOADER
                        + ".modificationCheckInterval", "2");
            }

            ve.init();

            // Create the text generator.
            Generator generator = Generator.getInstance();
            generator.setVelocityEngine(ve);
            generator.setOutputPath(outputDirectory);
            generator.setInputEncoding(inputEncoding);
            generator.setOutputEncoding(outputEncoding);

            if (templatePath != null)
            {
                generator.setTemplatePath(templatePath);
            }

            // Make sure the output directory exists, if it doesn't
            // then create it.
            File file = new File(outputDirectory);
            if (!file.exists())
            {
                file.mkdirs();
            }

            String path = outputDirectory + File.separator + outputFile;
            log("Generating to file " + path, project.MSG_INFO);
            Writer writer = generator.getWriter(path, outputEncoding);

            // The generator and the output path should
            // be placed in the init context here and
            // not in the generator class itself.
            Context c = initControlContext();

            // Everything in the generator class should be
            // pulled out and placed in here. What the generator
            // class does can probably be added to the Velocity
            // class and the generator class can probably
            // be removed all together.
            populateInitialContext(c);

            // Feed all the options into the initial
            // control context so they are available
            // in the control/worker templates.
            if (contextProperties != null)
            {
                Iterator i = contextProperties.getKeys();

                while (i.hasNext())
                {
                    String property = (String) i.next();
                    String value = contextProperties.getString(property);

                    // Now lets quickly check to see if what
                    // we have is numeric and try to put it
                    // into the context as an Integer.
                    try
                    {
                        c.put(property, new Integer(value));
                    } catch (NumberFormatException nfe)
                    {
                        // Now we will try to place the value into
                        // the context as a boolean value if it
                        // maps to a valid boolean value.
                        String booleanString = contextProperties
                                .testBoolean(value);

                        if (booleanString != null)
                        {
                            c.put(property, new Boolean(booleanString));
                        } 
                        else
                        {
                            // We are going to do something special
                            // for properties that have a "file.contents"
                            // suffix: for these properties will pull
                            // in the contents of the file and make
                            // them available in the context. So for
                            // a line like the following in a properties file:
                            //
                            // license.file.contents = license.txt
                            //
                            // We will pull in the contents of license.txt
                            // and make it available in the context as
                            // $license. This should make texen a little
                            // more flexible.
                            if (property.endsWith("file.contents"))
                            {
                                // We need to turn the license file from
                                // relative to
                                // absolute, and let Ant help :)
                                value = org.apache.velocity.util.StringUtils
                                        .fileContentsToString(project
                                                .resolveFile(value)
                                                .getCanonicalPath());

                                property = property.substring(0, property
                                        .indexOf("file.contents") - 1);
                            }
                            c.put(property, value);
                        }
                    }
                }
            }

            writer.write(generator.parse(controlTemplate, c));
            
            writer.flush();
            writer.close();
            generator.shutdown();
            cleanup();
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
     * A custom classpath resource loader which filters tabs and removes spaces
     * from lines with velocity commands. 
     */
    public static class TorqueClasspathResourceLoader 
            extends ClasspathResourceLoader
    {
        /**
         * The task in which this resource loader is used.
         */
        private TorqueDataModelTask task;
        
        /**
         * Constructor.
         *
         * @param task the task in which this resource loader is used.
         */
        public TorqueClasspathResourceLoader(TorqueDataModelTask task)
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
     * A custom file resource loader which filters tabs and removes spaces
     * from lines with velocity commands. 
     */
    public static class TorqueFileResourceLoader
            extends FileResourceLoader
    {
        /**
         * The task in which this resource loader is used.
         */
        private TorqueDataModelTask task;
        
        /**
         * Constructor.
         *
         * @param task the task in which this resource loader is used.
         */
        public TorqueFileResourceLoader(TorqueDataModelTask task)
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

	public String getDbname() {
		return dbname;
	}

	public void setDbname(String dbname) {
		this.dbname = dbname;
	}
}


