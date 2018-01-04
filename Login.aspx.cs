using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];

        if (userCookie != null)
        {
            if (!userCookie.Value.Equals(-1))
            {
                Session.Clear();
                Session["Login"] = Login1.UserName.ToString();
                Response.Redirect("home.aspx");
            }
        }
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        
        if(Login1.UserName.ToString()=="admin" && Login1.Password.ToString()=="admin")
        {
            Session["login"] = Login1.UserName.ToString();
           
            if (Login1.RememberMeSet == true)
            {
                HttpCookie userCookie;
                userCookie = Request.Cookies["Preferences"];
                if (userCookie == null)
                {
                    userCookie = new HttpCookie("Preferences");
                    userCookie["username"] = Login1.UserName.ToString();
                    userCookie.Expires = DateTime.Now.AddMonths(1);
                    Response.Cookies.Add(userCookie);
                }

            }
            Response.Redirect("adminvisiblepages.aspx");
        }
        else
        {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();

        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select username from login where username = '" + Login1.UserName.ToString() + "' and password = '" + Login1.Password.ToString() + "' ";
        SqlDataReader reader = select.ExecuteReader();
        if (reader.Read())
        {
            Session["login"] = Login1.UserName.ToString();
            if (Login1.RememberMeSet == true)
            {
                HttpCookie userCookie;
                userCookie = Request.Cookies["Preferences"];
                if (userCookie == null)
                {
                    userCookie = new HttpCookie("Preferences");
                    userCookie["username"] = Login1.UserName.ToString();
                    userCookie.Expires = DateTime.Now.AddMonths(1);
                    Response.Cookies.Add(userCookie);
                }

            }
            Response.Redirect("home.aspx");
        }
        reader.Close();
        con.Close();
    }
    }

}