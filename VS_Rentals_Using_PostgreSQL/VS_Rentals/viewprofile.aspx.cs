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



public partial class viewprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        NpgsqlConnection cn = new NpgsqlConnection(cs);
        NpgsqlCommand cmd;
        string user;
        user = Session["vuname"].ToString();
        txtusername.Text = user;
        if (cn.State == ConnectionState.Closed)
            cn.Open();
        cmd = new NpgsqlCommand("select count(*) from vendortab where vuname='" + user + "'", cn);
        int c = int.Parse(cmd.ExecuteScalar().ToString());
        if (c == 1)
        {
            NpgsqlCommand cmd1 = new NpgsqlCommand("select * from vendortab where vuname='" + user + "'", cn);
            NpgsqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                txtfname.Text = dr[0].ToString();
                txtlname.Text = dr[1].ToString();
                txtpswd.Text = dr[3].ToString();
               txtmobileno.Text= dr[9].ToString();
                txttelno.Text = dr[10].ToString();
               rdbtnlist.SelectedValue=dr[4].ToString();
                txtemail.Text = dr[11].ToString();
                txtdate.Text = Convert.ToDateTime(dr[13].ToString()).ToShortDateString();
                txtaddress.Text = dr[5].ToString();
                txtcity.Text = dr[6].ToString();
                txtstate.Text = dr[7].ToString();
                txtpincode.Text=dr[8].ToString();
                txtsecquestion.Text =dr[14].ToString();
                txtsecanswer.Text=dr[15].ToString();
                txtaltemail.Text=dr[12].ToString();
            }
        }
        

        cn.Close();
        Session["tempname"] = txtusername.Text;
    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/myaccount.aspx");      
    }
    
    protected void btndelete_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/unregister.aspx");
    }
    protected void txtdate_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtmobileno_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtsecanswer_TextChanged(object sender, EventArgs e)
    {

    }

   
}

