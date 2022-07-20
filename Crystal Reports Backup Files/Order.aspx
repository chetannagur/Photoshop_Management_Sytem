<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserFront.Master" CodeBehind="Order.aspx.cs" Inherits="Photo_Studio.Order" %>


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

    <div class="order-section">
      <h1>Place Your Order</h1>
        <div>
            Select Event:-
            <br />
            <asp:DropDownList ID="drpcat" runat="server" Height="16px" Width="129px" AutoPostBack="True">
                <asp:ListItem Enabled="false">Select Category</asp:ListItem>
                <asp:ListItem>Wedding</asp:ListItem>
                <asp:ListItem>Engagement</asp:ListItem>
                <asp:ListItem>Pre Wedding</asp:ListItem>
                <asp:ListItem>Birthday</asp:ListItem>
                <asp:ListItem>Kids</asp:ListItem>
                <asp:ListItem>Maternity</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
            Date:
            <br />
            <asp:TextBox ID="txtdate" runat="server" TextMode="Date" OnTextChanged="txtdate_TextChanged" ></asp:TextBox> <asp:Label ID="lblerr" runat="server" Text=""></asp:Label>
            <br />
             Time:
            <br />
            <asp:TextBox ID="txttime" runat="server" TextMode="Time"></asp:TextBox>
            <br />
            Name:-
            <br />
            <asp:Label ID="lblname" runat="server" Text=""></asp:Label>
            <br />
            Email:-
            <br />
            <asp:Label ID="lblemail" runat="server" Text=""></asp:Label>
            <br />
            Contact No:-
            <br />
            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
            <br />
            Address:-
            <br />
            <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            City
            <br />
            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            <br />
           Photographer Name:-
            <asp:Label ID="lblphotoname" runat="server" Text=""></asp:Label>
            <br />
           Photographer Contact Number:-
            <asp:Label ID="lblphotocontact" runat="server"  Text=""></asp:Label>
            <br />
        Amount
            <asp:Label ID="lblamnt" runat="server"  Text=""></asp:Label>
            <br />
             <asp:Button ID="Button1" runat="server" class="order-form-btn"  Text="Submit" OnClick="Button1_Click" />
        </div>
       
  </div>







    </asp:Content>