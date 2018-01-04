using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from app where FirstName='" + FN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User Already Exists");
            }
            conn.Close();
        }
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
   
    protected void Button1_Click(object sender, EventArgs e)
    {

        string conn = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

        string insertQuary = "insert into app (FirstName,LastName,Email,Nationality,Gender,Telephone,Mobile,Country,Doctor,Blood,Disease,Age,Date) values(@Fname ,@Lname ,@email,@nationality,@gender,@telephone,@mobile,@country,@doctor,@blood,@disease,@age,@date)";

        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertQuary;

        SqlParameter FirstName = new SqlParameter("@Fname", SqlDbType.VarChar, 50);
        FirstName.Value = FN.Text.ToString();
        cmd.Parameters.Add(FirstName);

        SqlParameter LastName = new SqlParameter("@Lname", SqlDbType.VarChar, 50);
        LastName.Value = LN.Text.ToString();
        cmd.Parameters.Add(LastName);

        SqlParameter Email = new SqlParameter("@email", SqlDbType.VarChar, 50);
        Email.Value = email.Text.ToString();
        cmd.Parameters.Add(Email);

        SqlParameter Nationality = new SqlParameter("@nationality", SqlDbType.VarChar, 50);
        Nationality.Value = nationality.Text.ToString();
        cmd.Parameters.Add(Nationality);

        SqlParameter Gender = new SqlParameter("@gender", SqlDbType.VarChar, 50);
        Gender.Value = gender.Text.ToString();
        cmd.Parameters.Add(Gender);

        SqlParameter telephone = new SqlParameter("@telephone", SqlDbType.VarChar, 50);
        telephone.Value = Telephone.Text.ToString();
        cmd.Parameters.Add(telephone);

        SqlParameter mobile = new SqlParameter("@mobile", SqlDbType.VarChar, 50);
        mobile.Value = Mobile.Text.ToString();
        cmd.Parameters.Add(mobile);

        SqlParameter Country = new SqlParameter("@country", SqlDbType.VarChar, 50);
        Country.Value = country.Text.ToString();
        cmd.Parameters.Add(Country);

        SqlParameter Doctor = new SqlParameter("@doctor", SqlDbType.VarChar, 50);
        Doctor.Value = doctor.Text.ToString();
        cmd.Parameters.Add(Doctor);

        SqlParameter Blood = new SqlParameter("@blood", SqlDbType.VarChar, 50);
        Blood.Value = blood.Text.ToString();
        cmd.Parameters.Add(Blood);

        SqlParameter Disease = new SqlParameter("@disease",SqlDbType.VarChar,50);
        Disease.Value = disease.Text.ToString();
        cmd.Parameters.Add(Disease);

        SqlParameter Age = new SqlParameter("@age",SqlDbType.VarChar,50);
        Age.Value = age.Text.ToString();
        cmd.Parameters.Add(Age);

        SqlParameter Date = new SqlParameter("@date",SqlDbType.VarChar,50);
        Date.Value = date.Text.ToString();
        cmd.Parameters.Add(Date);
       

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Session["first"] = FN.Text;
            Session["second"] = LN.Text;
            Session["third"] = email.Text;
            Session["fourth"] = nationality.Text;
            Session["fifth"] = gender.Text;
            Session["sixth"] = country.Text;
            Session["seventh"] = Telephone.Text;
            Session["eighth"] = Mobile.Text;
            Session["ninth"] = blood.Text;
            Session["tenth"] = doctor.Text;
            Session["eleventh"] = disease.Text;
            Session["12_th"] = age.Text;
            Session["13_th"] = date.Text;
            Response.Redirect("D.aspx");
            Response.Write("Registration is successful");
        }
        catch (SqlException ex)
        {
            string errorMessage = "Error in registring user";
            errorMessage += ex.Message;
            throw new Exception(errorMessage);
        }
        finally
        {
            con.Close();
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
