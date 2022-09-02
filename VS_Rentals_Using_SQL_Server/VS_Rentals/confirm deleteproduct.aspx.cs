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

public partial class unregister : System.Web.UI.Page
{
    string user;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        user = Session["vuname"].ToString();
        string uname, id;
        uname = Session["producttype"].ToString();
        id = Session["productid"].ToString();
        int a = int.Parse(id);
        Label1.Text = "<center>Do You Really Want To Delete 'Product : "+a+"' From Your Catalog???</center>";
    }
    
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("deleteproduct.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;

        SqlConnection cn = new SqlConnection(cs);
        string uname, id;
        uname = Session["producttype"].ToString();
        id = Session["productid"].ToString();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.Connection = cn;
                cn.Open();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "delete from products where productid='" + Session["productid"].ToString() + "'";
                cmd1.ExecuteNonQuery();
                Session["productid"] = id;
                Response.Redirect("product deleted.aspx");
                cn.Close();
        
    }
}
