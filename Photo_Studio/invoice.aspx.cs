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
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
namespace Photo_Studio
{
    public partial class invoice : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["photodb"].ConnectionString;
        SqlCommand cmd, cmd1;
        int a;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            string qry = "select TOP 1 category,date,time,uname,email,contact,address,city,pname,pcontact,price,cdate from order1 where email='" + Session["Email"] + "' ORDER BY id DESC";
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
                lblcdate.Text=dr[11].ToString();
                lbltotal.Text = dr[10].ToString();

            }
        
        }
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            exportpdf();
        }


    }
}