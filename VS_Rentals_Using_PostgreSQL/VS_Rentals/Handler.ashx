<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data;
using Npgsql;
using NpgsqlTypes;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string cs = ConfigurationManager.ConnectionStrings["rentConnectionString"].ConnectionString;
        NpgsqlConnection myConnection = new NpgsqlConnection(cs);
        myConnection.Open();
        string sql = "Select picture from products where productid=@productid";
        NpgsqlCommand cmd = new NpgsqlCommand(sql, myConnection);
        cmd.Parameters.Add("@productid", NpgsqlDbType.Varchar).Value = context.Request.QueryString["id"];
        cmd.Prepare();
        NpgsqlDataReader dr = cmd.ExecuteReader();
        dr.Read(); 
        context.Response.BinaryWrite((byte[])dr["picture"]);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}