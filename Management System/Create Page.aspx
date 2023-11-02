<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create Page.aspx.cs" Inherits="Management_System.Create_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 378px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">PROJECT NAME </td>
                <td>
                    
                    <asp:GridView ID="GridView1" runat="server" Width="541px">
                    </asp:GridView>
                    
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
