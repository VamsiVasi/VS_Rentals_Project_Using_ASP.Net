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


public partial class booking : System.Web.UI.Page
{

    SqlDataAdapter da;
    DataSet ds;
    DataTable dt;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;

        SqlConnection cn = new SqlConnection(cs);

        if (IsPostBack == true)
        {

        }
        else
        {
            da = new SqlDataAdapter("select productid from products", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            DropDownList1.Items.Add("--Select--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList1.Items.Add(dt.Rows[i][0].ToString());
            DropDownList1.DataBind();
        }
    }
   
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtuname.Text = "";
        txtumail.Text = "";
        txtuphone.Text = "";
        txtnumber.Text = "";
        txtpdate.Text = "";        
        txtldate.Text = "";    
        txtpaddress.Text = "";
       
    }
    protected void btnbooknow_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;

        SqlConnection cn = new SqlConnection(cs);

        if (Calendar1.SelectedDate.Date.ToUniversalTime() > System.DateTime.Now.ToUniversalTime() && Calendar2.SelectedDate.Date.ToUniversalTime() > System.DateTime.Now.ToUniversalTime() && Calendar1.SelectedDate.Date.ToUniversalTime() < Calendar2.SelectedDate.Date.ToUniversalTime())
        {
            string var;
            cn.Open();
            SqlCommand cmd1 = new SqlCommand("select status from products where productid='" + DropDownList1.SelectedItem.Text + "'", cn);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                var = dr[0].ToString();
                cn.Close();
                if (var == "True")
                {
                    SqlCommand cmd = new SqlCommand();
                    cn.Open();
                    cmd.Connection = cn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into booking values('" + txtuname.Text + "','" + txtumail.Text + "','" + txtuphone.Text + "','" + txtnumber.Text + "','" + txtpdate.Text + "','" + txtldate.Text + "','" + txtpaddress.Text + "', '" + DropDownList1.SelectedItem.Text+ "')";
                    cmd.ExecuteNonQuery();
                    
                    Session["bname"] = txtuname.Text;
                    Session["bemail"] = txtumail.Text;
                    Session["bphnumber"] = txtuphone.Text;
                    Session["bnumpieces"] = txtnumber.Text;
                    Session["pdate"] = txtpdate.Text;
                    Session["ldate"] = txtldate.Text;
                    Session["pplace"] = txtpaddress.Text;
                    Session["productid"] = DropDownList1.SelectedItem.Text;
                    cn.Close();
                    string s;
                    s = "update products set status= 'False' where productid = '" + Session["productid"] + "'";
                    SqlCommand cmd2 = new SqlCommand(s, cn);
                    cn.Open();
                    cmd2.ExecuteNonQuery();
                    
                    cn.Close();
                    Response.Redirect("~/informbooking.aspx");
                }
                else
                {
                    Session["bname"] = txtuname.Text;
                    Session["productid"] = DropDownList1.SelectedItem.Text;
                    Response.Redirect("~/failbooking.aspx");
                }
            }
        }
        else
        {
            Response.Redirect("~/bookfailed.aspx");
        }
 
    }


    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (txtldate.Text != "")
        {
            if (Calendar2.SelectedDate.Date.ToUniversalTime() < Calendar1.SelectedDate.Date.ToUniversalTime())
            {
                lblmsg.Text = "* Pickup Date Cannot Be After The Leaving Date";
                txtpdate.Text = Calendar1.SelectedDate.Date.ToShortDateString();
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }
            else if (Calendar2.SelectedDate.Date.ToUniversalTime() == Calendar1.SelectedDate.Date.ToUniversalTime())
            {
                lblmsg.Text = "* Pickup Date Cannot Be Equal To The Leaving Date";
                txtpdate.Text = Calendar1.SelectedDate.Date.ToShortDateString();
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }
            else if (Calendar1.SelectedDate.Date.ToUniversalTime() <= System.DateTime.Now.ToUniversalTime())
            {
                lblmsg.Text = "* Pickup Date Cannot Be Before Or Equal To Today's Date";
                txtpdate.Text = Calendar1.SelectedDate.Date.ToShortDateString();
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }
            
            else
            {
                lblmsg.Text = "";
                Calendar1.Visible = false;
                Calendar2.Visible = false;
                txtpdate.Text = Calendar1.SelectedDate.Date.ToShortDateString();
            }
        }
        else
        {
            if(Calendar1.SelectedDate.Date.ToUniversalTime() <= System.DateTime.Now.ToUniversalTime())
            {
                lblmsg.Text = "* Pickup Date Cannot Be Before Or Equal To Today's Date";
                txtpdate.Text = Calendar1.SelectedDate.Date.ToShortDateString();
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }
            
            else
            {
                lblmsg.Text = "";
                Calendar1.Visible = false;
                Calendar2.Visible = false;
                txtpdate.Text = Calendar1.SelectedDate.Date.ToShortDateString();
            }
        }
       
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        if (txtpdate.Text != "")
        {
            if (Calendar2.SelectedDate.Date.ToUniversalTime() < Calendar1.SelectedDate.Date.ToUniversalTime())
            {
                lblmsg0.Text = "* Leaving Date Cannot Be Before The Pickup Date";
                txtldate.Text = Calendar2.SelectedDate.Date.ToShortDateString();
                Calendar2.Visible = false;
                Calendar1.Visible = false;

            }
            else if (Calendar2.SelectedDate.Date.ToUniversalTime() == Calendar1.SelectedDate.Date.ToUniversalTime())
            {
                lblmsg0.Text = "* Leaving Date Cannot Be Equal To The Pickup Date";
                txtldate.Text = Calendar2.SelectedDate.Date.ToShortDateString();
                Calendar2.Visible = false;
                Calendar1.Visible = false;

            }
            else if (Calendar2.SelectedDate.Date.ToUniversalTime() <= System.DateTime.Now.ToUniversalTime())
            {
                lblmsg0.Text = "* Leaving Date Cannot Be Before Or Equal To Today's Date";
                txtldate.Text = Calendar2.SelectedDate.Date.ToShortDateString();
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }
            
            else
            {
                lblmsg0.Text = "";
                Calendar1.Visible = false;
                Calendar2.Visible = false;
                txtldate.Text = Calendar2.SelectedDate.Date.ToShortDateString();
            }
        }

        else
        {
            if (Calendar2.SelectedDate.Date.ToUniversalTime() <= System.DateTime.Now.ToUniversalTime())
            {
                lblmsg0.Text = "* Leaving Date Cannot Be Before Or Equal To Today's Date";
                txtldate.Text = Calendar2.SelectedDate.Date.ToShortDateString();
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }
            
            else
            {
                lblmsg0.Text = "";
                Calendar1.Visible = false;
                Calendar2.Visible = false;
                txtldate.Text = Calendar2.SelectedDate.Date.ToShortDateString();
            }
        }
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            lblmsg0.Text = "";
            lblmsg.Text = "";
            Calendar1.Visible = false;
        }
        else
        {
            lblmsg0.Text = "";
            lblmsg.Text = "";
            Calendar2.Visible = false;
            Calendar1.Visible = true;
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar2.Visible)
        {
            lblmsg0.Text = "";
            lblmsg.Text = "";
            Calendar2.Visible = false;
        }
        else
        {
            lblmsg0.Text = "";
            lblmsg.Text = "";
            Calendar1.Visible = false;
            Calendar2.Visible = true;
        }
    }
    protected void txtpdate_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void txtldate_TextChanged(object sender, EventArgs e)
    {
       
    }
}
