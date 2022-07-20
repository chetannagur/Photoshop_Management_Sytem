<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/AdminSection.Master" CodeBehind="ViewOrder.aspx.cs" Inherits="Photo_Studio.ViewOrder" %>

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
    
    <form id="form1" runat="server">
    <div class="vieworder-section">
      <h1>View Orders</h1>
      <div class="vos">
          <asp:GridView ID="GridView1"  runat="server" Height="118px" Width="1225px"></asp:GridView>


      </div>
     
        <asp:Label ID="lbldate" Visible="false" runat="server" Text=""></asp:Label>
      <a href="#"><input type="button"  class="vieworder-form-btn"  value="Refresh" /></a>
  </div>



    </form>



    </asp:Content>