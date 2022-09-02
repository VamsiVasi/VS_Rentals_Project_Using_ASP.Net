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
using System.Data.Odbc;
using System.Data.OleDb;


public partial class signup : System.Web.UI.Page
{
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
            int avail = int.Parse(lblavail.Text);
            int avail1 = int.Parse(Label8.Text);
            int avail2 = int.Parse(Label21.Text);
            int avail3 = int.Parse(Label25.Text);
            if (avail == 1 && avail1 == 1 && avail2 == 1 && avail3 == 1)
            {
                SqlCommand cmd = new SqlCommand();
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into vendortab values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtusername.Text + "','" + txtpswd.Text + "','" + rdbtnlist.SelectedItem.Text + "','" + txtaddress.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txtpincode.Text + "','" + txtmobileno.Text + "','" + txttelno.Text + "','" + txtemail.Text + "','" + txtaltemail.Text + "','" + txtdate.Text + "','" + ddlsecquestion.SelectedItem.Text + "','" + txtsecanswer.Text + "')";
                cmd.ExecuteNonQuery();
                cn.Close();
                Session["vfname"] = txtfname.Text;
                Session["vlname"] = txtlname.Text;
                Session["vuname"] = txtusername.Text;
                Session["vpwd"] = txtpswd.Text;
                Session["vgender"] = rdbtnlist.SelectedItem.Text;
                Session["vaddress"] = txtaddress.Text;
                Session["vcity"] = DropDownList2.SelectedItem.Text;
                Session["vstate"] = DropDownList1.SelectedItem.Text;
                Session["vpincode"] = txtpincode.Text;
                Session["vmobile"] = txtmobileno.Text;
                Session["vtel"] = txttelno.Text;
                Session["vemail"] = txtemail.Text;
                Session["vaemail"] = txtaltemail.Text;
                Session["vdate"] = txtdate.Text;
                Session["vquestion"] = ddlsecquestion.SelectedItem.Text;
                Session["vanswer"] = txtsecanswer.Text;
                Response.Redirect("successregister.aspx");
            }
            else
            {

                Response.Redirect("failregister.aspx");
            }
        

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        txtfname.Text = "";
        txtlname.Text = "";
        txtusername.Text = "";
        txtpswd.Text = "";
        txtaddress.Text = "";
        txtpincode.Text = "";
        txtmobileno.Text = "";
        txttelno.Text = "";
        txtemail.Text = "";
        txtaltemail.Text = "";
        txtdate.Text = "";
       
        txtsecanswer.Text = "";

    }

    
    protected void txtdate_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void txtsecanswer_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtmobileno_TextChanged(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand();
        cn.Open();
        string s;
        s = "select * from vendortab where vmobile='" + txtmobileno.Text + "'";
        cmd = new SqlCommand(s, cn);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            lblcheck0.Visible = true;
            lblcheck0.Text = "* Mobile No. Exists";
            Label25.Text = "0";
            txtmobileno.BorderColor = System.Drawing.Color.Red;
            txtmobileno.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            lblcheck0.Visible = true;
            lblcheck0.Text = "";
            Label25.Text = "1";
            txtmobileno.BorderColor = System.Drawing.Color.Green;
            txtmobileno.ForeColor = System.Drawing.Color.Green;
        }
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
            if (DropDownList1.SelectedIndex == 0)
            {

                
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                


                DropDownList2.DataBind();
            }
            if (DropDownList1.SelectedIndex == 1)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 2)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 3)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 4)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 5)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 6)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 7)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 8)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 9)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 10)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 11)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 12)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 13)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 14)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 15)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 16)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 17)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 18)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 19)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 20)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 21)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 22)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 23)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 24)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 25)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 26)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 27)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 28)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            }
            if (DropDownList1.SelectedIndex == 29)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 30)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 31)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 32)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 33)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 34)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            } if (DropDownList1.SelectedIndex == 35)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            }
            if (DropDownList1.SelectedIndex == 36)
            {

                da = new SqlDataAdapter("select city from city where stateid='" + DropDownList1.SelectedValue + "'", cn);
                ds = new DataSet();
                da.Fill(ds, "city");
                dt = ds.Tables["city"];
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                cmb = new SqlCommandBuilder(da);
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("--City--");
                for (i = 0; i < dt.Rows.Count; i++)
                    DropDownList2.Items.Add(dt.Rows[i][0].ToString());


                DropDownList2.DataBind();
            }
      }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand();
        cn.Open();
        string s;
        s = "select * from vendortab where vuname='" + txtusername.Text + "'";
        cmd = new SqlCommand(s, cn);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            lblcheck.Visible = true;
            lblcheck.Text = "* UserName Exists";
            lblavail.Text = "0";
            txtusername.BorderColor = System.Drawing.Color.Red;
            txtusername.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            lblcheck.Visible = true;
            lblcheck.Text = "";
            lblavail.Text = "1";
            txtusername.BorderColor = System.Drawing.Color.Green;
            txtusername.ForeColor = System.Drawing.Color.Green;
        }
        cn.Close();
    }
    protected void txtemail_TextChanged(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        SqlCommand cmd1 = new SqlCommand();
        cn.Open();
        string s1;
        s1 = "select * from vendortab where vemail='" + txtemail.Text + "' or vaemail='" + txtemail.Text + "'";
        cmd1 = new SqlCommand(s1, cn);
        SqlDataReader dr1 = cmd1.ExecuteReader();

        if (dr1.HasRows)
        {
            Label23.Visible = true;
            Label23.Text = "* Mail Id Exists";
            Label8.Text = "0";
            txtemail.BorderColor = System.Drawing.Color.Red;
            txtemail.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Label23.Visible = true;
            Label23.Text = "";
            Label8.Text = "1";
            txtemail.BorderColor = System.Drawing.Color.Green;
            txtemail.ForeColor = System.Drawing.Color.Green;
        }
        cn.Close();
    }
    protected void txtaltemail_TextChanged(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        SqlCommand cmd2 = new SqlCommand();
        cn.Open();
        string s2;
        s2 = "select * from vendortab where vemail='" + txtaltemail.Text + "' or vaemail='" + txtaltemail.Text + "'";
        cmd2 = new SqlCommand(s2, cn);
        SqlDataReader dr2 = cmd2.ExecuteReader();

        if (dr2.HasRows)
        {
            Label24.Visible = true;
            Label24.Text = "* Mail Id Exists";
            Label21.Text = "0";
            txtaltemail.BorderColor = System.Drawing.Color.Red;
            txtaltemail.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Label24.Visible = true;
            Label24.Text = "";
            Label21.Text = "1";
            txtaltemail.BorderColor = System.Drawing.Color.Green;
            txtaltemail.ForeColor = System.Drawing.Color.Green;

        }
        cn.Close();
    }
}