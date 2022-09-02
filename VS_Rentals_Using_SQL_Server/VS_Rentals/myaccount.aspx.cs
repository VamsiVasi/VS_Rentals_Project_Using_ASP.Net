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

public partial class myaccount : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    SqlCommandBuilder cmb;
    DataTable dt;

    int i;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        string user;
        user = Session["vuname"].ToString();
        txtusername.Text = user;
        if (cn.State == ConnectionState.Closed)
            cn.Open();
        cmd = new SqlCommand("select count(*) from vendortab where vuname='" + user + "'", cn);
        int c = int.Parse(cmd.ExecuteScalar().ToString());
        if (c == 1)
        {
            SqlCommand cmd1 = new SqlCommand("select * from vendortab where vuname='" + user + "'", cn);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                txtfname.Text = dr[0].ToString();
                txtlname.Text = dr[1].ToString();
                txtpswd.Text = dr[3].ToString();
               
                txtemail.Text = dr[11].ToString();
                
                txtaltemail.Text = dr[12].ToString();
            }
        }

        cn.Close();
        Session["tempname"] = txtusername.Text;
    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        int avail3 = int.Parse(Label25.Text);
        if (avail3 == 1)
        {
            string user, s;

            user = Session["vuname"].ToString();

            s = "update vendortab set vgender='" + rdbtnlist.SelectedItem.Text + "',vdate='" + txtdate.Text + "',vquestion='" + ddlsecquestion.SelectedItem.Text + "', vanswer='" + txtsecanswer.Text + "', vaddress='" + txtaddress.Text + "',vcity='" + DropDownList2.SelectedItem.Text + "',vstate='" + DropDownList1.SelectedItem.Text + "',vpincode='" + txtpincode.Text + "',vmobile='" + txtmobileno.Text + "',vtel='" + txttelno.Text + "' where vuname='" + user + "'";
            SqlCommand cmd2 = new SqlCommand(s, cn);
            cn.Open();
            cmd2.ExecuteNonQuery();
            cn.Close();
            Session["vuname"] = txtusername.Text;
            Response.Redirect("~/profile edited.aspx");
        }
        else
        {
            Session["vuname"] = txtusername.Text;
            Response.Redirect("~/profileupdatefail.aspx"); 
        }
       
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
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
}
