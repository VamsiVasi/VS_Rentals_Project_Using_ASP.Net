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
using NpgsqlTypes;

public partial class add_product : System.Web.UI.Page
{
    NpgsqlDataAdapter da;
    DataSet ds;
    NpgsqlCommandBuilder cmb;
    DataTable dt;

    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        string user;
        user = Session["vuname"].ToString();
        txtvendor.Text = user;
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
       
            int avail = int.Parse(lblavail.Text);
            if (avail == 1)
            {
                if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
                {
                    byte[] myimage = new byte[FileUpload1.PostedFile.ContentLength];
                    HttpPostedFile Image = FileUpload1.PostedFile;
                    Image.InputStream.Read(myimage, 0, (int)FileUpload1.PostedFile.ContentLength);
                    string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;

                    NpgsqlConnection cn = new NpgsqlConnection(cs);

                    NpgsqlCommand storeimage = new NpgsqlCommand("INSERT INTO products(vendorname,producttype,availstate,availcity,productname,rent,status,description,picture,productid) values(@vendorname,@producttype,@availstate,@availcity,@productname,@rent,@status,@description,@picture,@productid)", cn);
                    cn.Open();
                    storeimage.Parameters.Add("@vendorname", NpgsqlDbType.Varchar, 50).Value = txtvendor.Text;
                    storeimage.Parameters.Add("@producttype", NpgsqlDbType.Varchar, 50).Value = DropDownList3.SelectedValue;
                    storeimage.Parameters.Add("@availstate", NpgsqlDbType.Varchar, 50).Value = DropDownList1.SelectedItem.Text;
                    storeimage.Parameters.Add("@availcity", NpgsqlDbType.Varchar, 50).Value = DropDownList2.SelectedItem.Text;
                    storeimage.Parameters.Add("@productname", NpgsqlDbType.Text).Value = txtproductname.Text;
                    storeimage.Parameters.Add("@rent", NpgsqlDbType.Text).Value = txtrent.Text;
                    storeimage.Parameters.Add("@status", NpgsqlDbType.Varchar, 50).Value = ddlstatus.SelectedItem.Text;
                    storeimage.Parameters.Add("@description", NpgsqlDbType.Text).Value = txtdescription.Text;
                    storeimage.Parameters.Add("@picture", NpgsqlDbType.Bytea, myimage.Length).Value = myimage;
                    storeimage.Parameters.Add("@productid", NpgsqlDbType.Varchar, 50).Value = txtpid.Text;
                    storeimage.ExecuteNonQuery();
                    Session["vendorname"] = txtvendor.Text;
                    Session["productid"] = txtpid.Text;
                    Response.Redirect("~/product added.aspx");
                    cn.Close();

                }
            }
            else
            {
                
                Response.Redirect("~/addfailed.aspx");
            }
       
    }


    protected void txtpid_TextChanged(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;

        NpgsqlConnection cn = new NpgsqlConnection(cs);

        NpgsqlCommand cmd = new NpgsqlCommand();
        cn.Open();
        string s;
        s = "select * from products where productid='" + txtpid.Text + "'";
        cmd = new NpgsqlCommand(s, cn);
        NpgsqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            lblmsg.Text = "* Product Id Exists";
            lblavail.Text = "0";
            txtpid.BorderColor = System.Drawing.Color.Red;
            txtpid.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            lblmsg.Text = "";
            lblavail.Text = "1";
            txtpid.BorderColor = System.Drawing.Color.Green;
            txtpid.ForeColor = System.Drawing.Color.Green;
        }
    }
    protected void txtdescription_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlstatus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtvendor_TextChanged(object sender, EventArgs e)
    {

    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtpid.Text = "";
        txtproductname.Text = "";
        txtrent.Text = "";
        txtdescription.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;

        NpgsqlConnection cn = new NpgsqlConnection(cs);

        if (DropDownList1.SelectedIndex == 0)
        {


            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");



            DropDownList2.DataBind();
        }
        if (DropDownList1.SelectedIndex == 1)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 2)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 3)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 4)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 5)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 6)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 7)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 8)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 9)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 10)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 11)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 12)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 13)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 14)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 15)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 16)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 17)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 18)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 19)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 20)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 21)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 22)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 23)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 24)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 25)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 26)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 27)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 28)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        }
        if (DropDownList1.SelectedIndex == 29)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 30)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 31)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 32)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 33)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 34)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        } if (DropDownList1.SelectedIndex == 35)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        }
        if (DropDownList1.SelectedIndex == 36)
        {

            da = new NpgsqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "city");
            dt = ds.Tables["city"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--City--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][0].ToString());


            DropDownList2.DataBind();
        }
    }
}
