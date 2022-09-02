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

public partial class unregister : System.Web.UI.Page
{
    string user;
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
        user = Session["vuname"].ToString();
        Label1.Text = "<center>\"<b>"+user+"</b>\", Do You Really Want To Delete Your Account???</center>";
    }
    
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/viewprofile.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        NpgsqlConnection cn = new NpgsqlConnection(cs);
        string user;
        user = Session["vuname"].ToString();
                NpgsqlCommand cmd2 = new NpgsqlCommand();
                cmd2.Connection = cn;
                cn.Open();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "delete from products where vendorname='" + Session["vuname"].ToString() + "'";
                cmd2.ExecuteNonQuery();
                cn.Close();
                NpgsqlCommand cmd1 = new NpgsqlCommand();
                cmd1.Connection = cn;
                cn.Open();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "delete from vendortab where vuname='" + Session["vuname"].ToString() + "'";
                cmd1.ExecuteNonQuery();
                cn.Close();
                Session["vuname"] = user;
                Response.Redirect("Successfullunregister.aspx");
               
    }
}
