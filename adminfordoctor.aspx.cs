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


public partial class adminfordoctor : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (imageupload.HasFile)
        {
            HttpPostedFile postedFile = imageupload.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;
            string doctorName = TextBox1.Text.ToString();
            string Qualification = qualification.Text.ToString();
            string Department = department.Text.ToString();
            string Specialisation = specialisation.Text.ToString();
            string Contact = contact.Text.ToString();


            if (doctorName != null && Qualification != null && Department != null && Specialisation != null && Contact!=null && (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp"))
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


                string cs = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spUploadDoctorsinfo", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramdoctor = new SqlParameter()
                    {
                        ParameterName = @"Doctorsname",
                        Value = doctorName
                    };
                    cmd.Parameters.Add(paramdoctor);

                    SqlParameter paramQualification = new SqlParameter()
                    {
                        ParameterName = "@Qualification",
                        Value = Qualification
                    };
                    cmd.Parameters.Add(paramQualification);


                    SqlParameter paramdepartment = new SqlParameter()
                    {
                        ParameterName = "@Department",
                        Value = Department
                    };
                    cmd.Parameters.Add(paramdepartment);


                    SqlParameter paramSpecialisation = new SqlParameter()
                    {
                        ParameterName = "@Specialisation",
                        Value = Specialisation
                    };
                    cmd.Parameters.Add(paramSpecialisation);



                    SqlParameter paramContact = new SqlParameter()
                    {
                        ParameterName = "@Contact",
                        Value = Contact
                    };
                    cmd.Parameters.Add(paramContact);
                    


                    SqlParameter paramImageData = new SqlParameter()
                    {
                        ParameterName = "@ImageData",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramImageData);

                    SqlParameter paramNewId = new SqlParameter()
                    {
                        ParameterName = "@NewId",
                        Value = -1,
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(paramNewId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    









                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                    conn.Open();

                    string checkuser = "select count(*) from DoctorSearch where Department='" + department.Text + "'";
                    SqlCommand com = new SqlCommand(checkuser, conn);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    conn.Close();
                    if(temp==0)
                    {
                        SqlCommand storeimage = new SqlCommand("INSERT INTO DoctorSearch "
                   + "(Department) "
                   + " values (@d)", conn);
                        storeimage.Parameters.Add("@d", SqlDbType.VarChar, 50).Value = department.Text;
                      

                        if (!(conn.State == System.Data.ConnectionState.Open))
                            conn.Open();
                        storeimage.ExecuteNonQuery();
                        conn.Close();
                    }

                    TextBox1.Text = null;
                    qualification.Text = null;
                    department.Text = null;
                    specialisation.Text = null;
                    contact.Text = null;

                    Response.Redirect("doctor.aspx");

                }
            }


        }
        else
        {
            Label1.Text = "You must fill every box and must choose a jpg file.";
            
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