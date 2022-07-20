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
    public partial class Order : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["photodb"].ConnectionString;
        SqlCommand cmd,cmd1,cmd2,cmd3;
        int a,status;
        SqlDataReader dr;
        DataTable dt, dt1;
        SqlDataAdapter sda, sda1;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Email"] == null)
            {
                Response.Redirect("UserLogin.aspx");

            }
            else
            {
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                string qry = "select * from user1 where email='" + Session["Email"] + "'";
                cmd = new SqlCommand(qry, con);
               
                dr = cmd.ExecuteReader();

                if (dr.Read())
                {

                    lblname.Text = dr[1].ToString();
                    lblemail.Text = dr[2].ToString();

                    a = 1;
                }
                else
                {

                }
                dr.Close();
                if (a == 1)
                {
                    string sql = "select top 1 name,contact from cameraman where status=@status";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@status", "free");
                    dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        lblphotoname.Text = dr[0].ToString();
                        lblphotocontact.Text = dr[1].ToString();
                        a = 2;
                    }
                    else
                    {

                    }
                    dr.Close();
                }
                if (a == 2)
                {
                    string sql = "select price from category where category='"+ drpcat.SelectedValue +"'";
                    cmd = new SqlCommand(sql, con);
                    dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        lblamnt.Text = dr[0].ToString();
                        
                    }
                    else
                    {

                    }
                    dr.Close();
                   
                }
                con.Close();
            }
          

        }
        protected void txtdate_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string qry = "Insert into booking (date) values(@date) ";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(txtdate.Text));
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void update()
        {
            string a = "booked";
            
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string qry = "Update  cameraman SET status=@status where name=@name ";
            cmd3 = new SqlCommand(qry, con);
            cmd3.Parameters.AddWithValue("@status", a);
            cmd3.Parameters.AddWithValue("@name", lblphotoname.Text);
            cmd3.ExecuteNonQuery();
            con.Close();
         
        }

        protected void insert()
        {
            string b = "free";
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            cmd = new SqlCommand("INSERT INTO cameraman VALUES(@name,@con,@status)", con);
            cmd.Parameters.AddWithValue("@name",lblphotoname.Text);
            cmd.Parameters.AddWithValue("@con", lblphotocontact.Text);
            cmd.Parameters.AddWithValue("@status", b);
            cmd.ExecuteNonQuery();
            con.Close();

        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            string b = "free";
            dt= new DataTable();
            dt1 = new DataTable();
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string qry = "select * from booking where date='" + txtdate.Text +"' ";
            string qry1 = "select * from cameraman where status = '"+ b +"' ";   
            sda = new SqlDataAdapter(qry, con);
            sda1 = new SqlDataAdapter(qry1, con);
            sda.Fill(dt);
            sda1.Fill(dt1);
            int count = dt.Rows.Count;
             status = dt1.Rows.Count;
            try
            {
                if (count <= (status*2) )
                {
                    cmd1 = new SqlCommand("INSERT INTO booking(category,date,time,uname,email,contact,address,city,pname,pcontact,price) VALUES(@cat,@date,@time,@name,@email,@contact,@add,@city,@pname,@pcontact,@price)", con);
                    cmd1.Parameters.AddWithValue("@cat", drpcat.SelectedValue);
                    cmd1.Parameters.AddWithValue("@date",Convert.ToDateTime( txtdate.Text));
                    cmd1.Parameters.AddWithValue("@time", txttime.Text);
                    cmd1.Parameters.AddWithValue("@name", lblname.Text);
                    cmd1.Parameters.AddWithValue("@email", lblemail.Text);
                    cmd1.Parameters.AddWithValue("@contact", txtcontact.Text);
                    cmd1.Parameters.AddWithValue("@add", txtadd.Text);
                    cmd1.Parameters.AddWithValue("@city", txtcity.Text);
                    cmd1.Parameters.AddWithValue("@pname", lblphotoname.Text);
                    cmd1.Parameters.AddWithValue("@pcontact", lblphotocontact.Text);
                    cmd1.Parameters.AddWithValue("@price",Convert.ToInt16(lblamnt.Text));
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Confirm Order!!!');window,location='confirmbooking.aspx';", true);
                }
                else
                {
                   ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Sorry You Can Not Book On This Date...!!!');window,location='Order.aspx';", true);
                }
                con.Close();
                update();
                insert();
               
            }
            catch (Exception ae)
            {
                lblerr.Text = ae.ToString();
            }
        }

       
    }
}