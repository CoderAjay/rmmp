using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for mpDetailsDAL
/// </summary>
public class mpDetailsDAL
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["rateMyMPConnectionString"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter dap;
    SqlDataReader drd;
    string query;

	public mpDetailsDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    
    public DataTable getData(Int16 constituencyId)
    {
        try
        {

            query = "MPDETAILS_FETCHING";
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            dap = new SqlDataAdapter(query,con);
             dap.SelectCommand.CommandType = CommandType.StoredProcedure;
             dap.SelectCommand.Parameters.AddWithValue("@constituencyId", constituencyId);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            return dt;
        }
        catch
        {
            throw;
        }
        finally
        {   if(con.State == ConnectionState.Open)
            con.Close();
        }
    }
}