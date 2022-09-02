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

public partial class select_city7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from products where producttype='" + Label1.Text + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            GridView1.Visible = true;
            Image1.Visible = false;
            Label2.Visible = false;
        }
        else
        {
            GridView1.Visible = false;
            Image1.Visible = true;
            Label2.Visible = true;

        }
        cn.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[5].Text = e.Row.Cells[5].Text.Replace("\n", "<br/>");
            e.Row.Cells[3].Text = e.Row.Cells[3].Text.Replace(",", ",<br/>").Replace(".", ".<br/>").Replace("|", "|<br/>");
        }
    }
}
