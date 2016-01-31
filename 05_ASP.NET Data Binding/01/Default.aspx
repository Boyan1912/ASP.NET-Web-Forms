<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_01._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Cars</h1>
    </div>

    <div class="row">
        <div class="col-md-2">
            <asp:DropDownList ID="CarsDropDownList" runat="server" 
                ItemType="_01.Models.Producer"
                DataTextField="Name"
                AutoPostBack="true"
                OnSelectedIndexChanged="CarsDropDownList_SelectedIndexChanged"
                >
                <asp:ListItem Text="Select car" ></asp:ListItem>
            </asp:DropDownList>  
        </div>
        
        <div class="col-md-2">
            <asp:DropDownList ID="ModelsDropDownList" runat="server" >
                <asp:ListItem Text="Select model"></asp:ListItem>
            </asp:DropDownList>
        </div>
        
        <div class="col-md-3">
            <asp:CheckBoxList ID="ExtrasCheckBoxList" runat="server"
                AutoPostBack="false"
                >
            </asp:CheckBoxList>
        </div>

        <div class="col-md-3">
            <asp:RadioButtonList ID="EngineTypeList" runat="server"
                RepeatDirection="Horizontal"
                >
            </asp:RadioButtonList>
        </div>
        <div class="col-md-2">
            <asp:Button Text="Submit" ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click"/>
        </div>
    </div>
    
    <div class="row">
        <strong>
            <asp:Label ID="Result" runat="server" />
        </strong>
    </div>
</asp:Content>
