<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserFront.Master" CodeBehind="Birthday.aspx.cs" Inherits="Photo_Studio.Birthday" %>


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
    <div class="birthday-section">
      <h1>Birthday</h1>
        <div class="gallary">
            <a href="assets/img/bday/bday1.jpg" data-lightbox="mygallery" ><img src="assets/img/bday/bday1-small.jpg" /></a>
            <a href="assets/img/bday/bday2.jpg" data-lightbox="mygallery" ><img src="assets/img/bday/bday2-small.jpg" /></a>
            <a href="assets/img/bday/bday3.jpg" data-lightbox="mygallery" ><img src="assets/img/bday/bday3-small.jpg" /></a>
            <a href="assets/img/bday/bday4.jpg" data-lightbox="mygallery" ><img src="assets/img/bday/bday4-small.jpg" /></a>
            <a href="assets/img/bday/bday5.jpg" data-lightbox="mygallery" ><img src="assets/img/bday/bday5-small.jpg" /></a>
            <a href="assets/img/bday/bday6.jpg" data-lightbox="mygallery" ><img src="assets/img/bday/bday6-small.jpg" /></a>
            <a href="assets/img/bday/bday7.jpg" data-lightbox="mygallery" ><img src="assets/img/bday/bday7-small.jpg" /></a>
            <a href="assets/img/bday/bday8.jpg" data-lightbox="mygallery" ><img src="assets/img/bday/bday8-small.jpg" /></a>
            <a href="assets/img/bday/bday9.jpg" data-lightbox="mygallery" ><img src="assets/img/bday/bday9-small.jpg" /></a>
            <a href="assets/img/bday/bday10.jpg" data-lightbox="mygallery" ><img src="assets/img/bday/bday10-small.jpg" /></a>
        </div>

      <a href="#"><input type="button"  class="birthday-form-btn"  value="Show More" /></a>
  </div>

    </asp:Content>