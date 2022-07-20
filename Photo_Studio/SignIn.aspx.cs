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
    public partial class SignIn : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["photodb"].ConnectionString;

        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            
            con.Open();

            cmd = new SqlCommand("INSERT INTO user1 VALUES(@name,@email,@pass,@mobile,@add,@city)", con);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@pass", txtcnfmpass.Text);
            cmd.Parameters.AddWithValue("@mobile", txtcontact.Text);         
            cmd.Parameters.AddWithValue("@add", txtaddress.Text);
            cmd.Parameters.AddWithValue("@city", txtcity.Text); 
            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Registred Successfully...!!!');window,location='UserLogin.aspx';", true);
        }
    }
}