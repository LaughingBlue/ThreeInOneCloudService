<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LotteryGenServiceWebForm.aspx.cs" Inherits="WebRole1.LotteryGenServiceWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>My First Azure Cloud Web Service</title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            font-family: Meiryo;
            color: #0033CC;
            background-color: #A0CFFE;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            color: #000000;
        }
    </style>
</head>
<body style="background-color: #A0CFFE">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>網頁雲端樂透號碼產生器<br />
        <asp:Button ID="btn_backHome" runat="server" OnClick="btn_backHome_Click" Text="回首頁" />
        <br />
        <br />
        </strong><span class="auto-style2"><span class="auto-style3">欲產生組數:</span><strong> </strong></span><strong>
        <asp:TextBox ID="txtBox_want" runat="server" style="font-size: x-large"></asp:TextBox>
        </strong>
        <br />
        <asp:RadioButtonList ID="radList_lotType" runat="server" OnSelectedIndexChanged="radioList_lotType_SelectedIndexChanged" style="font-size: x-large; color: #FF0066; margin-left: 625px;" Width="124px" AutoPostBack="True">
            <asp:ListItem Selected="True">大樂透</asp:ListItem>
            <asp:ListItem>威力彩</asp:ListItem>
            <asp:ListItem>今彩539</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;<asp:Image ID="Image_logo" runat="server" Height="49px" ImageUrl="~/Images/biglot.JPG" Width="117px" />
        &nbsp;<asp:Button ID="btn_GenStart" runat="server" Height="48px" OnClick="btn_GenStart_Click" style="font-size: x-large; font-family: Meiryo; color: #FF0000" Text="好手氣!!" Width="134px" />
        <br />
        <asp:TextBox ID="txtBox_Result" runat="server" Height="290px" TextMode="MultiLine" Width="634px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
