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
    public partial class ContactUs : System.Web.UI.Page
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
                txtemail.Enabled = false;
                lbldate.Text = DateTime.Now.ToShortDateString();
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string qry = "select  email,name,contact from user1 where email='" + Session["Email"] + "' ";
                cmd = new SqlCommand(qry, con);

                dr = cmd.ExecuteReader();

                if (dr.Read())
                {

                    txtemail.Text = dr[0].ToString();
                    txtname.Text = dr[1].ToString();
                    txtcontact.Text = dr[2].ToString();


                }

                con.Close();
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            cmd = new SqlCommand("INSERT INTO contact VALUES(@email,@name,@con,@query,@pass)", con);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            
            cmd.Parameters.AddWithValue("@con", txtcontact.Text);
            cmd.Parameters.AddWithValue("@query", txtquery.Text);
            cmd.Parameters.AddWithValue("@pass", Convert.ToDateTime(lbldate.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Thanks... We will mail You!!!');window,location='Main.aspx';", true);
        }
    }
}