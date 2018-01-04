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


public partial class praccontact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (MailMessage mm = new MailMessage("asifahmedcse13@gmail.com", "imtiaznur@gmail.com"))
        {


            mm.Subject = "Account Activation";

            string body = "Hello";

            body += "<br /><br />Please click the following link to activate your account";

          
            body += "<br /><br />Thanks";

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
}