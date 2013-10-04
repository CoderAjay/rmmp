using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static ListItemCollection lic = new ListItemCollection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static List<string> getComments()
    {
        return (new[] { "comment 1", "Comment 2" }).ToList();
    }
    public static string addComments(string comment)
    {
        //Thread.Sleep(4000);
        //add to database
        //ListItem li = new ListItem();
        //li.Text = comment;
        //lic.Add(li);
        return comment;
    }
}