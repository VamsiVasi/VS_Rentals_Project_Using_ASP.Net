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

public partial class successfullunregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user;
        user = Session["vuname"].ToString();
        Label1.Text = "\"<b>" + user + "</b>\", Your Account Was Successfully Removed.";
    }
}
