<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.Master"  CodeBehind="SignIn.aspx.cs" Inherits="Photo_Studio.SignIn" %>

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

    <div class="signin-section">
        <h1>Sign In Form</h1>
      
            
            <asp:TextBox ID="txtname" runat="server" class="signin-form-text" placeholder="Enter Your Name....."></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtemail" runat="server" class="signin-form-text" placeholder="Enter Email-ID....."></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Right Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtpass" runat="server" class="signin-form-text" TextMode="Password"  placeholder="Enter Password"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpass" ErrorMessage="Password Should be 6 to 10 char" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{6,10}$"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtcnfmpass" runat="server" class="signin-form-text" TextMode="Password" placeholder="Re-Enter Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not Match" ControlToCompare="txtpass" ControlToValidate="txtcnfmpass" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
            <asp:TextBox ID="txtcontact" runat="server" class="signin-form-text" placeholder="Enter Contact No....."></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtcontact" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtaddress" runat="server" class="signin-form-text" placeholder="Enter Your Address....."></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
             <asp:TextBox ID="txtcity" runat="server" class="signin-form-text" placeholder="Enter Your City....."></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcity" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            <a href="UserLogin.aspx"><input type="button" class="signin-form-btn" value="Log In" /></a>
            <asp:Button ID="Button2" runat="server" Text="Sign In" class="signin-form-btn1" OnClick="Button2_Click" />

      
    </div>

    </asp:Content>