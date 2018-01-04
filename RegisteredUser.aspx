<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisteredUser.aspx.cs" Inherits="RegisteredUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" type="text/css" href="css/style1.css"/>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
	<link rel="stylesheet" href="css/responsiveslides.css"/>
    <title></title>
    <style>
        .mid{
            margin-left:20%;
        }
    </style>
</head>
<body  background="pic.png">
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
                                <li class="active"><a href="RegisteredUser.aspx">Users</a></li>
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
        <div class="txt-center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="183px" Width="727px">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital managementConnectionString %>" SelectCommand="SELECT [Username], [FirstName], [Password], [LastName], [Email] FROM [Login]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
