<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="Management_System.Project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Project.css" rel="stylesheet" />

    
   
    <style type="text/css">
        .auto-style8 {
            position: fixed;
            top: 0;
            margin-left: 20%;
            width: 20vw;
            height: 100vh;
            background: cadetblue;
            outline-style: groove;  transform: translateX(-180px);;
            box-shadow: 0 0 15px rgba(0,0,0,0.5);
            left: -90px;
            margin-right: 90px;
        }
    </style>


  <%--  Buttons
Save Button 
Cancel Button
View Button 
Edit Button
Delete Button 
View Button
List Button--%>


</head>
<body>
    <form id="form1" runat="server">

                  <div class="auto-style8">
<header style="font-size:25px; margin: auto">LUB<span style="color: chocolate">A</span>NZI</header>
<ul>
    <h2>Manu</h2>
    <li><i class="fa-solid fa-house"></i><asp:HyperLink ID="HyperLink1" runat="server" href="Dashb.aspx">Home</asp:HyperLink></li>
    <li>
        <i class="fa-solid fa-pen-nib"></i><asp:HyperLink ID="HyperLink2" runat="server" href="Project.aspx">Create Project</asp:HyperLink></li>
    <li>
        <i class="fa-solid fa-users"></i><asp:HyperLink ID="HyperLink3" runat="server" href="Employee.aspx">Create Employee</asp:HyperLink></li>
    <li>
        <i class="fa-regular fa-file"></i><asp:HyperLink ID="HyperLink4" runat="server" href="CaptureTimesheet.aspx">Capture Timesheet</asp:HyperLink></li>
   <br />
    
     <center><asp:HyperLink ID="HyperLink5" runat="server" href="Login.aspx" style=" ">Sign Out</asp:HyperLink></center>
</ul>
    </div>

        <center>
        <div class="content">
            <h1>Create Project</h1>
            
            <table class="container">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Project Name: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProjectName" runat="server" Height="25px" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblStartDate" runat="server" Text="Start Date"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblEndDate" runat="server" Text="End Date"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDuration" runat="server" Text="Duration:"></asp:Label>
                    </td>
                    <td class="date">
                        <asp:TextBox ID="StartDate" runat="server" TextMode="DateTime" Height="25px" Width="100px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="endDate" runat="server" TextMode="DateTime" Height="25px" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblClientName" runat="server" Text="Client Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtClientName" runat="server" Height="25px" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Save" Height="25px" Width="100px" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Cancel" Height="25px" Width="100px" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="View Page" Height="25px" Width="100px" OnClick="Button3_Click"/>
                        
                    </td>
                </tr>
                <asp:Label ID="Label2" runat="server" Text="" ForeColor="red"></asp:Label>
                
            </table>
        </div>
            </center>
    </form>
</body>
</html>
