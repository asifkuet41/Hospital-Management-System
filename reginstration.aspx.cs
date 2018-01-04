using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class reginstration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        string insertSql = "INSERT INTO login(FirstName, LastName,username,password,Email) values (@FirstName,@LastName,@UserName,@Password,@Email)";

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertSql;

        SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        firstName.Value = TextBoxName.Text.ToString();
        cmd.Parameters.Add(firstName);

        SqlParameter LastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        LastName.Value = TextBoxlastname.Text.ToString();
        cmd.Parameters.Add(LastName);

        SqlParameter UserName = new SqlParameter("@UserName", SqlDbType.VarChar, 50);
        UserName.Value = TextBoxUN.Text.ToString();
        cmd.Parameters.Add(UserName);

        SqlParameter Password = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        Password.Value = TextBoxPA.Text.ToString();
        cmd.Parameters.Add(Password);

        SqlParameter Email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        Email.Value = TextBoxemail.Text.ToString();
        cmd.Parameters.Add(Email);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("home.aspx");
        }
        catch (SqlException ex)
        {
            string errorMessage = "Error in registring user";
            errorMessage += ex.Message;
            throw new Exception(errorMessage);
        }
       
    }
}