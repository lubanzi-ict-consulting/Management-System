<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashb.aspx.cs" Inherits="Management_System.Dashb" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css">
    <script src="https://kit.fontawesome.com/e6a45db737.js" crossorigin="anonymous"></script>


    <style>
        body{
            background-color: gray;
        }
        .auto-style1 {
            width: 680px;
            margin-right: 5vw;
            margin: 10vw;
            padding:0vw;
            background-color: wheat;
        }
    </style>
</head>
<body>
    <form action="form1" runat="server" method="post">

        <div class="dashboard">
    <div class="side-nav">
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
            <div class="home">
                <center><h3 style="padding: 30px; display: block; width: 100vw; padding-top:30px; background-color: white; font-family: 'Baskerville Old Face'; font-weight: 600; margin-left: 20px">WELCOME TO THE DASHBOARD</h3></center>

            </div>
       </div>
        <center>
        <div class="auto-style1">
            <h1>PROJECT LIST:</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="632px">
                <Columns>
                    <asp:BoundField DataField="ProjectName" HeaderText="Project Name" />
                    <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
                    <asp:BoundField DataField="EndDate" HeaderText="End Date" />
                    <asp:BoundField DataField="ClientName" HeaderText="Client Name" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkSelect" Text="Select" runat="server"  />
                        </ItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkSelect1" Text="Edit" runat="server"  />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
            </center>
        </form>
</body>
</html>