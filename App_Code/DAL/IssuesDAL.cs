﻿using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Author:		<Ajay Singh >
/// Email :      <meajaysingh@hotmail.com>
/// Create date: <Create Date,5/10/2013> 
/// </summary>



public class IssuesDAL
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["rateMyMPConnectionString"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter dap;
    string query;

	 
    public DataTable getIssues(Int64 NUMBER,Int16 TYPE)
    {
        try
        {
            
            query = "ISSUES_FETCHING";
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
          dap = new SqlDataAdapter(query,con);
          dap.SelectCommand.CommandType = CommandType.StoredProcedure;
          dap.SelectCommand.Parameters.AddWithValue("@number",NUMBER) ;
          dap.SelectCommand.Parameters.AddWithValue("@type", TYPE);

          DataSet ds = new DataSet();
           dap.Fill(ds,"temp");
           dap.Dispose();
            return ds.Tables["temp"]; 
        }
        catch
        {
            throw;
        }
        finally
        {  if(con.State == ConnectionState.Open)
            con.Close();
        }
    }

    public DataTable getIssue(Int64 issueId)
    {
        try
        {

            query = "ISSUESONE_FETCHING";
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            dap = new SqlDataAdapter(query, con);
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@issueId", issueId);
            DataSet ds = new DataSet();
            dap.Fill(ds, "temp");
            dap.Dispose();
            return ds.Tables["temp"];
        }
        catch
        {
            throw;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }
    public DataTable getVoters(Int64 issueId)
    {
        try
        {

            query = "VOTERNAMES_FETCH";
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            dap = new SqlDataAdapter(query, con);
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@issueId", issueId);
            DataSet ds = new DataSet();
            dap.Fill(ds, "temp");
            dap.Dispose();
            return ds.Tables["temp"];
        }
        catch
        {
            throw;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }

    }
    public DataTable Issues_Numbers(Int64 mpId)
    {
        try
        {

            query = "ISSUES_NUMBER";
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            dap = new SqlDataAdapter(query, con);
            dap.SelectCommand.CommandType = CommandType.StoredProcedure;
            dap.SelectCommand.Parameters.AddWithValue("@mpId", mpId);
            DataSet ds = new DataSet();
            dap.Fill(ds, "temp");
            dap.Dispose();
            return ds.Tables["temp"];
        }
        catch
        {
            throw;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }
    public void postIssues(issuesBO issuesbo)
    {
        try
        {

            query = "ISSUES_INSERTED";
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd = new SqlCommand(query,con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mpId",issuesbo.mpId);
            cmd.Parameters.AddWithValue("@guId",issuesbo.guid);
            cmd.Parameters.AddWithValue("@issueText",issuesbo.issueText);
            cmd.Parameters.AddWithValue("@PostedOn",DateTime.Now);
            cmd.ExecuteNonQuery();

        }
        catch
        {
            throw;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }
}
