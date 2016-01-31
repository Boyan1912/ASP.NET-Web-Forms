<%@ Page Title="Friends" Language="C#" AutoEventWireup="true" CodeBehind="Friends.aspx.cs" MasterPageFile="~/Site.Master" Inherits="ASP.NET_Master_Pages.Friends" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="list-group container-fluid">
        <h2 class="list-group-item active">List with user's friends:</h2>
        <asp:BulletedList runat="server" ID="FriendsList" BulletStyle="NotSet" DisplayMode="LinkButton">
        
    </asp:BulletedList>
    </div>
</asp:Content>
