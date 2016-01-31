<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebControls.aspx.cs" Inherits="_01_Random.WebControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Server Controls</title>
</head>
<body>
    <form id="form" runat="server">
    <asp:Panel ID="Wrapper" runat="server">
        <asp:Label ID="LabelMin" runat="server" Text="Set minimum number: " AssociatedControlID="Min"/>
        <asp:TextBox ID="Min" runat="server" />
        <br />
        <asp:Label ID="LabelMax" runat="server" Text="Set maximum number: " AssociatedControlID="Max"/>
        <asp:TextBox ID="Max" runat="server" />
        <br />
        <asp:Button ID="generator" runat="server" Text="Generate Random Number" OnClick="generator_Click" />
    </asp:Panel>
    </form>
</body>
</html>
