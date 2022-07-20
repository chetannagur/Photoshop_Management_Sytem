<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSection.Master" AutoEventWireup="true" CodeBehind="OrderReport.aspx.cs" Inherits="Photo_Studio.OrderReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ToolbarImagesFolderUrl="" ToolPanelView="None" ToolPanelWidth="200px" Width="1104px"  />
    </form>
</asp:Content>

