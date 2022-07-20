<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/UserFront.Master" CodeBehind="Wedding.aspx.cs" Inherits="Photo_Studio.Wedding" %>


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
    <link href="assets/css/lightbox.min.css" rel="stylesheet" />
    <script src="assets/js/lightbox-plus-jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale+=1"/>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="wedding-section">
      <h1>Wedding</h1>
        
     <div class="gallary">
         <a href="assets/img/wedding/wedding1.jpg"  data-lightbox="mygallery" ><img src="assets/img/wedding/wedding1-small.jpg"/></a>
         <a href="assets/img/wedding/wedding2.jpg" data-lightbox="mygallery"><img src="assets/img/wedding/wedding2-small.jpg"  /></a>
         <a href="assets/img/wedding/wedding3.jpg" data-lightbox="mygallery"><img src="assets/img/wedding/wedding3-small.jpg" /></a>
         <a href="assets/img/wedding/wedding4.jpg" data-lightbox="mygallery"><img src="assets/img/wedding/wedding4-small.jpg"  /></a>
         <a href="assets/img/wedding/wedding5.jpg" data-lightbox="mygallery"><img src="assets/img/wedding/wedding5-small.jpg"  /></a>
         <a href="assets/img/wedding/wedding6.jpg" data-lightbox="mygallery"><img src="assets/img/wedding/wedding6-small.jpg" /></a>
         <a href="assets/img/wedding/wedding7.jpg" data-lightbox="mygallery"><img src="assets/img/wedding/wedding7-small.jpg"  /></a>
         <a href="assets/img/wedding/wedding8.jpg" data-lightbox="mygallery"><img src="assets/img/wedding/wedding8-small.jpg"  /></a>
         <a href="assets/img/wedding/wedding9.jpg" data-lightbox="mygallery"><img src="assets/img/wedding/wedding9-small.jpg"  /></a>
         <a href="assets/img/wedding/wedding10.jpg" data-lightbox="mygallery"><img src="assets/img/wedding/wedding10-small.jpg"  /></a>
        </div>

      <a href="#"><input type="button"  class="wedding-form-btn"  value="Show More" /></a>
  </div>


    </asp:Content>