<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserFront.Master" CodeBehind="AboutUs.aspx.cs" Inherits="Photo_Studio.AboutUs" %>

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
  <div class="abtus">
      <h1>About Us</h1>
      <div class="saurabh">
          <img src="assets/img/tom.png" />
           <h2>Omkar</h2>
          <div class="parasp">
          <p>Hey,I am a Web Designer.<br /><br />
                  I am working with HTML,<br /><br />
                  CSS,JS as well as node.JS.<br /><br />
                  I am a TYIT Student.....
          </p>
      </div>
   </div>
         <div class="omkar">
          <img src="assets/img/tom.png" />
                <h2>Saurabh</h2>
             <div class="paraom">
          <p>Hey,I am a Web Developer.<br /><br />
                  I am working with HTML,<br /><br />
                  CSS,JS as well as node.JS.<br /><br />
                  I am a TYIT Student.....
          </p>
          </div>
    </div>
  </div>
</asp:Content>