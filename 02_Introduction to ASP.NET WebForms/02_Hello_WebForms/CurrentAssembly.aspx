<%@ Page Title="Assembly" Language="C#" AutoEventWireup="true" CodeBehind="CurrentAssembly.aspx.cs" MasterPageFile="~/Site.Master" Inherits="_02_Hello_WebForms.CurrentAssembly" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="row" style="min-height: 300px; background-color:burlywood;">
        <div class="col col-lg-9" style="text-align:center">
            <strong>
                <asp:Literal ID="Show" runat="server"/>
            </strong>
        </div>
    </div>
</asp:Content>