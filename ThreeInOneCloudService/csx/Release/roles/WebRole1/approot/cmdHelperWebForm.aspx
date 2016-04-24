<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cmdHelperWebForm.aspx.cs" Inherits="WebRole1.cmdHelperWebForm" %>

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
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-family: Meiryo;
            color: #000000;
        }
        .auto-style4 {
            font-size: x-large;
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
    
        <strong><span class="auto-style3">Windows CMD 指令查詢小幫手</span><br class="auto-style3" />
        <span class="auto-style2">
        <asp:Button ID="btn_bachHome" runat="server" CssClass="auto-style5" OnClick="btn_bachHome_Click" Text="回首頁" />
        <br />
        </span>
    
        <br class="auto-style3" />
        </strong><span class="auto-style4">輸入欲查詢指令: </span>
        <asp:TextBox ID="txtBox_commandWanted" runat="server" CssClass="auto-style5"></asp:TextBox>
        <br class="auto-style4" />
        <asp:Button ID="btn_search" runat="server" CssClass="auto-style4" OnClick="btn_search_Click" Text="指令送出" />
        <span class="auto-style2">
        &nbsp;<br class="auto-style3" />
        <asp:Label ID="label_searchResult" runat="server" CssClass="auto-style3"></asp:Label>
        </span>
    
    </div>
    </form>
</body>
</html>
