<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HtmlControls.aspx.cs" Inherits="_01_Random.HtmlControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HTML Server Controls</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label for="min" runat="server">Set minimum number: </label>
        <input type="text" id="min" runat="server"/>
        <br />
        <label for="max" runat="server">Set maximum number: </label>
        <input type="text" id="max" runat="server"/>
        <br />
        <button id="rndGen" runat="server" >Generate Random Number</button>
        <br />
        <input id="result" type="text" style="display:none;" runat="server" />
    </div>
    </form>
</body>
</html>
