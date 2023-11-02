 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Management_System.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <title>Create Projects</title>
     <link href="Project.css" rel="stylesheet" />
   <style type="text/css">
         .auto-style8 {
             border-style: groove;
             border-color: inherit;
             border-width: medium;
             padding: 50px;
             padding-top: 20px;
             margin-top: 150px;
             background-color: beige;
             box-shadow: 5px 7px 10px #ffffff;
             width: 397px;
             height: 169px;
             display: block;
         }
         .auto-style9 {
             position: fixed;
             top: -1px;
             margin-left: 20%;
             width: 238px;
             height: 100vh;
             background: cadetblue;
             outline-style: groove;
             transform: translateX(-180px);
             box-shadow: 0 0 15px rgba(0,0,0,0.5);
             left: -123px;
         }


         @import url('dashboard.css');
* {
    margin: 0;
    padding: 0;
}

body {
    font-family: open sans;
}

.dashboard .side-nav {
    position: fixed;
    top: 0;
    left: 0;
    width: 20vw;
    height: 100vh;
    /*background: #231f20;*/
}
.side-nav {
    position: fixed;
    top: 0;
    left: 0;
    width: 20vw;
    height: 100vh;
    background: cadetblue;
    outline-style: groove;
   /* transform: translateX(-180px);*/
    box-shadow: 0 0 15px rgba(0,0,0,0.5);
}
    .dashboard .side-nav .log{
        font-size: 3vw;
        font-weight:400;
        text-align:center;
        padding-top: 20px;
        line-height: 90px;
        border-bottom: 1px dotted white;
        margin-bottom: 50px;
        background-color: snow;
        border-color: chocolate;
        
    }
    ul li {
        list-style: none;
        text-align: left;
        padding: 5px 0;
        margin-left: 25px;
        border-bottom: 1px solid rgba(0,0,0,0.5);
        border-top: 1px solid rgba(255,255,255,0.5);
        line-height: 55px;
   /* }
    .dashboard .side-nav ul li{*/
        display: block;
        font-weight: 900;
        text-transform: capitalize;
        text-decoration: none;
        transition: 0.2s ease-out;
    }
    .dashboard .side-nav ul li:hover {
        /*background-color:wheat;*/
        transition: 2s;
        font-size: 18px;
    }
    /*.dashboard .side-nav ul li i{
        margin-left: 20px;

    }*/
ul li:hover{
    color: chocolate;
    
    border-radius: 20px;
    width: auto;
}
ul li i {
    width: 40px;
    text-align: center;
}
    #Button1 {
        list-style: none;
        align-content: center;
        align-self: center;
        align-items: center;
        padding: 15px;
        margin-left: 25px;
        width: 125px;
        height: 50px;
        background-color: cadetblue;
        border-radius: 20px;
    }
    #Button1:hover{
        background-color: aliceblue;
        transition: 0.5s;
    }
        i {
            margin-right: 8px;
        }
    .dashboard .side-nav .social-icon{
        position: absolute;
        bottom: 8px;
        left: 50%;
        transform: translate(-50%);
        font-size: 25px;
        display:flex;
    }
    a{
        text-decoration: none;
        color: #fff;
        font-weight: 300;
    }
    a:hover{
        color: black;
    }

    .dashboard .main-content .content{
        width: 80vw;
        margin-left: 21vw;
        display: block;
    }
    p{
        color: gold;
        display: block;
    }
    .main-content {
        color: black;
        display: block;
    }
    header {
        font-size: 22px;
        text-align: center;
        line-height: 60px;
        background: #063146;
    }
    /*#HyperLink5{
        width: auto;
        height: 5px 10px;
        color:white;
        font-size: 20px;
        margin: auto;
        padding: 5px;
        margin-top: 20px;
        font-weight: 600;
        background-color: #063146;
        border-radius: 5px;
    }*/

        /*#HyperLink5:hover {
            background-color: #063146;
            color: aliceblue;
            transition: 0.5s;
            opacity: 0.5;
            list-style: none;
            text-align: left;*/
           /* padding: 5px 0;
            margin-left: 25px;*/
            
          /*  line-height: 55px;*/

            /*display: block;
            font-weight: 900;*/
          /*  text-transform: capitalize;*/
            /*text-decoration: none;
            transition: 0.2s ease-out;
        }*/
     .main-content{
         width:100%;
         position: center;
         margin-left: 120px;
         text-align: center;
         background-color: #063146;
     }
     h2{
         color: #8000ff;
         font-weight: 800;
         text-align: center;
         padding: 10px 0;
         padding-right: 30px;
         pointer-events: none;
     }
     h3{
         color: #8000ff;
         font-weight: 800;
         text-align: center;
         padding: 10px 0;
         padding-right: 30px;
         
         pointer-events: none;
         text-align:center;
     }
     .any{
         margin-left: 0px;
         margin-right: 20px;
         display: contents;
         padding-top:20px;
     }
     </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">

         <div class="auto-style9">
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

        <div class="auto-style8">
            
            <table class="auto-style18">
                <tr>
                    <h1>Create Employee List</h1>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmployee" runat="server" Text="Create Employee:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtCreateEmployee" runat="server" ForeColor="black" Height="25px" Width="250px" required></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblRole" runat="server" Text="Role"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="Roles" runat="server" Height="25px" Width="250px" required>
                            <asp:ListItem>Select your Role</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Save" Width="100px" OnClick="Button1_Click" Height="25px" />
                        <asp:Button ID="Button2" runat="server" Text="Cancel" Height="25px" Width="100px" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="View" Height="25px" Width="100px" />
                        <asp:Button ID="Button4" runat="server" Text="Edit" Height="25px" Width="100px" />
                        <asp:Button ID="Button5" runat="server" Text="Delete" Height="25px" Width="100px" />
                    </td>
                </tr>
                </table>

        </div>
    </form>
        </center>
</body>
</html>
