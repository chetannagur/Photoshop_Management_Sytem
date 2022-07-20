<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserFront.Master" CodeBehind="ContactUs.aspx.cs" Inherits="Photo_Studio.ContactUs" %>

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

    <div class="contact-section">
        <h1>Contact Us</h1>
        <asp:Label ID="lbldate" Visible="false" runat="server" Text=""></asp:Label>    
         <asp:TextBox ID="txtemail" Visible="false" class="contact-form-email" placeholder="Your email....." runat="server"></asp:TextBox>
        <asp:TextBox ID="txtname" class="contact-form-text" placeholder="Your name....." runat="server"></asp:TextBox>
       
        <asp:TextBox ID="txtcontact" class="contact-form-text" placeholder="Your phone....." runat="server"></asp:TextBox>  
         <asp:TextBox ID="txtquery" class="contact-form-text" placeholder="Enter Your Question" runat="server" TextMode="MultiLine"></asp:TextBox>  
        <asp:Button class="contact-form-btn"   ID="btn1" runat="server" Text="Send" OnClick="btn1_Click" />

       
    </div>

    </asp:Content>