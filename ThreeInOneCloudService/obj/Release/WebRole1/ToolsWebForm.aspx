<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToolsWebForm.aspx.cs" Inherits="WebRole1.ToolsWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            font-family: Meiryo;
            color: #0000FF;
            height: 60px;
            width: 1369px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            font-size: xx-large;
            font-family: Meiryo;
        }
        .auto-style5 {
            font-family: Meiryo;
        }
    </style>
</head>
<body style="background-color: #A0CFFE">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong style="text-align: left">Useful Tools(for me)</strong></div>
        <strong><span class="auto-style4">Random Generator&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong style="text-align: left">&nbsp;&nbsp;
        <asp:Button ID="btn_backHome" runat="server" OnClick="btn_backHome_Click" Text="回首頁" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Programming Calculator</span><br class="auto-style5" />
        </strong><span class="auto-style3"><span class="auto-style5">欲產生組數: </span>
        <asp:TextBox ID="txtBox_wanted" runat="server" CssClass="auto-style5" style="font-size: x-large" Width="105px"></asp:TextBox>
        <span class="auto-style5">&nbsp;&nbsp;&nbsp; 長度: </span>
        <asp:TextBox ID="txtBox_length" runat="server" CssClass="auto-style5" style="font-size: x-large" Width="113px"></asp:TextBox>
        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 輸入: </span>
        <asp:TextBox ID="txtBox_input" runat="server" CssClass="auto-style5" style="font-size: x-large" Width="430px"></asp:TextBox>
        <br class="auto-style5" />
        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 來源進制: </span>
        <asp:RadioButtonList ID="radList_input" runat="server" CssClass="auto-style5" RepeatDirection="Horizontal" RepeatLayout="Flow" style="text-align: right" Width="196px">
            <asp:ListItem>Bin</asp:ListItem>
            <asp:ListItem Selected="True">Dec</asp:ListItem>
            <asp:ListItem>Hex</asp:ListItem>
        </asp:RadioButtonList>
        <br class="auto-style5" />
        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="btn_convert" runat="server" CssClass="auto-style5" OnClick="btn_convert_Click" style="font-size: x-large" Text="轉換" />
        <br class="auto-style5" />
        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 目標進制: </span>
        <asp:RadioButtonList ID="radList_output" runat="server" CssClass="auto-style5" RepeatDirection="Horizontal" RepeatLayout="Flow" style="text-align: right" Width="196px">
            <asp:ListItem>Bin</asp:ListItem>
            <asp:ListItem Selected="True">Dec</asp:ListItem>
            <asp:ListItem>Hex</asp:ListItem>
        </asp:RadioButtonList>
        <br class="auto-style5" />
        <span class="auto-style5">產生種類:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 輸出: </span>
        <asp:TextBox ID="txtBox_output" runat="server" CssClass="auto-style5" style="font-size: x-large" Width="430px"></asp:TextBox>
        <br class="auto-style5" />
        <span class="auto-style5">&nbsp;&nbsp;&nbsp; </span>
        <asp:ListBox ID="ListBox_randomType" runat="server" AutoPostBack="True" CssClass="auto-style5" Height="104px" style="font-size: x-large; text-align: left" Width="268px">
            <asp:ListItem>數字</asp:ListItem>
            <asp:ListItem>英文 小寫</asp:ListItem>
            <asp:ListItem>英文 大寫</asp:ListItem>
            <asp:ListItem>混和</asp:ListItem>
        </asp:ListBox>
        <span class="auto-style5">&nbsp;&nbsp; </span>
        <asp:Button ID="btn_Gen" runat="server" CssClass="auto-style5" OnClick="btn_Gen_Click" style="font-size: x-large" Text="產生" />
        <span class="auto-style5">&nbsp;&nbsp;&nbsp; </span>
        <asp:Button ID="btn_clear" runat="server" CssClass="auto-style5" OnClick="btn_clear_Click" style="font-size: x-large" Text="清除" Width="65px" />
        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <br class="auto-style5" />
        <asp:TextBox ID="txtBox_result" runat="server" CssClass="auto-style5" Height="378px" TextMode="MultiLine" Width="488px"></asp:TextBox>
        </span>
    </form>
</body>
</html>
