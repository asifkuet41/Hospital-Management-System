using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using iTextSharp.text;
using itextsharp.pdfa;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

public partial class prac : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
  
        string[] names = { Convert.ToString(Session["first"]), Convert.ToString(Session["second"]), Convert.ToString(Session["third"]), Convert.ToString(Session["fourth"]), Convert.ToString(Session["fifth"]), Convert.ToString(Session["sixth"]), Convert.ToString(Session["seventh"]), 
                             Convert.ToString(Session["eighth"]),Convert.ToString( Session["ninth"]),Convert.ToString( Session["tenth"]),Convert.ToString(Session["eleventh"])};
        FN.Text = names[0];
        LN.Text = names[1];
        email.Text = names[2];
        nationality.Text = names[3];
        gender.Text = names[4];
        country.Text = names[5];
        telephone.Text = names[6];
        mobile.Text = names[7];
        blood.Text = names[8];
        doctor.Text = names[9];
        disease.Text = names[10];
        
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=TestPage.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        this.Page.RenderControl(hw);
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
   
}