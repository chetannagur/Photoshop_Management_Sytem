<%@ Page Title="" Language="C#" MasterPageFile="~/UserFront.Master" AutoEventWireup="true" CodeBehind="invoice.aspx.cs" Inherits="Photo_Studio.invoice" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        
        .auto-style1 {
            width: 100%;
            border:double;
        }
        .auto-style4 {
        }
                
        .auto-style6 {
            text-align: right;
            font-size: medium;
            width: 794px;
            height: 87px;
             border-top:solid;
             border-bottom:solid;
        }
        .auto-style7 {
        }
        .auto-style8 {
            width: 794px;
            height: 20px;
        }
        .auto-style9 {
            height: 20px;
        }
        .auto-style10 {
            text-align: left;
            font-size: medium;
            width: 793px;
            height: 87px;
             border-top:solid;
             border-bottom:solid;
        }
        
        .auto-style11 {
            height: 60px;
        }
        .auto-style12 {
            width: 794px;
            height: 60px;
        }
        .auto-style13 {
            height: 45px;
             border-top:solid;
             border-bottom:solid;
        }
        .auto-style14 {
            width: 794px;
            height: 45px;
            border-top:solid;
            border-bottom:solid;
        }
        
        .auto-style15 {
            font-size: medium;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="invoice-section">
      <h1> Invoice</h1>
       <div>
           <asp:Panel class="invoice-panel" ID="Panel1" runat="server">
              
                   <table class="auto-style1" border="0" style="border-style: double">
                      
                       <tr>
                           <td class="auto-style4" colspan="2"><h3>Crytal Photography:Photos You'll Love... </h3></td>
                           
                       </tr>
                       <tr>
                           <td class="auto-style10"><strong>Customer Name:&nbsp; &nbsp;
                               <asp:Label ID="lblname" runat="server" ></asp:Label>
                               &nbsp;</strong></td>
                           <td class="auto-style6"><strong>Date:&nbsp;<asp:Label ID="lblcdate" runat="server" ></asp:Label>
                               </strong></td>
                       </tr>
                  
              
             
                       <tr>
                           <td class="auto-style11"><b>Customer Email&nbsp; :&nbsp; </b> <strong>
                               <asp:Label ID="lblemail" runat="server" ></asp:Label>
                               </strong></td>
                           <td class="auto-style12"><b>Event : </b> <strong>
                               <asp:Label ID="lblcat" runat="server" ></asp:Label>
                               </strong></td>
                       </tr>
                       <tr>
                           <td class="auto-style11"><b>Customer Contact: </b> <strong>
                               <asp:Label ID="lblcontact" runat="server" ></asp:Label>
                               </strong></td>
                           <td class="auto-style12"><b>Event Date : </b> <strong>
                               <asp:Label ID="lbldate" runat="server" ></asp:Label>
                               </strong><b>&nbsp;</b></td>
                       </tr>
                       <tr>
                           <td class="auto-style11"><b>Event Address: </b> <strong>
                               <asp:Label ID="lbladd" runat="server" ></asp:Label>
                               </strong></td>
                           <td class="auto-style12"><b>Event Time: </b> <strong>
                               <asp:Label ID="lbltime" runat="server" ></asp:Label>
                               </strong></td>
                       </tr>
                       <tr>
                           <td class="auto-style11"><b>City: </b> <strong>
                               <asp:Label ID="lblcity" runat="server" ></asp:Label>
                               </strong></td>
                           <td class="auto-style12"><b>Amount: </b> <strong>
                               <asp:Label ID="lblamnt" runat="server" ></asp:Label>
                               </strong></td>
                       </tr>
                       <tr>
                           <td class="auto-style11"><b>Phographer Name : </b> <strong>
                               <asp:Label ID="lblpname" runat="server" ></asp:Label>
                               </strong></td>
                           <td class="auto-style12"></td>
                       </tr>
                       <tr>
                           <td class="auto-style11"><b>Photographer Contact: </b> <strong>
                               <asp:Label ID="lblpcontact" runat="server" ></asp:Label>
                               </strong></td>
                           <td class="auto-style12"></td>
                       </tr>
                       
                       <tr>
                           <td class="auto-style9"></td>
                           <td class="auto-style8"></td>
                       </tr>
                       <tr>
                           <td class="auto-style13"><strong>Total</strong></td>
                           <td class="auto-style14">&nbsp;<strong><asp:Label ID="lbltotal" runat="server" ></asp:Label>
                               </strong></td>
                       </tr>
                       <tr>
                           <td class="auto-style7" colspan="2">
                               <br />
                               <strong><span class="auto-style15">crystle4143@gmail.com</span></strong></td>
                       </tr>
                   </table>

           </asp:Panel>
       </div>
        <asp:Button ID="Button1" runat="server" class="invoice-form-btn"  Text="Download Invoice" OnClick="Button1_Click"  />
        </div>
       
 
</asp:Content>
