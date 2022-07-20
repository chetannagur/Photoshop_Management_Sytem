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
    public partial class Feedback : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["photodb"].ConnectionString;
        SqlCommand cmd;
        
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            
             if (Session["Email"] == null)
            {
                Response.Redirect("UserLogin.aspx");

            }
             else
             {
            txtemail.Enabled=false;
            lbldate.Text = DateTime.Now.ToShortDateString();
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string qry = "select  email,name from user1 where email='" + Session["Email"] + "' ";
            cmd = new SqlCommand(qry, con);

            dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                txtemail.Text = dr[0].ToString();
                lblname.Text = dr[1].ToString();
              

            }
            
            con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            cmd = new SqlCommand("INSERT INTO feedback VALUES(@name,@email,@pass)", con);
            cmd.Parameters.AddWithValue("@name", lblname.Text);
            cmd.Parameters.AddWithValue("@email", txtfeed.Text);
            cmd.Parameters.AddWithValue("@pass", Convert.ToDateTime(lbldate.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Your Feedback register Successfuly!!!');window,location='Main.aspx';", true);
        }
    }
}