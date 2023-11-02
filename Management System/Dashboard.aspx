<%--<%@ Page Language="C#" ViewStateMode="inherit" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Management_System.Dashboard" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/e6a45db737.js" crossorigin="anonymous"></script>

    <script src="https://www.google.com/recaptcha/api.js" asyncdefer></script>
    <style type="text/css">
        .auto-style2 {
            width: 100vw;
            padding-top: 20px;
            margin: auto;
            margin-left: auto;
            align-items: center;
            align-items: center;
            background-color:cadetblue;
            height:100vw;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <div class="dashboard">
        <div class="side-nav">
       <header style="font-size:25px">LUB<span style="color: chocolate">A</span>NZI</header>
       <ul>
           <h2>Manu</h2>
           <li><i class="fa-solid fa-house"></i><asp:HyperLink ID="HyperLink1" runat="server" href="Dashb.aspx">Home</asp:HyperLink></li>
           <li>
               <i class="fa-solid fa-pen-nib"></i><asp:HyperLink ID="HyperLink2" runat="server" href="Project.aspx">Create Project</asp:HyperLink></li>
           <li>
               <i class="fa-solid fa-users"></i><asp:HyperLink ID="HyperLink3" runat="server" href="Employee.aspx">Create Employee</asp:HyperLink></li>
           <li>
               <i class="fa-regular fa-file"></i><asp:HyperLink ID="HyperLink4" runat="server" href="Capture Timesheet.aspx">Capture Timesheet</asp:HyperLink></li>
          
           
    <asp:HyperLink ID="HyperLink5" runat="server" href="Login.aspx">Sign Out</asp:HyperLink>
       </ul>
           </div>
           </div>

        <div class="main-content">
            <h1>Dashboard</h1>
        <div class="main-content1">
        
            <p>Welcome to our Dashboard</p>
            </div>
            </div>
        </div>
                   <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="auto-style1" Height="178px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="762px">
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
                <asp:LinkButton ID="lnkSelect" Text="Edit" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>--%>

  <%--  </div>
    
                
        


             <div class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="816px" Height="134px">
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
 </div>
    
                
        


   </form>

</body>
</html>--%>--%>
