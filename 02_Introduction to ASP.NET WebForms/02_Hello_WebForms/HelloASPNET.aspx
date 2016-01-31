<%@ Page Title="Hello" Language="C#" AutoEventWireup="true" CodeBehind="HelloASPNET.aspx.cs" MasterPageFile="~/Site.Master" Inherits="_02_Hello_WebForms.HelloASPNET" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel" BackColor="Tomato" runat="server" CssClass="container container-fluid">
    <h1>Hello, ASP.NET from .aspx</h1>
    </asp:Panel>
    <br />
    <asp:Button ID="ChangeSourceBtn" CssClass="btn btn-primary btn-lg" OnClick="ChangeSourceBtn_Click" Text="Change Source" runat="server"/>
</asp:Content>
