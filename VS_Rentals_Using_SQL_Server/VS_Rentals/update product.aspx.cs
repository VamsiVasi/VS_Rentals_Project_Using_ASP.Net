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

public partial class update_product : System.Web.UI.Page
{   
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;
        txtproductname.Visible = false;
        Label8.Visible = false;
        FileUpload1.Visible = false;
        lblrent.Visible = false;
        Label7.Visible = false;
        Label9.Visible = false;
        txtdescription.Visible = false;
        ddlstatus.Visible = false;
        txtrent.Visible = false;
        btnsubmit.Visible = false;
        Button2.Visible = false;
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        SqlDataAdapter da;
        DataTable dt;
        Label5.Visible = true;
        txtproductname.Visible = true;
        Label8.Visible = true;
        FileUpload1.Visible = true;
        DropDownList1.Enabled = false;
        DropDownList2.Enabled = false;
        lblrent.Visible = true;
        Label7.Visible = true;
        Label9.Visible = true;        
        txtdescription.Visible = true;
        ddlstatus.Visible = true;
        txtrent.Visible = true;
        btnsubmit.Visible = true;
        Button2.Visible = true;
        Button1.Visible = false;
        if (cn.State == ConnectionState.Closed)
            cn.Open();
        da = new SqlDataAdapter("select rent,description,status,productname from products where productid=" + Convert.ToInt32(DropDownList2.SelectedItem.Text), cn);
        dt = new DataTable();
        da.Fill(dt);
        txtrent.Text = dt.Rows[0][0].ToString();
        txtdescription.Text = dt.Rows[0][1].ToString();
        ddlstatus.Text = dt.Rows[0][2].ToString();
        txtproductname.Text = dt.Rows[0][3].ToString();
        cn.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        SqlDataAdapter da;
        DataSet ds;
        SqlCommandBuilder cmb;
        DataTable dt;
        string user;
        user = Session["vuname"].ToString();
        if (DropDownList1.SelectedIndex == 0)
        {


            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");

            DropDownList2.DataBind();


        }
        if (DropDownList1.SelectedIndex == 1)
        {

            da = new SqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new SqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());


            DropDownList2.DataBind();
        }


        if (DropDownList1.SelectedIndex == 2)
        {

            da = new SqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new SqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)

                DropDownList2.Items.Add(dt.Rows[i][9].ToString());

            DropDownList2.DataBind();

        }


        if (DropDownList1.SelectedIndex == 3)
        {

            da = new SqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new SqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();

        }
        if (DropDownList1.SelectedIndex == 4)
        {

            da = new SqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new SqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();

        }
        if (DropDownList1.SelectedIndex == 5)
        {

            da = new SqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new SqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();

        }

        if (DropDownList1.SelectedIndex == 6)
        {

            da = new SqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new SqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();


        }
        if (DropDownList1.SelectedIndex == 7)
        {

            da = new SqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new SqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();
        }
        if (DropDownList1.SelectedIndex == 8)
        {

            da = new SqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new SqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();
        }
        if (DropDownList1.SelectedIndex == 9)
        {

            da = new SqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new SqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        string user, s;
        user = Session["vuname"].ToString();
        string type, id;
        type = DropDownList1.SelectedValue;
        id = DropDownList2.SelectedItem.Text;
       if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "" && ddlstatus.SelectedItem.Text != "--Select--" && txtrent.Text != "" && txtdescription.Text!="" && txtproductname.Text!="")
            {
                byte[] myimage = new byte[FileUpload1.PostedFile.ContentLength];
                HttpPostedFile Image = FileUpload1.PostedFile;
                Image.InputStream.Read(myimage, 0, (int)FileUpload1.PostedFile.ContentLength);
                s = "update products set productname = '" + txtproductname.Text + "',rent = '" + txtrent.Text + "',description = '" + txtdescription.Text + "',status = '" + ddlstatus.SelectedItem.Text + "',picture=@picture where vendorname='" + user + "' and  producttype='" + type + "' and productid = '" + id + "'";
                SqlCommand cmd2 = new SqlCommand(s, cn);
                cn.Open();
                cmd2.Parameters.Add("@picture", SqlDbType.Image, myimage.Length).Value = myimage;
                cmd2.ExecuteNonQuery();
                Session["vendorname"] = user;
                Session["productid"] = id;
                Response.Redirect("~/product updated.aspx");    
                cn.Close();   
            }
            else
            {
                Label5.Visible = true;
                txtproductname.Visible = true;
                lblrent.Visible = true;
                Label7.Visible = true;
                Label9.Visible = true;
                txtdescription.Visible = true;
                ddlstatus.Visible = true;
                txtrent.Visible = true;
                btnsubmit.Visible = true;
                Button2.Visible = true;
                Label8.Visible = true;
                FileUpload1.Visible = true;
                lblmsg.Text = "<center>* Fill All Details *</center>";
            }
      
    }

    protected void txtdescription_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlstatus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         fun();
    }
    public void fun()
    {
        Response.Redirect("update product.aspx");
    }
    
}

