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
public partial class D : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] names = { Convert.ToString(Session["first"]), Convert.ToString(Session["second"]), Convert.ToString(Session["third"]), Convert.ToString(Session["fourth"]), Convert.ToString(Session["fifth"]), Convert.ToString(Session["sixth"]), Convert.ToString(Session["seventh"]), 
                             Convert.ToString(Session["eighth"]),Convert.ToString( Session["ninth"]),Convert.ToString( Session["tenth"]),Convert.ToString(Session["eleventh"]),  Convert.ToString(Session["12_th"]),Convert.ToString(Session["13_th"])};
        Label1.Text= names[0]+names[1];
        Label2.Text = names[2];
       Label3.Text = names[3];
       Label4.Text = names[4];
       Label5.Text = names[5];
       Label6.Text = names[9];
       Label7.Text = names[10];
       Label8.Text = names[8];
       Label9.Text = names[11];
       Label10.Text = names[12];
       Header.Text = "City Hospital";
        number1.Text= "+95786654545";
        number2.Text = "+08801688725527";
      
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
        Document pdfDoc = new Document(PageSize.A3, 8f, 8f, 0f, 0f);

        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }
}