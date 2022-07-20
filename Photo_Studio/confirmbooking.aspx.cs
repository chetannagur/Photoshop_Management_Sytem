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
    public partial class confirmbooking : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["photodb"].ConnectionString;
        SqlCommand cmd,cmd1;
        int a;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblcdate.Text = DateTime.Now.ToShortDateString();
             if (Session["Email"] == null)
            {
                Response.Redirect("UserLogin.aspx");

            }
            else
            {
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string qry = "select TOP 1 category,date,time,uname,email,contact,address,city,pname,pcontact,price from booking where email='" + Session["Email"] + "' ORDER BY id DESC";
                cmd = new SqlCommand(qry, con);
               
                dr = cmd.ExecuteReader();

                if (dr.Read())
                {

                    lblcat.Text = dr[0].ToString();
                    lbldate.Text = dr[1].ToString();
                    lbltime.Text = dr[2].ToString();
                    lblname.Text = dr[3].ToString();
                    lblemail.Text = dr[4].ToString();
                    lblcontact.Text = dr[5].ToString();
                    lbladd.Text = dr[6].ToString();
                    lblcity.Text = dr[7].ToString();
                    lblpname.Text = dr[8].ToString();
                    lblpcontact.Text = dr[9].ToString();
                    lblamnt.Text = dr[10].ToString();
                  

                    a = 1;
                }
                else
                {

                }
                dr.Close();
               
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                SqlConnection con = new SqlConnection(connStr);

                    con.Open();
                    cmd1 = new SqlCommand("insert into order1 values(@cat,@date,@time,@name,@email,@contact,@add,@city,@pname,@pcontact,@price,@cdate)", con);
                    cmd1.Parameters.AddWithValue("@cat", lblcat.Text);
                    cmd1.Parameters.AddWithValue("@date", Convert.ToDateTime(lbldate.Text));
                    cmd1.Parameters.AddWithValue("@time", lbltime.Text);
                    cmd1.Parameters.AddWithValue("@name", lblname.Text);
                    cmd1.Parameters.AddWithValue("@email", lblemail.Text);
                    cmd1.Parameters.AddWithValue("@contact", lblcontact.Text);
                    cmd1.Parameters.AddWithValue("@add", lbladd.Text);
                    cmd1.Parameters.AddWithValue("@city", lblcity.Text);
                    cmd1.Parameters.AddWithValue("@pname", lblpname.Text);
                    cmd1.Parameters.AddWithValue("@pcontact", lblpcontact.Text);
                    cmd1.Parameters.AddWithValue("@price", Convert.ToInt16(lblamnt.Text));
                    cmd1.Parameters.AddWithValue("@cdate", Convert.ToDateTime(lblcdate.Text));
                    cmd1.ExecuteNonQuery();

                    con.Close();
                    Response.Redirect("invoice.aspx");
                }
               
    }
}
