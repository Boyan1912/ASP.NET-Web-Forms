<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Escaping.aspx.cs" Inherits="_02_Escaping.Escaping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Escaping</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="formEscaping" runat="server">
    <div class="container">
        <div class="row">
        <div class="col-lg-6">
            <asp:Label ID="Label1" runat="server" Text="Enter some text here: "></asp:Label>
            <br />
            <asp:TextBox ID="OriginalText" TextMode="MultiLine" runat="server" Rows="10" Width="100%"></asp:TextBox>
        </div>
        <div class="col-lg-6">
            <asp:Label ID="Label2" runat="server" Text="Escaped text: "></asp:Label>
            <br />
            <asp:TextBox ID="EscapedText" runat="server" TextMode="MultiLine" Rows="10" Width="100%" Enabled="false"></asp:TextBox>
        </div>
        </div>
        <div class="row text-center">
            <asp:Button ID="SubmitBtn" class="btn btn-lg btn-success" runat="server" Text="Escape Tags" OnClick="SubmitBtn_Click"/>
        </div>
    </div>
    </form>
</body>
</html>
