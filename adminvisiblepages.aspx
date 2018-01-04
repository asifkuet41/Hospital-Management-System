<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminvisiblepages.aspx.cs" Inherits="adminvisiblepages" %>




<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
	<title>City Hospital</title>
	<link rel="stylesheet" type="text/css" href="css/style1.css"/>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
	<link rel="stylesheet" href="css/responsiveslides.css"/>
		<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> -->
     <script src="Bootstrap(JS)/bootstrap.min.js"></script>      
       <script src="Bootstrap(JS)/jquery-2.1.4.min.js"></script>  
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		      // You can also use "$(window).load(function() {"
		      $(function () {
		          // Slideshow 1
		          $("#slider1").responsiveSlides({
		              maxwidth: 2500,
		              speed: 600
		          });
		      });
		  </script>
</head>
<body>
     
      <form id="form1" runat="server">
     
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
				    			<li class="active"><a href="home.aspx">Home</a></li>
                                <li><a href="RegisteredUser.aspx">Users</a></li>
                                <li><a href="Patientappoint.aspx">Patients</a></li>
                                <li><a href="adminfordoctor.aspx">Update Doctor</a></li>
				    			<div class="clear"></div>
				    		</ul>
				    	</div>
				    </div>
			</div>
            </div>
   <!--End-header---->
   <!--slider-->
      	<div class="image-slider">
						<!-- Slideshow 1 -->
					    <ul class="rslides rslides1" id="slider1" style="max-width: 2500px;">
					      <li id="rslides1_s0" class="" style="display: block; float: none; position: absolute; opacity: 0; z-index: 1; -webkit-transition: opacity 600ms ease-in-out; transition: opacity 600ms ease-in-out;">
					      	<img src="images/first.png" alt=""/>
					     
					      </li>
					      <li id="rslides1_s1" class="" style="float: none; position: absolute; opacity: 0; z-index: 1; display: list-item; -webkit-transition: opacity 600ms ease-in-out; transition: opacity 600ms ease-in-out;"><img src="images/second.png" alt="">
					   
					      </li>
					      <li id="rslides1_s2" class="rslides1_on" style="float: left; position: relative; opacity: 1; z-index: 2; display: list-item; -webkit-transition: opacity 600ms ease-in-out; transition: opacity 600ms ease-in-out;"><img src="images/third.png" alt="">
					      </li>
					        <li id="rslides1_s2" class="rslides1_on" style="float: left; position: relative; opacity: 1; z-index: 2; display: list-item; -webkit-transition: opacity 600ms ease-in-out; transition: opacity 600ms ease-in-out;"><img src="images/fourth.png" alt="">
					      </li>
					        <li id="rslides1_s2" class="rslides1_on" style="float: left; position: relative; opacity: 1; z-index: 2; display: list-item; -webkit-transition: opacity 600ms ease-in-out; transition: opacity 600ms ease-in-out;"><img src="images/fifth.png" alt="">
					      </li>
					    </ul>
					</div>
		<!_-End slider-->
		<div class="main-box">
			<div class="wrap">
				<div class="sub-boxes">
							<div class="box">
								<div class="box-pic">
									<a><img src="images/timer.png"  /></a>
								</div>
								<div class="box-title">
									<h3>24x7 Servives</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p>We are here to service the patients 24 hours. We have modern 6 operation theatre,24 hours Pharmacy,Ambulance service,Cafeteria & Catering service.</p>
							
								<div class="clear"> </div>
						</div>
						<div class="sub-boxes">
							<div class="content-top-grid-header">
								<div class="box-pic">
									<a><img src="images/tool.png"/></a>
								</div>
								<div class="box-title">
									<h3>CARE ADVICES</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p>Patients requiring intensive care usually need support for hemodynamic instability, airway or respiratory compromise, acute renal failure, This hospital offers you a full range of intensive care units to manage all kinds of critically ill patients.</p>
								
								<div class="clear"> </div>
						</div>
						<div class="sub-boxes">
							<div class="content-top-grid-header">
								<div class="box-pic">
									<a><img src="images/inject.png" /></a>
								</div>
								<div class="box-title">
									<h3>EMERGENCY</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p>The Accident and Emergency Department of City Hospital is a 24-hour, full time section and it is the mirror of City Hospital.</p>
					
								<div class="clear"> </div>
						</div>
						<div class="clear"> </div>
			</div>
		</div>
       <div class="footer">
           <div class="footer_text"> Copyright &copy; cityhospital.com.bd, 2015.All rights reserved.</div>
       </div>
           
      </form>
           
</body>
</html>
