<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminSection.Master"  CodeBehind="ViewFeedback.aspx.cs" Inherits="Photo_Studio.ViewFeedback" %>

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
    <div class="viewfeedback-section">
      <h1>View Feedbacks</h1>
      <div class="vfs">
        <asp:ListView ID="ListView1"  runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                feedback:
                <asp:Label ID="feedbackLabel" runat="server" Text='<%# Eval("feedback") %>' />
                <br />
                date:
                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                feedback:
                <asp:TextBox ID="feedbackTextBox" runat="server" Text='<%# Bind("feedback") %>' />
                <br />
                date:
                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />feedback:
                <asp:TextBox ID="feedbackTextBox" runat="server" Text='<%# Bind("feedback") %>' />
                <br />date:
                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                feedback:
                <asp:Label ID="feedbackLabel" runat="server" Text='<%# Eval("feedback") %>' />
                <br />
                date:
                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                 
                <div style="">
                    <asp:DataPager class="priviousnext" ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                feedback:
                <asp:Label ID="feedbackLabel" runat="server" Text='<%# Eval("feedback") %>' />
                <br />
                date:
                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
  </div>
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photodb %>" SelectCommand="SELECT [name], [feedback], [date] FROM [feedback] ORDER BY [id] DESC"></asp:SqlDataSource>
     
        <asp:Button ID="Button1" runat="server" class="viewfeedback-form-btn"  Text="Refresh" OnClick="Button1_Click" />
  </div>



    </form>



    </asp:Content>