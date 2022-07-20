<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/UserFront.Master"  CodeBehind="MyOrder.aspx.cs" Inherits="Photo_Studio.MyOrder" %>


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

    <div class="myorder-section">
      <h1>My Orders</h1>
           <div class="zero"></div>

        <div class="mos">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                 <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>Order ID:<asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Customer name:&nbsp;
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("uname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Event:<asp:Label ID="Label3" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Event Date:<asp:Label ID="Label4" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Event Time:<asp:Label ID="Label5" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Event Address:<asp:Label ID="Label6" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Photographer Name:<asp:Label ID="Label7" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Photographer Contact:<asp:Label ID="Label8" runat="server" Text='<%# Eval("pcontact") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" class="myorder-form-btn" runat="server" CommandName="cancel" CommandArgument='<%# Eval("id") %>' Text="Cancel Order" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
       
        </asp:DataList>
        
      
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photodb %>" SelectCommand="SELECT [id], [category], [date], [time], [address], [pname], [pcontact], [uname] FROM [order1] WHERE (([email] = @email) AND ([date] &gt; convert(date,getdate())))">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="Email" Type="String" />
                
            </SelectParameters>
        </asp:SqlDataSource>
        
     </div>
       
        
      
  </div>



 


    </asp:Content>