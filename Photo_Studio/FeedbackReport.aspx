<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminSection.Master" CodeBehind="FeedbackReport.aspx.cs" Inherits="Photo_Studio.FeedbackReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

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
    
    <div class="feedbackreport-section">
      <h1>Feedbacks Report</h1>
      
     
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
      <a href="#"><input type="button"  class="feedbackreport-form-btn"  value="Refresh" /></a>
  </div>



    </asp:Content>