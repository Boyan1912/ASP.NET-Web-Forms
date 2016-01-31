<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelloSomebody.aspx.cs" Inherits="_01_Hello.HelloSomebody" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Congratulate page</title>
</head>
<body>
    <form id="HelloForm" runat="server">
    <div>
        <h3>
        <asp:Label ID="LabelForName" runat="server" AssociatedControlID="TextBoxName" Text="Please Enter Your Name: " />
        </h3>
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <asp:Button ID="ButtonName" runat="server" Text="Send" OnClick="ButtonName_Click" />
    </div>
    </form>
</body>
</html>
