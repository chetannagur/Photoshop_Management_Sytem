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
    public partial class ViewOrder : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["photodb"].ConnectionString;
        SqlCommand cmd;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            lbldate.Text = DateTime.Now.ToString("dd:MM:yyyy");
           
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string qry = "select * from order1 where date > convert(date,getdate()) ";
            cmd = new SqlCommand(qry, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            con.Close();
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
           
        }
    }
}