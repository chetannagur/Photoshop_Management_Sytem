<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/AdminSection.Master" CodeBehind="ViewCustomer.aspx.cs" Inherits="Photo_Studio.ViewCustomer" %>

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
    <div class="viewcustomer-section">
      <h1>View Customers</h1>
        <asp:TextBox ID="TextBox1" Class="deleteid" placeholder="Enter id....." runat="server" Width="462px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server"  class="viewcustomer-form-btn"  Text="Delete" OnClick="Button1_Click" /> 
      <div class="vcs" >
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" Height="118px" Width="1225px">
              <Columns>
                  <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                  <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                  <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                  <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                  <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                  <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                  <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
              </Columns>
          </asp:GridView>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photodb %>" SelectCommand="SELECT [id], [name], [email], [password], [contact], [address], [city] FROM [user1]"></asp:SqlDataSource>
        
          
            
      </div>
     
     <asp:Button ID="Button2" runat="server"  class="viewcustomer-form-btn2"  Text="Refresh" OnClick="Button1_Click" /> 
  </div>



    </form>



    </asp:Content>