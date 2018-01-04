<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patientappoint.aspx.cs" Inherits="Patientappoint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" type="text/css" href="css/style1.css"/>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
    <title></title>
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
                               <li ><a href="home.aspx">Home</a></li>
                                <li><a href="RegisteredUser.aspx">Users</a></li>
                                <li class="active"><a href="Patientappoint.aspx">Patients</a></li>
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
             </div>
    <div style="background-color:white; width:100%;">
        <div>
            <div class="txt-center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKe0yNames="ID" DataSourceID="SqlDataSource2" EnableModelValidation="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid"  BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="112px" Width="100%">
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Disease" HeaderText="Disease" SortExpression="Disease" />
                    <asp:BoundField DataField="Doctor" HeaderText="Doctor" SortExpression="Doctor" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital managementConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Country], [Nationality], [Gender], [Age], [Date], [Disease], [Doctor] FROM [app]"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
