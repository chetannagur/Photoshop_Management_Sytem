<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.Master" CodeBehind="ForgotPassword.aspx.cs" Inherits="Photo_Studio.ForgotPassword" %>

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



   <div class="forgot-pass-section">
        <h1> Forgot Password</h1>
       
            <input type="email" class="forgot-pass-form-text" placeholder="Enter Email-id" />
            <div class="forgot-horizontal">
            <a href="#"><input type="button"  class="forgot-pass-form-btn-otp"  value="Send OTP" /></a>
            <input type="text" class="forgot-pass-form-text-otp" placeholder="Enter OTP" />
                </div>
            <input type="password" class="forgot-pass-form-text" placeholder="Enter New Password" />
            <input type="password" class="forgot-pass-form-text" placeholder=" Re-Enter New Password" />
            <a href="#"><input type="button"  class="forgot-pass-form-btn"  value="Submit" /></a>

        
    </div>


    </asp:Content>
