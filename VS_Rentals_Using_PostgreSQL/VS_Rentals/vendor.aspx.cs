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

public partial class vendor : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {
            if (GridView1.Visible == true)
            {
                GridView2.Visible = false;
                GridView1.Visible = true;
            }
            else if (GridView2.Visible == true)
            {
                GridView2.Visible = true;
                GridView1.Visible = false;
            }
        }
        else
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
        }
        string user;
        user = Session["vuname"].ToString();
        lbluser.Text ="<center>* Welcome "+user+" *</center>";        
    }
   
    

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        string cs1 = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        NpgsqlConnection cn1= new NpgsqlConnection(cs1);
        NpgsqlCommand cmd1 = new NpgsqlCommand("select * from products where vendorname='" + Session["vuname"].ToString() + "'", cn1);
        cn1.Open();
        NpgsqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            if (GridView1.Visible)
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
                Image2.Visible = false;
                Label2.Visible = false;
                Image3.Visible = false;
                Label1.Visible = false;

            }
            else
            {
                GridView2.Visible = false;
                GridView1.Visible = true;
                Image2.Visible = false;
                Label2.Visible = false;
                Image3.Visible = false;
                Label1.Visible = false;

            }
        }
        else
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            Image2.Visible = false;
            Label2.Visible = false;
            Image3.Visible = true;
            Label1.Visible = true;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        NpgsqlConnection cn=new NpgsqlConnection(cs);
        NpgsqlCommand cmd = new NpgsqlCommand("select * from booking,products where ldate > current_date and booking.productid=products.productid and vendorname='" + Session["vuname"].ToString() + "'", cn);
        cn.Open();
        NpgsqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (GridView2.Visible)
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
                Image2.Visible = false;
                Label2.Visible = false;
                Image3.Visible = false;
                Label1.Visible = false;
            }
            else
            {
                GridView1.Visible = false;
                GridView2.Visible = true;
                Image2.Visible = false;
                Label2.Visible = false; 
                Image3.Visible = false;
                Label1.Visible = false;
            
            }
        }
        else
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            Image2.Visible = true;
            Label2.Visible = true;
            Image3.Visible = false;
            Label1.Visible = false;
            
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/add product.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("default.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/viewprofile.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/deleteproduct.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/update product.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[4].Text = e.Row.Cells[4].Text.Replace("\n", "<br/>");
            e.Row.Cells[2].Text = e.Row.Cells[2].Text.Replace(",", ",<br/>").Replace(".",".<br/>").Replace("|","|<br/>");
        }
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[2].Text = e.Row.Cells[2].Text.Replace(",", ",<br/>").Replace(".", ".<br/>").Replace("|", "|<br/>");
            e.Row.Cells[12].Text = e.Row.Cells[12].Text.Replace(",", ",<br/>").Replace(".", ".<br/>").Replace("|", "|<br/>");
        }

    }
}

