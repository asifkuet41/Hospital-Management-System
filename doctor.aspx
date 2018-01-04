<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doctor.aspx.cs" Inherits="doctor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/style1.css"/>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
	<link rel="stylesheet" href="css/responsiveslides.css"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            padding: 1.7em 0 1.5em 0;
            background: #F6F6F6;
            text-align: right;
        }
        .Search{
                  margin-top:3%;
                  margin-left:18%;    
                }
    </style>
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
			<div class="auto-style1">
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
				    			<li><a href="home.aspx">Home</a></li>
				    			<li><a href="about.aspx">About</a></li>
				    			<li><a href="contact.aspx">Contact</a></li>
				    			<li class="active"><a href="doctor.aspx">Doctors</a></li>
				 
				    			<li><a href="service.aspx">Service</a></li>
                                <li><a href="appointment.aspx">Make an Appointment</a></li>
				    			<div class="clear"></div>
				    		</ul>
				    	</div>
				    </div>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
                <div class="Search">
			    <asp:TextBox ID="txtCity" runat="server" placeholder="search for a doctor"></asp:TextBox>
    <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtCity"
         MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000"
         ServiceMethod="GetCity" >
    </asp:AutoCompleteExtender>
                    </div>
			    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
			</div>
            </div>
   <!--End-header---->
    <div style="margin-left:31%; margin-top:30px; margin-right:32%">
        
        <asp:PlaceHolder ID="placeholder1" runat="server">

             

        </asp:PlaceHolder>


    </div>
        <div class="footer">
           <div class="footer_text"> Copyright &copy; cityhospital.com.bd, 2015.All rights reserved.</div>
       </div>
    </form>
</body>
</html>
