<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMaster.Master" CodeBehind="AdminLogin.aspx.cs" Inherits="Photo_Studio.AdminLogin" %>

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


    <div class="adminlogin-section">
        <h1>Admin</h1>
        
         <asp:TextBox ID="txtemail" runat="server"  class="adminlogin-form-text" placeholder="Enter User Name" ></asp:TextBox>
        
         <asp:TextBox ID="txtpass" runat="server" class="adminlogin-form-text" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" Text="Log In" class="adminlogin-form-btn" OnClick="Button1_Click"  />
         <asp:Button ID="Button3" runat="server" Text="Forgot Password" class="adminlogin-form-btn3"/>
         
            
            
           
      
    </div>


    </asp:Content>