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

public partial class failbooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user, id;
        id = Session["productid"].ToString();
        int a = int.Parse(id);
        user = Session["bname"].ToString();
        Label1.Text = "Sorry, " + "<b><u>" + user + ".</u></b> The Product : " + a + " is Already Booked.";
    }
}
