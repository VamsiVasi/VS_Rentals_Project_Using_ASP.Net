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

public partial class HomePage : System.Web.UI.MasterPage
{
    SqlDataAdapter da;
    DataSet ds;
    SqlCommandBuilder cmb;
    DataTable dt;

    int i;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("select * from products where producttype='" + ddlcategory.SelectedValue + "' and availstate='" + DropDownList1.SelectedItem.Text + "' and availcity='" + DropDownList2.SelectedItem.Text + "'", cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["category"] = ddlcategory.SelectedValue;
            Session["state"] = DropDownList1.SelectedItem.Text;
            Session["city"] = DropDownList2.SelectedItem.Text;
            Response.Redirect("~/searchresults.aspx");
        }
        else
        {
            Response.Redirect("~/noproducts.aspx");
            cn.Close();
        }
    }
   
    protected void ddlcategory_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {

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
}
