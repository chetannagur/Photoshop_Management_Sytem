<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserFront.Master" CodeBehind="Feedback.aspx.cs" Inherits="Photo_Studio.Feedback" %>


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

     <div class="feedback-section">
        <h1>Take Your Feedback</h1>
          <asp:Label ID="lbldate" Visible="false" runat="server" Text=""></asp:Label>
         <asp:Label ID="lblname" Visible="false" runat="server" Text=""></asp:Label>
         <asp:TextBox class="feedback-form-text" Visible="false" placeholder="Enter Ur Email ID"  ID="txtemail" runat="server"></asp:TextBox>
          
         <asp:TextBox ID="txtfeed" class="feedback-form-text" placeholder="Write Your Feedback......." TextMode="MultiLine" runat="server"></asp:TextBox>
            
         <asp:Button class="feedback-form-btn"  ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

    </div>


    </asp:Content>