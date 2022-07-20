<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/AdminSection.Master" CodeBehind="ViewContact.aspx.cs" Inherits="Photo_Studio.ViewContact" %>

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
    
    <div class="viewcontact-section">
      <h1>View Contacts</h1>
        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="123px" Width="1345px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="query" HeaderText="query" SortExpression="query" />
                    <asp:BoundField DataField="date" HeaderText="date" DataFormatString="{0:dd-MM-yyyy}"  SortExpression="date" />
                </Columns>


            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photodb %>" SelectCommand="SELECT [id], [email], [name], [query], [date] FROM [contact] ORDER BY [id] DESC"></asp:SqlDataSource>
        </div>
      
     <div>
         <asp:Panel ID="Panel1" Visible="false" runat="server" Height="241px">
              <asp:TextBox ID="txtemail" runat="server" class="reply-email" Height="37px" placeholder=" Email " Width="276px"></asp:TextBox>
             <asp:TextBox ID="TextBox1" class="reply-text" placeholder="Give Reply" TextMode="MultiLine" runat="server"  Height="85px" Width="474px"></asp:TextBox>
             <asp:Button ID="Button1" class="viewcontact-form-btn" runat="server" Text="Send" OnClick="Button1_Click" />
         </asp:Panel>
         <asp:Label ID="Label1"   runat="server" Text=""></asp:Label>
         
     </div>
     
      
  </div>

       



    </form>




     <div class="zero">
     
    </div>
    </asp:Content>
