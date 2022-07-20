<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserFront.Master" CodeBehind="Kids.aspx.cs" Inherits="Photo_Studio.Kids" %>


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


    <div class="kids-section">
      <h1>Kids</h1>
        <div class="gallary">
         <a href="assets/img/kids/kids1.jpg"  data-lightbox="mygallery" ><img src="assets/img/kids/kids1-small.jpg"/></a>
         <a href="assets/img/kids/kids2.jpg"  data-lightbox="mygallery" ><img src="assets/img/kids/kids2-small.jpg"/></a>
            <a href="assets/img/kids/kids3.jpg"  data-lightbox="mygallery" ><img src="assets/img/kids/kids3-small.jpg"/></a>
            <a href="assets/img/kids/kids4.jpg"  data-lightbox="mygallery" ><img src="assets/img/kids/kids4-small.jpg"/></a>
            <a href="assets/img/kids/kids5.jpg"  data-lightbox="mygallery" ><img src="assets/img/kids/kids5-small.jpg"/></a>
            <a href="assets/img/kids/kids6.jpg"  data-lightbox="mygallery" ><img src="assets/img/kids/kids6-small.jpg"/></a>
            <a href="assets/img/kids/kids7.jpg"  data-lightbox="mygallery" ><img src="assets/img/kids/kids7-small.jpg"/></a>
            <a href="assets/img/kids/kids8.jpg"  data-lightbox="mygallery" ><img src="assets/img/kids/kids8-small.jpg"/></a>
            <a href="assets/img/kids/kids9.jpg"  data-lightbox="mygallery" ><img src="assets/img/kids/kids9-small.jpg"/></a>
            <a href="assets/img/kids/kids10.jpg"  data-lightbox="mygallery" ><img src="assets/img/kids/kids10-small.jpg"/></a>
        </div>
     
     
      <a href="Order.aspx"><input type="button"  class="kids-form-btn"  value="Book" /></a>
  </div>

    </asp:Content>