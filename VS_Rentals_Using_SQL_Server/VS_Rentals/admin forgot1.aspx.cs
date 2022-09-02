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

public partial class admin_forgot1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit2_Click(object sender, EventArgs e)
    {

        if (txtadminname.Text == "Vkrishna" && txtkeyword.Text == "Lilliput")
        {
            lblmsg.Text = "";
            lblpwd.Visible = true;
            lblpwd.Text = "* Your Password is Skrishna *";
        }
        else
        {
            lblmsg.Text = "* Incorrect Admin Name or Keyword *";
        }
    }
    protected void txtadminname_TextChanged(object sender, EventArgs e)
    {

    }
}
