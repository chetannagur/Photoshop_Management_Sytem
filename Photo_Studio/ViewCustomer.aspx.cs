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
    public partial class ViewCustomer : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["photodb"].ConnectionString;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string qry = "delete from user1 where id='"+TextBox1.Text+"'";
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}