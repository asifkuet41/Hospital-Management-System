using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about_us : System.Web.UI.Page
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
}