<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SumNumbers.aspx.cs" Inherits="IntroductionASP.NET.SumNumbers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formSumNumbers" runat="server">
    <div>
        <asp:Label ID="Label" runat="server" Text="Calculation Initiated"></asp:Label>
        <h1>Sum Numbers</h1>    
        First number:
        <asp:TextBox ID="FirstNum" runat="server"></asp:TextBox>
        <br />
        Second number:  
        <asp:TextBox ID="SecondNum" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="ButtonCalculateSum" runat="server"
            OnClick="ButtonCalculateSum_Click" Text="Calculate Sum" />
        <br />
        Sum:
        <asp:TextBox ID="TextBoxSum" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
