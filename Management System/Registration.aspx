<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Management_System.Registration" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registration Page</title>
    <link href="ResetStyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            position: relative;
            left: -1px;
            top: 8px;
        }
    </style>
</head>

<body>
    <center>
    <form id="form1" runat="server" style="margin-top: 20px;">
    <div id="container" class="auto-style2">
       <h1>LUB<span style="color: orangered">A</span>NZI</h1>
        <h2>Create New Account</h2>
        <asp:Label ID="Label0" runat="server" Text="Already Registered?">
            <asp:HyperLink ID="HyperLink1" href="Login.aspx" runat="server">&nbsp;login here</asp:HyperLink></asp:Label>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp; </td>
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
                    <td><asp:Label ID="lblFName" runat="server" Text="First Name:"></asp:Label></td>
                </tr>
                <tr>
                    <td class="TextBox2">
                        <asp:TextBox ID="txtFname" placeholder="Enter your Firstname*" runat="server" Height="25px" Width="300px" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                  <tr>
                    <td><asp:Label ID="lblLName" runat="server" Text="Last Name:"></asp:Label></td>
                </tr><tr>
                    <td class="TextBox2">
                        <asp:TextBox ID="txtLname" placeholder="Enter your Lastname*" runat="server" Height="25px" Width="300px" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                  <tr>
                    <td><asp:Label ID="lblPhone" runat="server" Text="Phone Number:"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPhone" placeholder="Enter your Phone Number*" runat="server" Height="25px" Width="300px" TextMode="Phone" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label></td>
                </tr>
                <tr>
                    <td class="Select">
                        <asp:DropDownList ID="Gender" runat="server" Height="25px" Width="300px" required>
                            <asp:ListItem>Select your gender*</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
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
                        <asp:TextBox ID="txtPassword" placeholder="Enter your Password"  runat="server" Height="25px" Width="300px" TextMode="Password" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Register" Height="35px" Width="290px" Font-Bold="True" Font-Size="Large" font-waight="800" OnClick="Button3_Click" />
                    </td>
                </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr><br />
                <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="red"></asp:Label>
                
            </table>
            </div>
      
</form>
   </center> 
</body>
</html>

