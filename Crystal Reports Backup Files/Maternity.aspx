<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/UserFront.Master" CodeBehind="Maternity.aspx.cs" Inherits="Photo_Studio.Maternity" %>

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
    <div class="maternity-section">
      <h1>Maternity</h1>
      <div class="gallary">
         <a href="assets/img/mat/mat1.jpg"  data-lightbox="mygallery" ><img src="assets/img/mat/mat1-small.jpg"/></a>
         <a href="assets/img/mat/mat2.jpg"  data-lightbox="mygallery" ><img src="assets/img/mat/mat2-small.jpg"/></a>
          <a href="assets/img/mat/mat3.jpg"  data-lightbox="mygallery" ><img src="assets/img/mat/mat3-small.jpg"/></a>
          <a href="assets/img/mat/mat4.jpg"  data-lightbox="mygallery" ><img src="assets/img/mat/mat4-small.jpg"/></a>
          <a href="assets/img/mat/mat5.jpg"  data-lightbox="mygallery" ><img src="assets/img/mat/mat5-small.jpg"/></a>
          <a href="assets/img/mat/mat6.jpg"  data-lightbox="mygallery" ><img src="assets/img/mat/mat6-small.jpg"/></a>
          <a href="assets/img/mat/mat7.jpg"  data-lightbox="mygallery" ><img src="assets/img/mat/mat7-small.jpg"/></a>
          <a href="assets/img/mat/mat8.jpg"  data-lightbox="mygallery" ><img src="assets/img/mat/mat8-small.jpg"/></a>
          <a href="assets/img/mat/mat9.jpg"  data-lightbox="mygallery" ><img src="assets/img/mat/mat9-small.jpg"/></a>
          <a href="assets/img/mat/mat10.jpg"  data-lightbox="mygallery" ><img src="assets/img/mat/mat10-small.jpg"/></a>
         
        </div>
     
     
      <a href="#"><input type="button"  class="maternity-form-btn"  value="Show More" /></a>
  </div>

    </asp:Content>