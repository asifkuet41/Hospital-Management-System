<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about_us.aspx.cs" Inherits="about_us" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
    <link rel="stylesheet" type="text/css" href="css/style1.css"/>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
	<link rel="stylesheet" href="css/responsiveslides.css"/>
	<style type="text/css">
      .d{
      	background: white;
      	border-style:none;
      	border-radius: 3px;
      	width: 70%;
      	margin-right: auto;
      	margin-left: auto;
      }
      p{
      	line-height: 1.5em;
      	font-family: 'Open Sans',sans-serif;
      }
      li{
      	color:#848482;
      	line-height: 1.5em;
      }
	    .auto-style1 {
            font-size: 2em;
        }
        .auto-style2 {
            font-size: 1em;
        }
	</style>
</head>
<body background="blue.png">
    <form runat="server">
     <!--start header-->
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
						<a href="prac.html"><img src="images/logo.png" title="logo"/></a>
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
				    			<li ><a href="home.aspx">Home</a></li>
				    			<li class="active"><a href="about_us.aspx">About</a></li>
				    			<li><a href="contact.aspx">Contact</a></li>
				    			<li><a href="doctor.aspx">Doctors</a></li>
				    			<li><a href="service.aspx">Service</a></li>
                                <li><a href="appointment.aspx">Make an Appointment</a></li>
				    			<div class="clear"></div>
				    		</ul>
				    	</div>
				    </div>
			</div>
            </div>
   <!--End-header---->
  <div class="d">
    <div style="margin-left:1%">
  	<h2 class="auto-style1"><font color="#64945d">The Skill to Heal. The Spirit to Care.</font></h2>
        <br />
  	<h3><font color="#64945d"><span class="auto-style2">The things that make City Hospital different are making a big difference in the lives<br>of our patients.</span></font></h3>
        <br />
  	
    <p class="line"><font color="#848482">City Hospital is one of the countrys largest not-for-profit health care providers with 22 campuses serving communities throughout City. Being a not for profit hospital means we are here for something much more important: you. For more than 100 years, we have been profoundly committed to those who seek our care. We have become known the world over for the expert, compassionate, individualized attention given to the millions who have already passed through our doors, and the million plus patients who visit us each year.</font></p>
  	<br />
    <p class="line"><font color="#848482">Since 1908, our commitment to providing unsurpassed health and wellness services has expanded to meet the increasing needs of our ever-growing population. As we’ve adapted with the changing times, our mission has remained a constant—to extend the healing ministry of Christ. Our heritage of whole person health—achieving wellness of the mind, body and spirit for our patients—is of paramount importance to each member of our exceptionally talented clinical staff.</font></p>
  	<br />
        <p class="line"><font color="#848482">As we look to the future of health care, we continue to grow and evolve. We believe that a hospital should be as focused on treating injury and illness as it is to helping people avoid the need for treatment completely. With initiatives like CREATION Health, we are cultivating community-wide movements toward adopting healthier lifestyles for greater longevity. And development of Health Village, our 172-acre mixed use planned community, will provide an immersive environment rich in resources that encourage whole-person health.</font></p>
  <br />
        	<p class="line"><font color="#848482">Just as profound as what is happening beyond our doors is what can be found within. World class services in cancer, orthopaedics, gynecology, cardiac, rehab, pediatric medicine and more; brilliant clinicians and researchers; treatments and technologies found nowhere else in the region; and a one-of-a-kind surgical training facility preparing the next generation of doctors.</font></p>
  	<br />
        <p class="line"><font color="#848482">We invite you to discover more about City Hospital’s award winning services and the 22 distinct campuses within our network of care.</font></p>
  	<h3><font size="5" color="#64945d">Current Facts and Statistics</font></h3>
  <br />
         <p><font color="#848482">City Hospital, a 2,247-bed acute-care medical facility, is a member of Adventist Health System.  We serve as a community hospital for Greater Orlando and as a major tertiary referral hospital for Central City and much of the Southeast, the Caribbean and Latin America.  Adventist Health System operates 44 hospitals in ten states making it the largest not-for-profit protestant health care system in the United States. Our annual statistics include:</font>
   <br />
              <div style="margin-left:3%">
             <ul>
	<li> 1. Treats more patients than any other hospital in the Bangladesh</li>
	<li> 2. Largest Family Medicine Residency in City</li>
	<li> 3. Treats more cardiology, neurology and vascular surgery inpatients than any other nationally recognized hospital</li>
	<li> 4. Treats more cancer patients than any hospital in City</li>
	<li> 5. Serves more patients each year than any hospital in City</li>
	<li> 6. Number of inpatients: 122,729</li>
	<li> 7. Number of outpatients: 500,320</li>
	<li> 8. Number of emergency cases: 407,439</li>
	<li> 9. Number of new born deliveries: 9,232</li>
	<li>10. Number of surgeries: 64,552</li>
	<li>11. Number of licensed beds:&nbsp;<span style="font-size: 13.008px; line-height: 1.538em;">2,675</span></li>
	<li>12. Number of critical care beds (Includes ICU, CCU, CVICU, PCU, PICU, NICU): 1,329</li>
	<li>13. Number of staff physicians: 2,230</li>
	<li>14. Number of employees: 33,000</li>
	<li>15. Number of walk-in medical facilities: 21</li>
	<li>16. Number of Centra Care visits: 336,383</li>
	<li>17. Number of outpatient rehabilitation and imaging facilities: 16</li>
	<li>18. Number of auxilians: 3,000</li>
	<li>19. Number of foundation volunteers: 240</li>
</ul>
    </div>
        <br/></p>
</div>
  </div>
     <div class="footer">
           <div class="footer_text"> Copyright &copy; cityhospital.com.bd, 2015.All rights reserved.</div>
       </div>
        </form>
</body>
</html>