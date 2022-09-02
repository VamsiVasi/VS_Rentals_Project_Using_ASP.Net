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

public partial class forgotpassword : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Visible = false;
        lblsqn.Visible = false;
        lblsans.Visible = false;
        lblpwd.Visible = false;
        txtsqn.Visible = false;
        txtsans.Visible = false;
        btnsubmit2.Visible = false;
        }
    protected void btnsubmit1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from vendortab where vuname='" + txtusername.Text + "' ", cn);
        int c = int.Parse(cmd.ExecuteScalar().ToString());
        if (c == 1)
        {
            lblmsg.Visible = false;
            txtusername.ReadOnly = true;
            SqlCommand cmd1 = new SqlCommand("select vquestion from vendortab where vuname='" + txtusername.Text + "' ", cn);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
                txtsqn.Text = dr[0].ToString();
            lblsqn.Visible = true;
            txtsqn.Visible = true;
            lblsans.Visible = true;
            txtsans.Visible = true;
            lblpwd.Visible = false;
            lblmsg1.Visible = false;
            btnsubmit2.Visible = true;
            btnsubmit1.Visible = false;
            Button1.Visible = true;
           
        }
        else
        {
            lblmsg.Text = "* Invalid UserName *";
            
        }
        cn.Close();
    }
    protected void btnsubmit2_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from vendortab where vquestion='" + txtsqn.Text + "' and vanswer='"+txtsans .Text +"' and vuname='"+txtusername.Text+"'", cn);
        int c = int.Parse(cmd.ExecuteScalar().ToString());
        if (c == 1)
        {
            SqlCommand cmd1 = new SqlCommand("select vpwd from vendortab where vquestion='" + txtsqn.Text + "' and vanswer='" + txtsans.Text + "'and vuname='" + txtusername.Text + "'", cn);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
                lblpwd.Text = "<center>* Your Password is "+dr[0].ToString()+" *</center>";
            lblsqn.Visible = true;
            txtsqn.Visible = true;
            lblsans.Visible = true;
            txtsans.Visible = true;
            lblpwd.Visible = true;
            lblmsg1.Visible = false;
            btnsubmit2.Visible = true;
            Button1.Visible = true;
            
        }
        else
        {
            lblmsg1.Visible = true;
            lblmsg1.Text = "* Invalid Security Answer *";
            lblsqn.Visible = true;
            txtsqn.Visible = true;
            lblsans.Visible = true;
            txtsans.Visible = true;
            lblpwd.Visible = false;
            btnsubmit2.Visible = true;
            Button1.Visible = true;
        }
        cn.Close();

        
    }


    protected void txtsans_TextChanged(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        fun();
    }
    public void fun()
    {
        Response.Redirect("forgotpassword.aspx");
    }
}
