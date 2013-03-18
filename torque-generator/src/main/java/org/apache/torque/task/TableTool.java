package org.apache.torque.task;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Iterator;
import java.util.NoSuchElementException;

import org.apache.tools.ant.Project;


public class TableTool implements Iterator
{
    /** querydataset */
  
	 private ResultSet rs;
	    private String tableName;
	    private Statement stmt;

    /**
     * Constructor for the TableTool object.
     */
    public TableTool(String tableName)
    {
    	this.tableName = tableName;
    }

    /**
     * Constructor for the TableTool object.
     *
     * @param rs a query result set
     * @throws Exception Problem using database record set cursor.
     */
    protected TableTool(ResultSet rs) throws Exception
    {
        this.rs = rs;
    }

    /**
     * Fetches an <code>Iterator</code> for the data in the named table.
     *
     * @param  tableName Description of Parameter
     * @return <code>Iterator</code> for the fetched data.
     * @throws Exception Problem creating connection or executing query.
     */
    public ResultSet fetch() throws Exception
    {
        //log("Fetching data for table " + tableName, Project.MSG_INFO);
    	System.out.println("Fetching data for table " + tableName);
        return 
                stmt.executeQuery("SELECT * FROM " + tableName);
    }

    /**
     * check if there are more records in the QueryDataSet.
     *
     * @return true if there are more records
     */
    public boolean hasNext()
    {
        try
        {
            // TODO optimize this
            // i tried to use rs.isLast() but this returns wrong results
            // for empty tables :-(
            boolean validRow = rs.next();
            rs.previous();
            return validRow;
        }
        catch (Exception se)
        {
            System.err.println("Exception :");
            se.printStackTrace();
        }
        return false;
    }

    /**
     * load the next record from the QueryDataSet.
     *
     * @return Description of the Returned Value
     * @throws NoSuchElementException Description of Exception
     */
    public Object next() throws NoSuchElementException
    {
        try
        {
            System.out.print(".");
            rs.next();
        }
        catch (Exception se)
        {
            System.err.println("Exception while iterating:");
            se.printStackTrace();
            throw new NoSuchElementException(se.getMessage());
        }
        return this;
    }

    /**
     * Returns the value for the column.
     *
     * @param  columnName name of the column
     * @return  value of the column or null if it doesn't exist
     */
    public String get(String columnName)
    {
        try
        {
            return (rs.getString(columnName));
        }
        catch (Exception se)
        {
          //  log("Exception fetching value " + columnName + ": "
                   // + se.getMessage(), Project.MSG_ERR);
        }
        return null;
    }

    /**
     * Dummy implementation of the remove() method of the iterator
     * interface. This implementation always throws a
     * UnsupportedOperationException
     *
     * @throws UnsupportedOperationException always.
     */
    public void remove() throws UnsupportedOperationException
    {
        throw new UnsupportedOperationException();
    }
}
