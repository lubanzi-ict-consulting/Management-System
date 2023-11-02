<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Management_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login form</title>
    
    <link href="ResetStyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
    </style>
</head>
<body>
       <center>
    <form id="form1" runat="server" style="margin-top: 90px;">
    <div class="Login-container">
       <h1>LUB<span style="color: orangered">A</span>NZI</h1>
        <h2>Login</h2>
        <asp:Label ID="Label1" runat="server" Text="Sign in to continue"></asp:Label>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style1">&nbsp; </td>
                </tr>
                
                <tr>
                    <td> <asp:Label ID="lblEmail" runat="server" Text="Email Address:"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtEmail" placeholder="Enter your Email Address*" runat="server" Height="25px" Width="300px" TextMode="Email" required></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>

                 <tr>
                     <td><asp:Label ID="lblPass" runat="server" Text="Password:"></asp:Label></td>
                 </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPassword" placeholder="Enter your Password*" runat="server" Height="25px" Width="300px" TextMode="Password" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;
                        <asp:HyperLink ID="lnkForgotPass" href="forgotPassword.aspx"  runat="server" Font-Size="Small">Forgot password?</asp:HyperLink>
                    </td>
                </tr>
               
                <tr>
                    <td>&nbsp;</td>
               
                <tr>
                    <td>&nbsp;
                       
                        <asp:Button ID="Button1" runat="server" Text="Login" Width="290px" Height="35px" Font-Bold="True" Font-Size="Large" font-waight="800" ForeColor="White" OnClick="Button1_Click" />
                       
                    </td>
                         <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <p><asp:Label ID="lblText" runat="server" Text="Not Registered yet?">
                         <asp:HyperLink ID="lnkRegister" href="Registration.aspx" runat="server">&nbsp;Register here</asp:HyperLink></asp:Label></p></td>
                </tr><br />
                    <asp:Label ID="txtErrorMessage" runat="server" Text="" ForeColor="red"></asp:Label>
            </table>
            </div>
</form>
   </center> 
</body>
</html>
