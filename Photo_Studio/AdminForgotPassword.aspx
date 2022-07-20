<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/AdminMaster.Master" CodeBehind="AdminForgotPassword.aspx.cs" Inherits="Photo_Studio.AdminForgotPassword" %>
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
    <meta name="viewport" content="width=device-width, initial-scale+=1"/>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <div class="adminforgot-section">
        <h1> Admin Forgot Password</h1>
       
            <input type="email" class="adminforgot-form-text" placeholder="Enter Email-id" />
            <div class="horizontal">
            <a href="#"><input type="button"  class="adminforgot-form-btn-otp"  value="Send OTP" /></a>
            <input type="text" class="adminforgot-form-text-otp" placeholder="Enter OTP" />
                </div>
            <input type="password" class="adminforgot-form-text" placeholder="Enter New Password" />
            <input type="password" class="adminforgot-form-text" placeholder=" Re-Enter New Password" />
            <a href="#"><input type="button"  class="adminforgot-form-btn"  value="Submit" /></a>

        
    </div>


    </asp:Content>
