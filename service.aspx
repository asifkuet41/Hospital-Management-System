<%@ Page Language="C#" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="service" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
     <link rel="stylesheet" type="text/css" href="css/style1.css"/>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
	<style type="text/css">
     .size{
     	font-size: 160%;
     	font-family: 'Open Sans',sans-serif;
     }
     .para{
     	font-family: Verdana,sans-serif;
     	font-size: 68.75%;
     	color: #000;
     }
     .margin{
     	margin-left: 25%;
     }
	    .newStyle1 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-size: 68.75%;
            color: #000000;
        }
        .newStyle2 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-size: 68.75%;
            color: #000000;
        }
        .background{
            background-color:#d3c4c4;
        }
	</style>
</head>
<body class="background">
    <!--start header-->
    <form runat="server">
    	<div class="header">
					<div class="top-header">
						<div class="wrap">
						<div class="top-header-left">
							<p>+8801688725527</p>
						</div>
						<div class="right-left">
							<ul>
								<li class="login"><a runat="server" onserverclick="LogOut_Click" href="Login.aspx">
                                    <% HttpCookie userCookie;
                                       userCookie = Request.Cookies["Preferences"];
                                        if (userCookie == null && Session["Login"]==null)
                                      { 
                                          Response.Write("Login");
                                      }
                                        else if(userCookie==null && Session["Login"] !=null)
                                        {
                                            Response.Write("Log_Out");
                                        }
                                      else Response.Write("Log_Out");

                                           %>
								                  </a></li>
								<li class="sign"><a href="#" runat="server" onserverclick="SignUp_Click">
                                    <% HttpCookie userCookie;
                                       userCookie = Request.Cookies["Preferences"];
                                       if (Session["login"] == null && userCookie == null) Response.Write("Sign Up");
                                       else if (userCookie == null && Session["Login"] != null)
                                           Response.Write(Session["login"]);
                                       else
                                           Response.Write(userCookie["username"]); %>
								                 </a></li>
							</ul>
						</div>
						<div class="clear"> </div>
			     	</div>
				</div>
			<div class="main-header">
				<div class="wrap">
					<div class="logo">
						<a href="prac.html"><img src="images/logo.png" title="logo"></a>
					</div>
					<div class="social-links">
						<ul>
							<li><a href="#"><img src="images/facebook.png" title="facebook" /></a></li>
							<li><a href="#"><img src="images/twitter.png" title="twitter"/></a></li>
							<li><a href="#"><img src="images/feed.png" title="Rss" /></a></li>
						</ul>
					</div>
					<div class="clear"> </div>				</div>
					<div class="clear"> </div>
				    <div class="top-nav">
				    	<div class="wrap">
				    		<ul>
                                <li><a href="home.aspx">Home</a></li>
				    			<li><a href="about_us.aspx">About</a></li>
				    			<li><a href="contact.aspx">Contact</a></li>
				    			<li><a href="doctor.aspx">Doctors</a></li>
				    			<li class="active"><a href="service.aspx">Service</a></li>
                                <li><a href="appointment.aspx">Make an Appointment</a></li>
				    			<div class="clear"></div>
				    		</ul>
				    	</div>
				    </div>
			</div>
			<p>
                <br />
    </p>
			<!--end header-->
    <div class="margin">
      <font class="size">City Hospital Air & Ground Ambulance Services</font>
      <p><p>
      <p class="para"><strong>When every secondd counts the City Hospital Air & Ground Ambulance<br>Serviecs provide the critical link between physicans and patients.</strong></p>
      <p></p>
      <p class="para">City Hospital Air & Ground Ambulance Services philosophy is to take the hospital to the<br>patient and our state of the art air & ground ambulances are the means of doing that as<br>quickly as possible to any corner of Bangladesh. It is important to recognize that the City<br>Hospital air & ground ambulances are the starting point of a total system of intensive care<br>(including trauma care) which continues throughout the patients stay in City Hospital and<br>beyond.</p>
      <p></p>
      <p class="para"><strong>Facilities of City Hospital Air & Ground Ambulance Services:</strong></p>
      <p></p>
      <p class="para">24 hours a day, 7 days a week</p>
      <p></p>
      <p class="para">Ground Ambulance Service: A fleet of total 6 ambulances, which includes state of the art<br>Mercedes Benz Ambulances with all cardiac life support and ICU facilities</p>
      <p></p>
      <p class="para">City Air Ambulance Helicopter (a brand new Bell 407, USA): It has been specially<br>adapted for its purpose, to enable patients to be treated to the standard of an intensive care<br>unit in flight</p>
      <p></p>
      <p class="para">The only fully functional Helipad on the roof of City Hospital and an exclusive entrance to Emergency Department
 </p>
 <p></p>
  <p class="para">Life support system of City Hospital Air & Ground Ambulance Services includes:
 <br><br>A team of specially trained emergency medical personnel which includes-doctors, paramedics and nurses.<br><br>The Air & Ground Ambulance medical team is equipped with a substantial range of drugs,<br>emergency surgical kits, life saving defibrillators & monitors, pulse oximeter, medical gas<br>etc.<br><br>The team of City Hospital Air & Ground Ambulance Services is fully capable of onsite<br>trauma management with all the necessary equipments & drugs so that the treatment can<br>be started straightaway.</p>
  <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <strong><span class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For City Ambulance, Call:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +8801713377773, +8801713377775, +88028144466, +88028159457</span></strong>
    </p>
    <p>
        <strong class="newStyle2">&nbsp;For Square Air Ambulance, Call: +8801730011734, +88028859007</strong></p>
    <p>
        &nbsp;</p>
</div>
         <div class="footer">
           <div class="footer_text"> Copyright &copy; cityhospital.com.bd, 2015.All rights reserved.</div>
       </div>
            </form>
</body>
</html>