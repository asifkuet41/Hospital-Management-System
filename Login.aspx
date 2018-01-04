<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style3.css"/>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>

<style type="text/css">
	.corner{
		border-radius: 20px;
		border: 2px solid #73AD21;
		padding: 20px;
		width: 400px;
		height: 250px;
		margin-left: auto;
		margin-right: auto;
		margin-top:200px;
        font-weight: 700;
        font-size: large;
    }
     .text{
     	color:#3B5998;
     }
    .newStyle1 {
        color: #00FFFF;
    }
    .newStyle2 {
        color: #000000;
        font-family: Arial, Helvetica, sans-serif;
    }
    .newStyle3 {
        font-family: "Courier New", Courier, monospace;
    }
    .newStyle4 {
        font-family: "Courier New", Courier, monospace;
    }
    .newStyle5 {
        font-family: Arial, Helvetica, sans-serif;
    }
    .newStyle6 {
        font-family: Arial, Helvetica, sans-serif;
    }
    .newStyle7 {
        color: #3399FF;
    }
    .newStyle8 {
        color: #66CCFF;
    }
    .newStyle9 {
        color: #33CCFF;
    }
    .newStyle10 {
        color: #66CCFF;
    }
    .newStyle11 {
        color: #00CCFF;
    }
    .auto-style6 {
        margin-top: 0px;
    }
    .margin{
        margin-left:35%;
        margin-top:5%;
    }
</style>
	<title></title>
</head>
<body background="pic.png">
    <form id="form1" runat="server">
        <div class="header">
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
					<div class="clear"> </div>

				</div>
					<div class="clear"> </div>
				    <div class="top-nav">
				    	<div class="wrap">
				    		<ul>
				    			<li><a href="home.aspx">Home</a></li>
				    			<li><a href="about_us.aspx">About</a></li>
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
<div class="margin" background="pic.png" >
      
    <asp:Login ID="Login1" runat="server" BackColor="#E3EAEB" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style6" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="238px" OnAuthenticate="Login1_Authenticate" Width="411px" TextLayout="TextOnTop">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>
      <br />
    <br />
    <br />
</div>
           <div class="footer">
           <div class="footer_text"> Copyright &copy; cityhospital.com.bd, 2015.All rights reserved.</div>
       </div>
    </form>
    
</body>
</html>