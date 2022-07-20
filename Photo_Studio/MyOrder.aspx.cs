using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace Photo_Studio
{
    public partial class MyOrder : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["photodb"].ConnectionString;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cancel")
            {

                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                cmd = new SqlCommand("DELETE FROM order1  WHERE id='"+e.CommandArgument.ToString()+"'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Order Cancel Successfully!!!');window,location='Main.aspx';", true);

            }
        }
    }
}