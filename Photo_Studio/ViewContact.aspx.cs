using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
namespace Photo_Studio
{
    public partial class ViewContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Label1.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            GridViewRow gr = GridView1.SelectedRow;
            txtemail.Text=gr.Cells[2].Text;
            Label1.Text = gr.Cells[3].Text;
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("crystle4143@gmail.com", "saurabh4143");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello " + Label1.Text +" ";
            msg.Body = TextBox1.Text;
            string toaddress = txtemail.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Crystle Photography <crystle4143@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            
            try
            {
                smtp.Send(msg);
               
                TextBox1.Text = "";
                txtemail.Text = "";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Mail Sent Successfully!!!');window,location='ViewContact.aspx';", true);
            }
            catch
            {
                throw;
            }
        }
    }
}