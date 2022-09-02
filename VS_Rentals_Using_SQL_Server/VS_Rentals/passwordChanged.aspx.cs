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

public partial class passwordChanged : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user;
        user = Session["vuname"].ToString();
        lblmsg.Text = "Congratulations " + "<b><u>" + user + "</u></b>.";
        Label1.Text = "<center>Your Password Has Been Successfully Changed.</center>";
    }
}
