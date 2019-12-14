<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSection.aspx.cs" Inherits="StudentProjectManagement.AddSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 123px;
        }
    </style>
</head>
<body>
    <h1>Add Section</h1>
    <form id="form1" runat="server">
        <div>
            <table style="width: 34%;" id="table1">
                <tr>
                    <td>Choose Category:  </td>
                    <td>
                        <asp:DropDownList ID="ddlistCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlistCategary_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Select one option...</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem>Advisor</asp:ListItem>
                            <asp:ListItem>Co-advisor</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
            </table>
            <br /><br /><br />
            <table style="width: 34%;" id="table2">
                <tr>
                    <td class="auto-style1">Name: </td>
                    <td>
                        <asp:TextBox ID="name" runat="server"></asp:TextBox></td>
                </tr>
                <tr id="regNo">
                    <td class="auto-style1">Registration No.: </td>
                    <td>
                        <asp:TextBox ID="txtregNo" runat="server"></asp:TextBox></td>
                </tr>
                <tr id="rank">
                    <td class="auto-style1">Rank: </td>
                    <td>
                        <asp:TextBox ID="txtrank" runat="server"></asp:TextBox></td>
                </tr>


                <tr>
                    <td class="auto-style1">Gender:</td>
                    <td>
                        <asp:RadioButtonList ID="radioGender" runat="server" AutoPostBack="True">
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                            <asp:ListItem Value="Other">Other</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Phone: </td>
                    <td>
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Email: </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="42px" style="margin-left: 0px; border-radius:8px" Width="166px" OnClick="btnSubmit_Click" />
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <script>
        var table = document.getElementById("table2");
        var selectedValue = "";
        GetSelectedTextValue();
        function GetSelectedTextValue() {
            var ddlCategory = document.getElementById("<%=ddlistCategory.ClientID %>");
            var selectedText = ddlistCategory.options[ddlistCategory.selectedIndex].innerHTML;
            selectedValue = ddlistCategory.value;
        }
        if (selectedValue == "Student") {
            table.deleteRow(2);
        }
        else if (selectedValue == "Advisor" || selectedValue == "Co-advisor") {
            table.deleteRow(1);
        }
        else {
            table.style.visibility = "hidden";
        }

    </script>
</body>
</html>
