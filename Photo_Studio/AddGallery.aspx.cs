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
    public partial class AddGallery : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["photodb"].ConnectionString;
        SqlCommand cmd;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Enabled = false;

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            cmd = new SqlCommand("INSERT INTO cameraman VALUES(@name,@con,@status)", con);
            
            cmd.Parameters.AddWithValue("@name", txtname.Text);

            cmd.Parameters.AddWithValue("@con", txtcontact.Text);
            cmd.Parameters.AddWithValue("@status", TextBox1.Text);
           
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Register Successfully!!!');window,location='AdminMain.aspx';", true);
        }

        protected void update_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            cmd = new SqlCommand("UPDATE cameraman set contact=@con,status=@status WHERE name=@name", con);

            cmd.Parameters.AddWithValue("@name", txtname.Text);

            cmd.Parameters.AddWithValue("@con", txtcontact.Text);
            cmd.Parameters.AddWithValue("@status", TextBox1.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Updated Successfully!!!');window,location='AdminMain.aspx';", true);
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            cmd = new SqlCommand("DELETE FROM cameraman  WHERE name=@name", con);

            cmd.Parameters.AddWithValue("@name", txtname.Text);

            

            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Deleted Successfully!!!');window,location='AdminMain.aspx';", true);
        }
    }
}