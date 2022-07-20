<%@ Page Title="" Language="C#" MasterPageFile="~/UserFront.Master" AutoEventWireup="true" CodeBehind="confirmbooking.aspx.cs" Inherits="Photo_Studio.confirmbooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="confirm-section">
         
          <asp:Label ID="lblcdate" Class="confirmdate" runat="server" Text="Label"></asp:Label>
      <h1>Confirm Your Order</h1>
         <div class="cs">
              Name:
             <br />
             <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
              <br />
              Email:
              <br />
             <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
             <br />
              Contact:
             <br />
             <asp:Label ID="lblcontact" runat="server" Text="Label"></asp:Label>
             <br />
             Category:
             <br />
             <asp:Label ID="lblcat" runat="server" Text="Label"></asp:Label>
             <br />
             Date:
             <br />
             <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
             <br />
             Time:
             <br />
             <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
             <br />
             Address
             <br />
             <asp:Label ID="lbladd" runat="server" Text="Label"></asp:Label>
             <br />
             City:
             <br />
             <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
             <br />
             Ammount
             <br />
             <asp:Label ID="lblamnt" runat="server" Text="Label"></asp:Label>
             <br />
             Photographer Name:
             <br />
             <asp:Label ID="lblpname" runat="server" Text="Label"></asp:Label>
             <br />
             Photographer Contact
             <br />
             <asp:Label ID="lblpcontact" runat="server" Text="Label"></asp:Label>
             <br />
         </div>
         <asp:Button ID="Button1" runat="server" class="confirm-btn" Text="Submit" OnClientClick="return confirm('Confirm Booking ?');"  OnClick="Button1_Click" />
        
         </div>
</asp:Content>
