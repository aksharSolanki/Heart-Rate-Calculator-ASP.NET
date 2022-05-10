<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HeartRateCalculator.aspx.cs" Inherits="A1AksharSolanki.HeartRateCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-right: 0px;
        }
        .auto-style4 {
            width: 249px;
            background-color: #99FF99;
        }
        .auto-style14 {
            width: 249px;
            height: 8px;
            background-color: #66FFFF;
        }
        .auto-style15 {
            height: 8px;
            width: 935px;
            background-color: #CCFFFF;
        }
        .auto-style16 {
            width: 249px;
            height: 13px;
            background-color: #99FF99;
        }
        .auto-style17 {
            height: 13px;
            width: 935px;
            background-color: #99FFCC;
        }
        .auto-style18 {
            width: 935px;
            background-color: #CCFFFF;
        }
        .auto-style19 {
            width: 249px;
            background-color: #66FFFF;
        }
        .auto-style20 {
            color: #0066FF;
        }
        .auto-style23 {
            width: 249px;
            height: 16px;
            background-color: #66FFFF;
        }
        .auto-style24 {
            height: 16px;
            width: 935px;
            background-color: #CCFFFF;
        }
        .auto-style25 {
            width: 249px;
            height: 13px;
            background-color: #66FFFF;
        }
        .auto-style26 {
            height: 13px;
            width: 935px;
            background-color: #CCFFFF;
        }
        .auto-style27 {
            width: 249px;
            height: 5px;
            background-color: #66FFFF;
        }
        .auto-style28 {
            height: 5px;
            width: 935px;
            background-color: #CCFFFF;
        }
        .auto-style29 {
            width: 249px;
            height: 4px;
            background-color: #FFFFFF;
        }
        .auto-style30 {
            height: 4px;
            width: 935px;
            background-color: #FFFFFF;
        }
        .auto-style31 {
            width: 935px;
            background-color: #99FFCC;
        }
        .auto-style35 {
            color: #FFFFFF;
            background-color: #0099CC;
        }
        .auto-style36 {
            color: #FFFFFF;
            background-color: #00CC00;
        }
        .auto-style37 {
            font-weight: normal;
            font-size: large;
            background-color: #00CC00;
        }
        .auto-style39 {
            height: 4px;
        }
        .auto-style40 {
            height: 3px;
        }
        .auto-style41 {
            width: 249px;
            height: 3px;
            background-color: #99FF99;
        }
        .auto-style42 {
            height: 3px;
            width: 935px;
            background-color: #99FFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2" class="auto-style39">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/titleImage.jfif" Height="105px" Width="228px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style40"><h2 class="auto-style36">Heart Rate Calculator <span class="auto-style37">By Akshar Solanki</span></h2></td>
            </tr>
            <tr>
                <td class="auto-style4">First Name</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtFName" runat="server" AutoPostBack="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqValFName" runat="server" ControlToValidate="txtFName" Display="Dynamic" ErrorMessage="*First name is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Last Name</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtLName" runat="server" AutoPostBack="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqValLName" runat="server" ControlToValidate="txtLName" Display="Dynamic" ErrorMessage="*Last name is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Year Of Birth</td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtYears" runat="server" AutoPostBack="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqValYear" runat="server" ControlToValidate="txtYears" Display="Dynamic" ErrorMessage="*Year of birth is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style41">Sex</td>
                <td class="auto-style42">
                    <asp:RadioButtonList ID="rbListSex" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="m">Male</asp:ListItem>
                        <asp:ListItem Value="f">Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="reqValSex" runat="server" ControlToValidate="rbListSex" Display="Dynamic" ErrorMessage="*Sex is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="auto-style35" />
                </td>
                <td class="auto-style30">
                    <asp:Button ID="btnClear" runat="server" Height="50px" Text="Clear" CausesValidation="False" OnClick="btnClear_Click" CssClass="auto-style35" />
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="lblShowName" runat="server" CssClass="auto-style20" Text="Name" Visible="False"></asp:Label>
                    <span class="auto-style20">&nbsp;</span></td>
                <td class="auto-style28">
                    <asp:Label ID="lblPersonName" runat="server" CssClass="auto-style20"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="lblShowAge" runat="server" CssClass="auto-style20" Text="Age" Visible="False"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:Label ID="lblPersonAge" runat="server" CssClass="auto-style20"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="lblShowSex" runat="server" CssClass="auto-style20" Text="Sex" Visible="False"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:Label ID="lblPersonSex" runat="server" CssClass="auto-style20"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Label ID="lblShowMaxHR" runat="server" CssClass="auto-style20" Text="Max Heart Rate" Visible="False"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:Label ID="lblPersonMaxHR" runat="server" CssClass="auto-style20"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="lblShowRangeHR" runat="server" CssClass="auto-style20" Text="Target Heart Range" Visible="False"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="lblPersonHRRange" runat="server" CssClass="auto-style20"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
