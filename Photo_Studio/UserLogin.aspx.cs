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
    public partial class UserLogin : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["photodb"].ConnectionString;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);

            string uid = txtemail.Text;
            string pass = txtpass.Text;
            con.Open();
            string qry = "select * from user1 where email='" + uid + "' and password='" + pass + "'";
            cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["Email"] = txtemail.Text;
                Response.Redirect("Main.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Wrong Name And Password...!!!');window,location='UserLogin.aspx';", true);

            }

            con.Close();
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}