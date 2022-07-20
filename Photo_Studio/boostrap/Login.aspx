<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Login.aspx.vb" Inherits="Photo_Studio.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<div>
    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br>
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br>
    <asp:Button ID="Button1" runat="server" Text="Log in" />
    <asp:Button ID="Button2" runat="server" Text="Sign in" /><br>
    <a href="#">Forgot Password</a>
</div>
</asp:Content>
