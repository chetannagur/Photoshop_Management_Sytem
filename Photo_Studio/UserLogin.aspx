<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.Master" CodeBehind="UserLogin.aspx.cs" Inherits="Photo_Studio.UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="assets/css/stylesheet1.css" />
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.js" type="text/javascript"></script>
    <script src="assets/js/custom.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


     <div class="userlogin-section">
        <h1>User Login</h1>
        
            
         <asp:TextBox ID="txtemail" runat="server"  class="userlogin-form-text" placeholder="Enter Email-id" ></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Right Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         <asp:TextBox ID="txtpass" runat="server" class="userlogin-form-text" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" Text="Log In" class="userlogin-form-btn1" OnClick="Button1_Click" />
         <a href="SignIn.aspx"><input type="button" class="userlogin-form-btn2" value="Signin" /></a>
         <a href="ForgotPassword.aspx"><input type="button" class="userlogin-form-btn3"  value="Forgot Password" /></a>
        
     
    </div>

    </asp:Content>