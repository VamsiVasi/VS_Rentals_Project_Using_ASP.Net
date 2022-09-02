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
using Npgsql;

public partial class _Default : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;

        NpgsqlConnection cn = new NpgsqlConnection(cs);

        cn.Open();
        NpgsqlCommand cmd = new NpgsqlCommand();
        cmd.Connection = cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select count(*) from vendortab where vuname='" + txtuser.Text + "'and vpwd='" + txtpwd.Text + "' ";
        int cnt;
        cnt = int.Parse(cmd.ExecuteScalar().ToString());
        cn.Close();

        if (cnt > 0)
        {
            Session["vuname"] = txtuser.Text;
            Session["vpwd"] = txtpwd.Text;

            Response.Redirect("vendor.aspx");

        }
        else
        {
            Label16.Text = "* Invalid Username or Password *";
        }


    }
    protected void txtpwd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtuser_TextChanged(object sender, EventArgs e)
    {

    }
}
