<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reginstration.aspx.cs" Inherits="reginstration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="css/style3.css"/>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
    <style type="text/css">
        .corner{
		border-radius: 20px;
		border: 2px solid #73AD21;
		padding: 20px;
		width: 650px;
		height: 500px;
		margin-left: auto;
		margin-right: auto;
		margin-top:auto;
        font-weight: 700;
        font-size: large;
    }
        .newStyle1 {
            color: #3399FF;
        }
         .box{
            border-radius:7px;
            border: 2px solid #73AD21;
        }
    </style>
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
				    			<li class="active"><a href="home.aspx">Home</a></li>
				    			<li><a href="about.aspx">About</a></li>
				    			<li><a href="praccontact.aspx">Contact</a></li>
				    			<li><a href="doctor.aspx">Doctors</a></li>
				    			<li><a href="service.aspx">Service</a></li>
                                <li><a href="appointment.aspx">Make an Appointment</a></li>
				    			<div class="clear"></div>
				    		</ul>
				    	</div>
				    </div>
			</div>
            </div>
    <div class="corner">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="newStyle1">Registration Form</span><hr />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="name is required"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxlastname" ErrorMessage="name is required"></asp:RequiredFieldValidator>
        <br />
        First Name :
        <asp:TextBox ID="TextBoxName" runat="server" Width="147px" Height="27px" CssClass="box"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name :
        <asp:TextBox ID="TextBoxlastname" runat="server" Height="27px" Width="144px" CssClass="box"></asp:TextBox>
    
        <br />
        <br />
&nbsp;Username :
        <asp:TextBox ID="TextBoxUN" runat="server" Height="27px" Width="149px" CssClass="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Enter valid email-id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email :
        <asp:TextBox ID="TextBoxemail" runat="server" Height="27px" Width="233px" CssClass="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Email-id is required"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;Password :
        <asp:TextBox ID="TextBoxPA" runat="server" Height="27px" TextMode="Password" Width="149px" CssClass="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPA" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPA" ControlToValidate="TextBoxRPA" ErrorMessage="Both password must be same"></asp:CompareValidator>
        <br />
        Confirm Password : <asp:TextBox ID="TextBoxRPA" runat="server" Height="27px" TextMode="Password" Width="149px" CssClass="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxRPA" ErrorMessage="Repeat passowrd"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="36px" Text="Register" Width="92px" OnClick="Button1_Click" BackColor="#578843" CssClass="box" Font-Bold="True" Font-Size="19px" ForeColor="White" />
    
    </div>
               <div class="footer">
           <div class="footer_text"> Copyright &copy; cityhospital.com.bd, 2015.All rights reserved.</div>
       </div>
    </form>
</body>
</html>
