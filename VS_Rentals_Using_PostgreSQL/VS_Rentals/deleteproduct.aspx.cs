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
public partial class deleteproduct : System.Web.UI.Page
{

    NpgsqlDataAdapter da;
    DataSet ds;
    NpgsqlCommandBuilder cmb;
    DataTable dt;
   
    int i;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        NpgsqlConnection cn = new NpgsqlConnection(cs);
         cn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["productid"] = DropDownList2.SelectedItem.Text;
        Session["producttype"] = DropDownList1.SelectedValue;
        Response.Redirect("~/confirm deleteproduct.aspx");
      

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;

        NpgsqlConnection cn = new NpgsqlConnection(cs);

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

            da = new NpgsqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)

            DropDownList2.Items.Add(dt.Rows[i][9].ToString());
          

            DropDownList2.DataBind();


        }


        if (DropDownList1.SelectedIndex == 2)
        {

            da = new NpgsqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)

            DropDownList2.Items.Add(dt.Rows[i][9].ToString());
         
            DropDownList2.DataBind();

        }


        if (DropDownList1.SelectedIndex == 3)
        {

            da = new NpgsqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();

        }
        if (DropDownList1.SelectedIndex == 4)
        {

            da = new NpgsqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();

        }
        if (DropDownList1.SelectedIndex == 5)
        {

            da = new NpgsqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();

        }

        if (DropDownList1.SelectedIndex == 6)
        {

            da = new NpgsqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();


        }
        if (DropDownList1.SelectedIndex == 7)
        {

            da = new NpgsqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();
        }
        if (DropDownList1.SelectedIndex == 8)
        {

            da = new NpgsqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();
        }
        if (DropDownList1.SelectedIndex == 9)
        {

            da = new NpgsqlDataAdapter("select * from products where producttype='" + DropDownList1.SelectedValue + "' and vendorname='" + user + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "products");
            dt = ds.Tables["products"];
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            cmb = new NpgsqlCommandBuilder(da);
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Product Id--");
            for (i = 0; i < dt.Rows.Count; i++)
                DropDownList2.Items.Add(dt.Rows[i][9].ToString());
            DropDownList2.DataBind();
        }
      
    }
}