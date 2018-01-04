<%@ Page Language="C#" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" type="text/css" href="css/style1.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/responsiveslides.css"> 
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
 <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
 <script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
 <link rel="stylesheet" href="/resources/demos/style.css" />
 <script>
     $(function () {
         $(".datepicker").datepicker();
     });
 </script>
    <style type="text/css">
        .newStyle1 {
            font-size: 5px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .newStyle2 {
            font-size: 2em;
        }
        .newStyle3 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 5px;
            color: #3399FF;
        }
        .newStyle4 {
            font-size: 1em;
        }
        .newStyle5 {
            font-size: 1em;
        }
        .newStyle6 {
            color: #72665B;
        }
        .newStyle7 {
            font-size: 3ex;
        }
        .newStyle8 {
            color: #727272;
            font-size: 1em;
        }
        .auto-style1 {
            width: 507px;
            margin-left:16%;
        }
        .auto-style2 {
            width: 577px;
            height: 216px;
        }
        .box{
            border-radius:7px;
            border: 2px solid #73AD21;
        }
        .auto-style3 {
            width: 100%;
            border-top: 1px #5c0017 solid;
            background-color: #D2D7D3; /*height:50px;*/;
            float: left;
            position: relative;
            margin-top: 38px;
            left: 0px;
            top: 0px;
        }
        .newStyle9 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle10 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle11 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle12 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle13 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle14 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle15 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle16 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle17 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle18 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle19 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle20 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle21 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .newStyle22 {
            color: #3399FF;
        }
    </style>
</head>
<body>
    <!--start header-->
    <form runat="server">
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
				    			<li><a href="about_us.aspx">About</a></li>
				    			<li ><a href="contact.aspx">Contact</a></li>
				    			<li><a href="doctor.aspx">Doctors</a></li>
				    			<li><a href="service.aspx">Service</a></li>
                                <li class="active"><a href="appointment.aspx">Make an Appointment</a></li>
				    			<div class="clear"></div>
				    		</ul>
				    	</div>
				    </div>
			</div>
			<p>
                <br />
    </p>
			<!--end header-->
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <img src="images/appointmet.png" class="auto-style2" />
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Online Appointments</span></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="newStyle5">&nbsp;</span><span class="newStyle8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thank you for choosing City Hospital</br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To request an appointment with one of our Doctors, please fill in the information below.&nbsp;</span></p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle22"> Patient information</span></p>
    <hr class="auto-style1" />
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle9"> First Name </span>:&nbsp; <asp:TextBox ID="FN" runat="server" Width="154px" CssClass="box"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FN" ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle10"> Last Name</span> :&nbsp;
        <asp:TextBox ID="LN" runat="server" Width="144px" CssClass="box"></asp:TextBox>
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LN" ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
       <div style="margin-top:1%"> <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle11">&nbsp;&nbsp; Nationality</span> :&nbsp;
            <asp:DropDownList ID="nationality" runat="server" CssClass="box">
                <asp:ListItem Value="blank">Select nationality</asp:ListItem>
                <asp:ListItem>Bangladeshi</asp:ListItem>
                <asp:ListItem>Arabian</asp:ListItem>
                <asp:ListItem>Indian</asp:ListItem>
                <asp:ListItem>Pakistanis</asp:ListItem>
                <asp:ListItem>English</asp:ListItem>
                <asp:ListItem>American</asp:ListItem>
                <asp:ListItem>Sri Lankans</asp:ListItem>
                <asp:ListItem>Australians</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="nationality" ErrorMessage="*" InitialValue="blank"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle12">&nbsp;&nbsp;Gender</span> :
            <asp:DropDownList ID="gender" runat="server" CssClass="box">
                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="gender" ErrorMessage="*" InitialValue="Select Gender"></asp:RequiredFieldValidator>
        </p>
           </div>
       <div style="margin-top:1%"> <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle13">&nbsp; Telephone</span> : <asp:TextBox ID="Telephone" runat="server" Width="167px" CssClass="box"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Telephone" ErrorMessage="*"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle14">&nbsp;&nbsp; Mobile</span> :&nbsp;
            <asp:TextBox ID="Mobile" runat="server" Width="171px" CssClass="box"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Mobile" ErrorMessage="*"></asp:RequiredFieldValidator>
        </p>
           </div>
       <div style="margin-top:1%"> <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle15">&nbsp;&nbsp; Email </span>:&nbsp;
            <asp:TextBox ID="email" runat="server" Width="195px" CssClass="box"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle16"> Country</span> :
            <asp:DropDownList ID="country" runat="server" CssClass="box">
                <asp:ListItem>Select Country</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>Pakistan</asp:ListItem>
                <asp:ListItem>Dubai</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>Srilanka</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Bangladesh</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="country" ErrorMessage="*" InitialValue="Select Country"></asp:RequiredFieldValidator>
        </p>
           </div>
         <div style="margin-top:1%">
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle17">&nbsp; Blood Group </span>:
            <asp:DropDownList ID="blood" runat="server" CssClass="box">
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle18">&nbsp;&nbsp; Doctor</span> :
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="doctor" ErrorMessage="*" InitialValue="Select doctor"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="doctor" runat="server" Width="180px" CssClass="box">
                <asp:ListItem>Select doctor</asp:ListItem>
                <asp:ListItem Value="Abdalla Al Hajiri">Abdalla Al Hajiri</asp:ListItem>
                <asp:ListItem>Abdelazim Ahmed Mohamed Abdalla</asp:ListItem>
                <asp:ListItem>Abdul Aleem</asp:ListItem>
                <asp:ListItem>Abdul Ghani Siddique</asp:ListItem>
                <asp:ListItem>Abdul Rahman Mohamed</asp:ListItem>
                <asp:ListItem>Abdullah Juma</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </p>
             </div>
          <div style="margin-top:1%">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle19">&nbsp;&nbsp;&nbsp; Disease Type</span>:
            <asp:DropDownList ID="disease" runat="server">
                <asp:ListItem>Select disease type</asp:ListItem>
                <asp:ListItem>Cancer</asp:ListItem>
                <asp:ListItem>STDs</asp:ListItem>
                <asp:ListItem>Blood Preasure</asp:ListItem>
                <asp:ListItem>Dental</asp:ListItem>
                <asp:ListItem>Fever</asp:ListItem>
                <asp:ListItem>Heart</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="disease" ErrorMessage="RequiredFieldValidator" InitialValue="Select disease type">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle20">&nbsp; Age</span> :
            <asp:DropDownList ID="age" runat="server">
                <asp:ListItem>Select Age</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
                <asp:ListItem>32</asp:ListItem>
                <asp:ListItem>33</asp:ListItem>
                <asp:ListItem>34</asp:ListItem>
                <asp:ListItem>35</asp:ListItem>
                <asp:ListItem>36</asp:ListItem>
                <asp:ListItem>37</asp:ListItem>
                <asp:ListItem>39</asp:ListItem>
                <asp:ListItem>40</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="age" ErrorMessage="RequiredFieldValidator" InitialValue="Select Age">*</asp:RequiredFieldValidator>
        </p>
                </div>
          <div style="margin-top:1%">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle21">&nbsp;&nbsp; Date </span>: &nbsp;<asp:TextBox ID="date" runat="server" class="datepicker" BorderColor="#99CC00"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="date" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        </p>
</div>
          <div style="margin-top:1%">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;</p>
                </div>
         <div class="auto-style3">
           <div class="footer_text"> Copyright &copy; cityhospital.com.bd, 2015.All rights reserved.</div>
       </div>
    </form>
    </body>
</html>