

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="praccontact.aspx.cs" Inherits="praccontact" %>

<!DOCTYPE html>

<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
            </tr>
             </table>
    </fieldset>
    </form>
</body>