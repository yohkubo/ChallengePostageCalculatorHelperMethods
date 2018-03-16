<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengePostageCalculatorHelperMethods.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Postal Calculator<br />
            <br />
            Width:
            <asp:TextBox ID="widthTextBox" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            Height:
            <asp:TextBox ID="heightTextBox" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            Length:
            <asp:TextBox ID="lengthTextBox" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            <br />
            <asp:RadioButton ID="groundRadio" runat="server" GroupName="shippingGroup" Text="Ground" AutoPostBack="True" />
            <br />
            <asp:RadioButton ID="airRadio" runat="server" GroupName="shippingGroup" Text="Air" AutoPostBack="True" />
            <br />
            <asp:RadioButton ID="nextRadio" runat="server" GroupName="shippingGroup" Text="Next" AutoPostBack="True" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
