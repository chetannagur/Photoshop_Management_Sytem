<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminSection.Master" CodeBehind="AdminMain.aspx.cs" Inherits="Photo_Studio.AdminMain" %>


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

     
     <div class="adminmain-section">
        <h1>Admin Section</h1>
        <form class="adminmain-form"  runat="server" >
           
            <div class="adminmainfirst">
                
                <a href="ViewContact.aspx"><input type="button"  class="adminmain-form-btn"  value="View Contacts" /></a>
                <a href="ViewFeedback.aspx"><input type="button"  class="adminmain-form-btn"  value=" View Feedbacks " /></a>
                <a href="ViewOrder.aspx"><input type="button"  class="adminmain-form-btn"  value="   View   Order   " /></a>
                <a href="ViewCustomer.aspx"><input type="button"  class="adminmain-form-btn"  value=" View Customers " /></a>
            </div>
           
            <div class="adminmainsecond">
                <a href="AddGallery.aspx"><input type="button"  class="adminmain-form-btn"  value="Add Cameraman" /></a>
                <a href="FeedbackReport.aspx"><input type="button"  class="adminmain-form-btn"  value="Feedback Reports" /></a>
                <asp:Button ID="Button1" runat="server" class="adminmain-form-btn" Text="Order Report" OnClick="Button1_Click" />
                <a href="CustomerReport.aspx"><input type="button"  class="adminmain-form-btn"  value="Customer Report" /></a>
           
             </div>
            <a href="#"><input type="button"  class="adminmain-form-btn9"  value="Log Out" /></a>

        </form>
    </div>
    </asp:Content>