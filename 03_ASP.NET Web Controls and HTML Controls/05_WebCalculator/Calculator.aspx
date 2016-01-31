<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="_05_WebCalculator.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style >
        td input{
            width:90%;
            height: 90%;
            max-width: 70px;
        }
        #MainPanel {
            padding-left:10px;
            padding-top:10px;
        }
        #DisplayPanel{
            margin-bottom:8px;
        }
    </style>
    <script>
        $('#MainPanel').on('click', function (e) {
            console.log(e.target)
        })
    </script>
</head>
<body style="padding:50px;">
    <form id="formCalculator" runat="server" method="get" >
        <asp:Panel ID="MainPanel" runat="server"  
            BorderWidth="5px" BorderColor="WindowFrame" BorderStyle="Double" Width="400px" Height="450px" Wrap="true" HorizontalAlign="Center" BackColor="LightGray"
            >
            <asp:Panel ID="DisplayPanel" runat="server" Width="95%" Height="60px" BorderColor="ControlDarkDark" BorderStyle="Solid">
                <asp:TextBox ID="Display" runat="server" Width="80%" Height="90%" AutoPostBack="true" />
            </asp:Panel>
            <asp:Table ID="ButtonsTable" runat="server" BorderColor="Black" BorderWidth="1px" Width="95%" Height="250px" >
                <asp:TableRow ID="Row1" runat="server" >
                    <asp:TableCell >
                        <asp:Button ID="Button1" Value="1" Text="1" runat="server"/>
                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:Button ID="Button2" Value="2" Text="2" runat="server"/>
                    </asp:TableCell >
                    <asp:TableCell >
                        <asp:Button ID="Button3" Value="3" Text="3" runat="server"/>
                    </asp:TableCell >
                    <asp:TableCell >
                        <asp:Button ID="Sum" Value="+" Text="+" runat="server"/>
                    </asp:TableCell >
                </asp:TableRow>
                <asp:TableRow ID="Row2" runat="server">
                    <asp:TableCell>
                        <asp:Button ID="Button5" Value="4" Text="4" runat="server"/>
                    </asp:TableCell>
                    <asp:TableCell>
                       <asp:Button ID="Button6" Value="5" Text="5" runat="server"/>
                    </asp:TableCell>
                    <asp:TableCell> 
                        <asp:Button ID="Button7" Value="6" Text="6" runat="server"/>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="Subtract" Value="-" Text="-" runat="server"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="Row3" runat="server">
                    <asp:TableCell>
                        <asp:Button ID="Button9" Value="7" Text="7" runat="server"/>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="Button10" Value="8" Text="8" runat="server"/>
                     </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="Button11" Value="9" Text="9" runat="server"/>
                    </asp:TableCell>
                    <asp:TableCell>    
                        <asp:Button ID="Multiply" Value="*" Text="*" runat="server"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="Row4" runat="server">
                    <asp:TableCell>
                        <asp:Button ID="Clear" Value="Clear" Text="Clear" runat="server"/>
                    </asp:TableCell>
                    <asp:TableCell>  
                      <asp:Button ID="Button0" Value="0" Text="0" runat="server"/>
                     </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="Devide" Value="/" Text="/" runat="server"/>
                    </asp:TableCell>
                    <asp:TableCell>    
                    <asp:Button ID="SquareRoot" Value="Sqrt" Text="Sqrt" runat="server"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Button ID="Equals" runat="server" Text="=" Width="95%" Height="60px" />
        </asp:Panel>
    </form>
</body>
</html>
