<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebRole1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>My First Azure Cloud Web Service</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #0033CC;
            font-family: Meiryo;
        }
        #form1 {
            height: 526px;
        }
    </style>
</head>
<body style="background-color: #A0CFFE">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>My First Azure Cloud Web Service<br />
        <br />
        </strong>
        <asp:Button ID="btn_LotteryGen" runat="server" OnClick="btn_LotteryGen_Click" style="font-size: x-large; text-align: center; font-family: 'Meiryo UI'; margin-bottom: 5px" Text="Lottery Number Gernerator" Width="387px" />
        <br />
        <br />
        <asp:Button ID="btn_cmdHelper" runat="server" Height="46px" OnClick="btn_cmdHelper_Click" style="font-size: x-large; font-family: Meiryo" Text="CMD command Helper" Width="387px" />
        <br />
        <br />
        <asp:Button ID="btn_tools" runat="server" Height="46px" style="font-size: x-large; font-family: Meiryo" Text="Useful tools" Width="387px" OnClick="btn_tools_Click" />
        </div>
    </form>
</body>
</html>
