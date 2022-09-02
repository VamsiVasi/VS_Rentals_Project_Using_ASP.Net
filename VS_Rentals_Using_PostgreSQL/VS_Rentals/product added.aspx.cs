using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class product_added : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user,id;
        id = Session["productid"].ToString();
        int a = int.Parse(id);
        user = Session["vendorname"].ToString();
        lblmsg.Text= "Congratulations " + "<b><u>" + user + ".</u></b>";
        Label1.Text = "<center>Your Product : " + a + " is Successfully Added In Your Catalog.</center>";

    }
}
