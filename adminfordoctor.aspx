<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminfordoctor.aspx.cs" Inherits="adminfordoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/style1.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/responsiveslides.css">
    <style>
         .box{
            border-radius:7px;
            border: 2px solid #73AD21;
        }
         .mid{
             margin-left:20%;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
					<div class="top-header">
						<div class="wrap">
						<div class="top-header-left">
							<p>+8801688725527</p>
						</div>
						<div class="right-left">
							<ul>
								<li class="login"><a runat="server" onserverclick="LogOut_Click" href="Login.aspx">
                                    <%if (Session["login"] == null) Response.Write("Login");
                                      else Response.Write("Log_Out");

                                           %>
								                  </a></li>
								<li class="sign"><a href="#" runat="server" onserverclick="SignUp_Click">
                                    <%if (Session["login"] == null) Response.Write("Sign Up");
                                      else
                                          Response.Write(Session["login"]); %>
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
                                <li class="active"><a href="home.aspx">Home</a></li>
                                <li><a href="RegisteredUser.aspx">Users</a></li>
                                <li><a href="Patientappoint.aspx">Patients</a></li>
                                <li><a href="adminfordoctor.aspx">Update Doctor</a></li>
				    			<div class="clear"></div>
				    		</ul>
				    	</div>
				    </div>
			</div>
			<p>
                <br />
    </p>
			<!--end header-->
    <div class="mid">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Doctor&#39;s Name:
        <asp:TextBox ID="TextBox1" runat="server" CssClass="box"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qualification :
        <asp:TextBox ID="qualification" runat="server" Width="141px" CssClass="box"></asp:TextBox>
&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp; Department :
        <asp:TextBox ID="department" runat="server" Width="142px" CssClass="box"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Specialisation :
        <asp:TextBox ID="specialisation" runat="server" Width="141px" CssClass="box"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact :
        <asp:TextBox ID="contact" runat="server" Width="141px" CssClass="box"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Image :&nbsp;&nbsp;
        <asp:FileUpload ID="imageupload" runat="server" CssClass="box" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Width="93px" BackColor="#66FF66" ForeColor="#0066FF" />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </strong>
    
    </div>
    </form>
</body>
</html>
