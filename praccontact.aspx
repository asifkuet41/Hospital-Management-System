<%@ Page Language="C#" AutoEventWireup="true" CodeFile="praccontact.aspx.cs" Inherits="praccontact" %>

<!DOCTYPE html>

<head>
    <title></title>
     <link rel="stylesheet" type="text/css" href="css/ex.css"/>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
    <style type="text/css">
        .auto-style1 {
            width: 8px;
        }
        .contact{
            margin-left:15%;
            display:normal;
          font:bold;
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
				    			<li><a href="home.aspx">Home</a></li>
				    			<li><a href="about.aspx">About</a></li>
				    			<li class="active"><a href="praccontact.aspx">Contact</a></li>
				    			<li><a href="doctor.aspx">Doctors</a></li>
				    			<li><a href="service.aspx">Service</a></li>
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
            <div class="contact">
    <fieldset style="width:350px">
        <legend>Contact Us</legend>
        <table>
            <tr>
            <td>
                <b>Name : </b>
            </td>
                <td style="vertical-align:top">
                   
                    <asp:TextBox ID="txtName" runat="server" Width="180px"></asp:TextBox>
                   
                </td>
                <td style="vertical-align:top" class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
                </td>
                </tr>
             <tr>
            <td style="vertical-align:top">
                <b>Email : </b>
            </td>
                <td style="vertical-align:top">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td style="vertical-align:top" class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail" Display="Dynamic">*</asp:RequiredFieldValidator>
                
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>
                 </td>
                </tr>
            <tr>
            <td style="vertical-align:top">
                <b>Subject : </b>
            </td>
                <td style="vertical-align:top">
                   
                    <asp:TextBox ID="txtSubject" runat="server" Width="180px"></asp:TextBox>
                   
                </td>
                <td style="vertical-align:top" class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is required" ControlToValidate="txtSubject">*</asp:RequiredFieldValidator>
                </td>
                </tr>
            <tr>
            <td style="vertical-align:top">
                <b>Comments : </b>
            </td>
                <td style="vertical-align:top">
                   
                    <asp:TextBox ID="txtComment" runat="server" Width="180px" Rows="5" TextMode="MultiLine"></asp:TextBox>
                   
                </td>
                <td style="vertical-align:top">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Comments are required" ControlToValidate="txtComment">*</asp:RequiredFieldValidator>
                </td>
                </tr>
            <tr>
                <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fix the following errors" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
            </tr>
             </table>
    </fieldset>
                </div>
            </div>
         <div class="footer" >
           <div class="footer_text"> Copyright &copy; cityhospital.com.bd, 2015.All rights reserved.</div>
       </div>
    </form>
</body>