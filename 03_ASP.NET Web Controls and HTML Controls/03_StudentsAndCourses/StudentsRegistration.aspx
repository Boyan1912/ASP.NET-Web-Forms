<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentsRegistration.aspx.cs" Inherits="_03_StudentsAndCourses.StudentsRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students' Registration Form</title>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body id="BodyTag" runat="server">
    <asp:Panel ID="MainPanel" runat="server" CssClass="jumbotron" Width="65%" Wrap="true" HorizontalAlign="Center">
        <h1>Registration Form</h1>
        <asp:Panel ID="FormPanel" runat="server" CssClass="container" Width="85%" Wrap="true" BorderColor="SlateBlue" BorderStyle="Outset">
            <form id="registerForm" runat="server" role="form">            
                <div class="form-group">
                    <asp:Label ID="FirstNameLabel" runat="server" Text="First Name: " AssociatedControlID="FirstName" />
                    <asp:TextBox ID="FirstName" CssClass="form-control" runat="server" placeholder="Enter Your First Name"/>
                </div>
                <div class="form-group">
                    <asp:Label ID="LastNameLabel" runat="server" Text="Last Name: " AssociatedControlID="LastName" />
                    <asp:TextBox ID="LastName" CssClass="form-control" runat="server" placeholder="Enter Your Last Name"/>
                </div>
                <div class="form-group">
                    <asp:Label ID="FacNumberLabel" runat="server" Text="Faculty Number: " AssociatedControlID="FacNumber" />
                    <asp:TextBox ID="FacNumber" CssClass="form-control" runat="server" placeholder="Enter Your Faculty Number"/>
                </div>
                <div class="form-group pull-left">
                    <asp:Label Text="Select University: " runat="server"/>
                    <asp:DropDownList ID="UniversitiesTextBox" runat="server"></asp:DropDownList>
                </div>
                <div class="form-group pull-left">
                    <asp:Label Text="Select Specialty: " runat="server"/>
                    <asp:DropDownList ID="SpecialtiesTextBox" runat="server"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label Text="Select Courses: " runat="server"/>
                    <asp:ListBox ID="CoursesTextBox" runat="server" SelectionMode="Multiple" Height="100px" Width="60px"></asp:ListBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="SubmitBtn" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="SubmitBtn_Click" />
                </div>
            </form>
        </asp:Panel>
    </asp:Panel>
</body>
</html>
