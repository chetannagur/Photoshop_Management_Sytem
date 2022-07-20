<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserFront.Master" CodeBehind="Engagement.aspx.cs" Inherits="Photo_Studio.Engagement" %>


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
    <div class="engagement-section">
      <h1>Engagement</h1>
      <div class="gallary">
        <a href="assets/img/engagement/eng1.jpg"  data-lightbox="mygallery" ><img src="assets/img/engagement/eng1-small.jpg"/></a>
        <a href="assets/img/engagement/eng2.jpg"  data-lightbox="mygallery" ><img src="assets/img/engagement/eng2-small.jpg"/></a>
        <a href="assets/img/engagement/eng3.jpg"  data-lightbox="mygallery" ><img src="assets/img/engagement/eng3-small.jpg"/></a>
        <a href="assets/img/engagement/eng4.jpg"  data-lightbox="mygallery" ><img src="assets/img/engagement/eng4-small.jpg"/></a>
        <a href="assets/img/engagement/eng5.jpg"  data-lightbox="mygallery" ><img src="assets/img/engagement/eng5-small.jpg"/></a>
        <a href="assets/img/engagement/eng6.jpg"  data-lightbox="mygallery" ><img src="assets/img/engagement/eng6-small.jpg"/></a>
        <a href="assets/img/engagement/eng7.jpg"  data-lightbox="mygallery" ><img src="assets/img/engagement/eng7-small.jpg"/></a>
        <a href="assets/img/engagement/eng8.jpg"  data-lightbox="mygallery" ><img src="assets/img/engagement/eng8-small.jpg"/></a>
        <a href="assets/img/engagement/eng9.jpg"  data-lightbox="mygallery" ><img src="assets/img/engagement/eng9-small.jpg"/></a>
        <a href="assets/img/engagement/eng10.jpg"  data-lightbox="mygallery" ><img src="assets/img/engagement/eng10-small.jpg"/></a>
     </div>
      <a href="#"><input type="button"  class="engagement-form-btn"  value="Show More" /></a>
  </div>

    </asp:Content>