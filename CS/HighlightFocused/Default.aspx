<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HighlightFocused._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function HightlightOnGotFocus(s, e) {
            ChangeBgColor(s, 'Yellow');
        }
        function FadeOnLostFocus(s, e) {
            ChangeBgColor(s, 'White');
        }
        function ChangeBgColor(edit, color) {
            edit.GetMainElement().style.backgroundColor = color;
            edit.GetInputElement().style.backgroundColor = color;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table><tr><td><dxe:ASPxLabel ID="ASPxLabel1" runat="server" Text="Text:">
        </dxe:ASPxLabel></td>
        <td><dxe:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px" ClientSideEvents-GotFocus="HightlightOnGotFocus" ClientSideEvents-LostFocus="FadeOnLostFocus">
        </dxe:ASPxTextBox></td></tr>
        <tr><td><dxe:ASPxLabel ID="ASPxLabel2" runat="server" Text="Date:">
        </dxe:ASPxLabel></td>
        <td><dxe:ASPxDateEdit ID="ASPxDateEdit1" runat="server" ClientSideEvents-GotFocus="HightlightOnGotFocus" ClientSideEvents-LostFocus="FadeOnLostFocus">
        </dxe:ASPxDateEdit></td></tr>
        <tr><td><dxe:ASPxLabel ID="ASPxLabel3" runat="server" Text="Memo:">
        </dxe:ASPxLabel></td>
        <td><dxe:ASPxMemo ID="ASPxMemo1" runat="server" Height="71px" Width="170px" ClientSideEvents-GotFocus="HightlightOnGotFocus" ClientSideEvents-LostFocus="FadeOnLostFocus">
</dxe:ASPxMemo></td></tr></table>
    </div>
    </form>
</body>
</html>
