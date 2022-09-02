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
using System.Data.SqlClient;

public partial class changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string user, pwd;
        user = Session["vuname"].ToString();
        pwd = Session["vpwd"].ToString();
        if (pwd == txtcpwd.Text)
        {
            string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;

            SqlConnection cn = new SqlConnection(cs);

            SqlCommand cmd = new SqlCommand();
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update vendortab set vpwd= '" + txtcnpwd.Text + "' where vuname= '" + user + "' AND vpwd = '" + txtcpwd.Text + "' ";
            cmd.ExecuteNonQuery();
            cn.Close();
            Session["vuname"] = user;
            Response.Redirect("passwordChanged.aspx");
        }
        else
        {
            lblmsg1.Text = "* Invalid Current Password *";
        }
    }
}
