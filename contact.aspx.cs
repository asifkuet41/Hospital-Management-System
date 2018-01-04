using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Configuration;

using System.Data.SqlClient;
using System.Net;

using System.Net.Mail;

public partial class Deft : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
        {
            if (Session["login"] == null) ;
            //Response.Redirect("home.aspx");
            else
            {
                Response.ClearHeaders();

                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");

                Response.AddHeader("Pragma", "no-cache");
            }
        }
    }
    protected void LogOut_Click(object o, EventArgs e)
    {
        if (Session["login"] == null)
            Response.Redirect("Login.aspx");
        Session.Clear();

        HttpCookie myCookie = new HttpCookie("Preferences");
        myCookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(myCookie);

        Response.Redirect(Request.RawUrl);
    }

    protected void SignUp_Click(object o, EventArgs e)
    {
        if (Session["login"] == null) Response.Redirect("reginstration.aspx");

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            using (MailMessage mm = new MailMessage("asifahmedcse13@gmail.com", "ahmedasif767@gmail.com"))
            {


                mm.Subject = "Account Activation";

                string body = "Sender : " + name.Text;

                body += "<br />Email : " + email.Text;


                body += "<br />Subject : " + subject.Text;

                mm.Body = body;

                mm.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";

                smtp.EnableSsl = true;

                NetworkCredential NetworkCred = new NetworkCredential("asifahmedcse13@gmail.com", "asifcse13");
                smtp.UseDefaultCredentials = true;

                smtp.Credentials = NetworkCred;

                smtp.Port = 587;

                smtp.Send(mm);
                Label1.Text = "Thank you for contact us";
                name.Text = null;
                email.Text = null;
                mobile.Text = null;
                subject.Text = null;
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "There is an unknown problem. Please try again later";
        }
    }

   
}