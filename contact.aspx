<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Deft" %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>City Hospital</title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
	<link rel="stylesheet" href="css/responsiveslides.css"/>

	    <style type="text/css">
            .newStyle1 {
                color: #0099FF;
            }
            .newStyle2 {
                color: #007DAD;
            }
            .newStyle3 {
                color: #007DAD;
            }
            .newStyle4 {
                color: #007DAD;
            }
            .new{
                margin-top:-2%;
            }
        </style>
	</head>
	<body>
		<!---start-wrap---->
		<form runat="server">
			<!---start-header---->
			<div class="header">
					<div class="top-header">
						<div class="wrap">
						<div class="top-header-left">
							<p>+01688725527</p>
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
								<a href="index.html"><img src="images/logo.png" title="logo" /></a>
							</div>
							<div class="social-links">
								<ul>
									<li><a href="#"><img src="images/facebook.png" title="facebook" /></a></li>
									<li><a href="#"><img src="images/twitter.png" title="twitter" /></a></li>
									<li><a href="#"><img src="images/feed.png" title="Rss" /></a></li>
									<div class="clear"> </div>
								</ul>
							</div>
							<div class="clear"> </div>
						</div>
					</div>
					<div class="clear"> </div>
					<div class="top-nav">
						<div class="wrap">
							<ul>
								<li ><a href="home.aspx">Home</a></li>
				    			<li><a href="about_us.aspx">About</a></li>
				    			<li class="active"><a href="contact.aspx">Contact</a></li>
				    			<li><a href="doctor.aspx">Doctors</a></li>
				    			<li><a href="service.aspx">Service</a></li>
                                <li><a href="appointment.aspx">Make an Appointment</a></li>
								<div class="clear"> </div>
							</ul>
						</div>
					</div>
			</div>
			<!---End-header---->
			<!----start-content----->
			<div class="content">
				<div class="wrap">
					<!---start-contact---->
					<div class="contact">
						<div class="section group">				
				<div class="col span_1_of_3">
					<div class="contact_info">
			    	 	<h3><span class="newStyle3">Find Us Here</span></h3>
			    	 		<div class="map">
					   			<iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
                                     <img src="map.png"/> </iframe><br><small><a href="https://www.google.co.in/maps/place/Khulna,+Bangladesh/@22.8454448,89.4624609,12z/data=!3m1!4b1!4m2!3m1!1s0x39ff9071cb47152f:0xf04b212290718952" style="color:#666;text-align:left;font-size:12px">View Larger Map</a></small>
					   		</div>
      				</div>
      			<div class="company_address">
				     	<h3><span class="newStyle2">City Hospital :</span></h3>
						    	<p>Kuet,Khulna,9203</>
						   		<p>Bangladesh</p>
				   		<p>Phone: 222 666 444</p>
				   		<p>Fax:  000 00 00 0</p>
				 	 	<p>Email: <span>abc@gmail.com</span></p>
				   		<p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
				   </div>
				</div>				
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h3><span class="newStyle4">Contact Us</span></h3>
					    
					    	<div>
						    	<span><label>NAME</label></span>
                                <asp:TextBox ID="name" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
						    </div>
						    <div style="margin-top:-5%">
						    	<span><label>E-MAIL</label></span>&nbsp;
                                <asp:TextBox ID="email" runat="server" CssClass="new"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
						    </div>
						    <div >
						     	<span><label>MOBILE.NO</label></span>&nbsp;
                                <asp:TextBox ID="mobile" runat="server" CssClass="new"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="mobile" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
						    </div>
						    <div style="margin-top:-2%">
						    	<span><label>SUBJECT</label></span>&nbsp;
                                <asp:TextBox ID="subject" runat="server" Rows="5" TextMode="MultiLine" CssClass="new"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="subject" ErrorMessage="RequiredFieldValidator" Display="Dynamic">*</asp:RequiredFieldValidator>
						    </div>
						   <div>
					
                                       &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                                       <asp:Button ID="Button1" runat="server" Onclick="Button1_Click1" Text="Submit" />
						  </div>
					    </form>
				    </div>
  				</div>				
			  </div>
					</div>
					
				<div class="clear"> </div>
				</div>
			
		</div>
		
            </form>
	</body>
</html>

