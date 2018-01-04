using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.IO;

public partial class doctor : System.Web.UI.Page
{
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadDoctorsinfo(); 
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

    protected void LoadDoctorsinfo()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open(); //
        cmd = new SqlCommand("SELECT * FROM tblDoctorinfo", con);
        SqlDataReader reader = cmd.ExecuteReader();
        int i = 1;
        while (reader.Read())
        {

            byte[] bytes = (byte[])reader["ImageData"];
            string strBase64 = Convert.ToBase64String(bytes);
            //Image1.ImageUrl = "data:Image/png;base64," + strBase64;


            Image img = new Image();
            img.ID = "img" + i.ToString();
            img.ImageUrl = "data:Image/jpg;base64," + strBase64;
            //img.Height = 64;
            img.Width = 200;


            Label objLabel = new Label();
            objLabel.ID = "label" + i.ToString();
            objLabel.ForeColor = System.Drawing.Color.Green;
            objLabel.Font.Bold = true;
            objLabel.Text = "<br/>" + reader["Doctorsname"].ToString() + "<br/>"; 

            Label objLabel2 = new Label();
            objLabel2.Font.Size = 10;
            objLabel2.ForeColor = System.Drawing.Color.Gray;
            objLabel2.ID = "lblQ" + i.ToString();
            objLabel2.Text ="Qualification: "+ reader["Qualification"].ToString() + "<br/>";

            Label objLabel3 = new Label();
            objLabel3.ID = "lblD" + i.ToString();
            objLabel3.Font.Size = 10;
            objLabel3.ForeColor = System.Drawing.Color.Gray;
            objLabel3.Text ="<b>Department</b>: "+ reader["Department"].ToString() + "<br/>";

            Label objLabel4 = new Label();
            objLabel4.ID = "lblS" + i.ToString();
            objLabel4.Font.Size = 10;
            objLabel4.ForeColor = System.Drawing.Color.Gray;
            objLabel4.Text ="<b>Specialisation</b>: "+reader["Specialisation"].ToString() + "<br/>";

            Label objLabel5 = new Label();
            objLabel5.ForeColor = System.Drawing.Color.Gray;
            objLabel5.Font.Size = 10;
            objLabel5.ID = "lblC" + i.ToString();
            objLabel5.Text ="<b>Contact</b>: "+ reader["Contact"].ToString() + "<br/>";







            
            //placeholder1.Controls.Add(new LiteralControl("<br/>"));



            placeholder1.Controls.Add(img);
            placeholder1.Controls.Add(objLabel);
            placeholder1.Controls.Add(objLabel2);
            placeholder1.Controls.Add(objLabel3);
            placeholder1.Controls.Add(objLabel4);
            placeholder1.Controls.Add(objLabel5);
            placeholder1.Controls.Add(new LiteralControl("<hr />"));
            i++;
        }
        con.Close();
    }
    protected void LogOut_Click(object o, EventArgs e)
    {
        if (Session["login"] == null)
            Response.Redirect("Login.aspx");
        Session.Clear();

        HttpCookie myCookie = new HttpCookie("Preferences");
        myCookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(myCookie);

        Response.Redirect("Login.aspx");
    }

    protected void SignUp_Click(object o, EventArgs e)
    {
        if (Session["login"] == null) Response.Redirect("reginstration.aspx");

    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCity(string prefixText)
    {
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.ConnectionStrings["Hospital managementConnectionString"].ToString();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from DoctorSearch where Department like @City+'%'", con);
        cmd.Parameters.AddWithValue("@City", prefixText);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        List<string> CityNames = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            CityNames.Add(dt.Rows[i][0].ToString());
        }
        return CityNames;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        LD();
    }

    protected void LD()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open(); //
        cmd = new SqlCommand("SELECT * FROM tblDoctorinfo", con);
        SqlDataReader reader = cmd.ExecuteReader();
        int i = 1;
        while (reader.Read())
        {

            byte[] bytes = (byte[])reader["ImageData"];
            string strBase64 = Convert.ToBase64String(bytes);
            //Image1.ImageUrl = "data:Image/png;base64," + strBase64;


            Image img = new Image();
            img.ID = "img" + i.ToString();
            img.ImageUrl = "data:Image/jpg;base64," + strBase64;
            //img.Height = 64;
            img.Width = 200;


            Label objLabel = new Label();
            objLabel.ID = "label" + i.ToString();
            objLabel.ForeColor = System.Drawing.Color.Green;
            objLabel.Font.Bold = true;
            objLabel.Text = "<br/>" + reader["Doctorsname"].ToString() + "<br/>";

            Label objLabel2 = new Label();
            objLabel2.Font.Size = 10;
            objLabel2.ForeColor = System.Drawing.Color.Gray;
            objLabel2.ID = "lblQ" + i.ToString();
            objLabel2.Text = "Qualification: " + reader["Qualification"].ToString() + "<br/>";

            Label objLabel3 = new Label();
            objLabel3.ID = "lblD" + i.ToString();
            objLabel3.Font.Size = 10;
            objLabel3.ForeColor = System.Drawing.Color.Gray;
            objLabel3.Text = "<b>Department</b>: " + reader["Department"].ToString() + "<br/>";

            Label objLabel4 = new Label();
            objLabel4.ID = "lblS" + i.ToString();
            objLabel4.Font.Size = 10;
            objLabel4.ForeColor = System.Drawing.Color.Gray;
            objLabel4.Text = "<b>Specialisation</b>: " + reader["Specialisation"].ToString() + "<br/>";

            Label objLabel5 = new Label();
            objLabel5.ForeColor = System.Drawing.Color.Gray;
            objLabel5.Font.Size = 10;
            objLabel5.ID = "lblC" + i.ToString();
            objLabel5.Text = "<b>Contact</b>: " + reader["Contact"].ToString() + "<br/>";








            //placeholder1.Controls.Add(new LiteralControl("<br/>"));


            if (reader["Department"].ToString() == txtCity.Text)
            {
                placeholder1.Controls.Add(img);
                placeholder1.Controls.Add(objLabel);
                placeholder1.Controls.Add(objLabel2);
                placeholder1.Controls.Add(objLabel3);
                placeholder1.Controls.Add(objLabel4);
                placeholder1.Controls.Add(objLabel5);
                placeholder1.Controls.Add(new LiteralControl("<hr />"));
                i++;
            }
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        LoadDoctorsinfo();
        txtCity.Text = null;
    }
}