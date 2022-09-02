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

public partial class adminhome1 : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {
            if (GridView1.Visible == true)
            {
                GridView4.Visible = false;
                GridView2.Visible = false;
                GridView1.Visible = true;
                GridView3.Visible = false;
            }
            else if (GridView2.Visible == true)
            {
                GridView4.Visible = false;
                GridView2.Visible = true;
                GridView1.Visible = false;
                GridView3.Visible = false;
            }
            else if (GridView3.Visible == true)
            {
                GridView4.Visible = false;
                GridView2.Visible = false;
                GridView1.Visible = false;
                GridView3.Visible = true;
            }
            else if (GridView4.Visible == true)
            {
                GridView4.Visible = true;
                GridView2.Visible = false;
                GridView1.Visible = false;
                GridView3.Visible = false;
            }
        }
        else
        {
            GridView4.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = false;
            GridView3.Visible = false;
        }
        
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("default.aspx");
    }
    
    
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (GridView1.Visible)
        {
            GridView4.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = false;
            GridView3.Visible = false;
        }
        else
        {
            GridView4.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = true;
            GridView3.Visible = false;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        if (GridView2.Visible)
        {
            GridView4.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = false;
            GridView3.Visible = false;
        }
        else
        {
            GridView4.Visible = false;
            GridView2.Visible = true;
            GridView1.Visible = false;
            GridView3.Visible = false;
        }
    }
    
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        if (GridView3.Visible)
        {
            GridView4.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = false;
            GridView3.Visible = false;
        }
        else
        {
            GridView4.Visible = false;
            GridView3.Visible = true;
            GridView2.Visible = false;
            GridView1.Visible = false;
        }
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        if (GridView4.Visible)
        {
            GridView4.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = false;
            GridView3.Visible = false;
        }
        else
        {
            GridView4.Visible = true;
            GridView3.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = false;
        }
    }
    protected void GridView4_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[4].Text = e.Row.Cells[4].Text.Replace("\n", "<br/>");
            e.Row.Cells[2].Text = e.Row.Cells[2].Text.Replace(",", ",<br/>").Replace(".", ".<br/>").Replace("|", "|<br/>");
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[2].Text = e.Row.Cells[2].Text.Replace(",", ",<br/>").Replace(".", ".<br/>").Replace("|", "|<br/>");
        }
    }
}

