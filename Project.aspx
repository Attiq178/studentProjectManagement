<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="StudentProjectManagement.Project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 34%;">
                <tr>
                    <td>Title</td>
                    <td>
                        <asp:TextBox ID="title" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <asp:TextBox ID="description" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Advisor</td>
                    <td>

                        <asp:DropDownList ID="ddlAdvisor" runat="server">
                            <asp:ListItem>Select Advisor</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>Co-Advisor</td>
                    <td>

                        <asp:DropDownList ID="ddlCoAdvisor" runat="server">
                            <asp:ListItem>Select Co-Advisor</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="42px" Style="margin-left: 0px; border-radius: 8px" Width="166px" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
