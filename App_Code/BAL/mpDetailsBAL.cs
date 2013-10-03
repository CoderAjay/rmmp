using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for mpDetailsBAL
/// </summary>
public class mpDetailsBAL
{
    private mpDetailsDAL ob = new mpDetailsDAL();
	public mpDetailsBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable getData(Int16 constituencyId)
    {
        try
        {
           return ob.getData(constituencyId);
        }
        catch
        {
            throw;
        }
        finally
        {
        }
    }
}