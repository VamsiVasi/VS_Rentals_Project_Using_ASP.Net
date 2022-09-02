<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="addfailed.aspx.cs" Inherits="addfailed" Title="adding Failed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:Label ID="Label2" runat="server" Font-Bold="False" ForeColor="White"
        Style="z-index: 104; left: 408px; position: absolute; top: 227px; height: 81px; width: 549px;" Text="&lt;center&gt;Error In Adding Your Product.&lt;br&gt;Please Choose A Valid Product Id.&lt;/center&gt;" Font-Italic="False" Font-Names="Agency FB" Font-Size="25pt"></asp:Label>
    
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/wrong.png" Style="z-index: 101;
        left: 461px; position: absolute; top: 214px; height: 70px; width: 70px;" />
    <br /><asp:HyperLink ID="HyperLink2" runat="server"  Font-Bold="True" Font-Size="Large"
        ForeColor="Black" Style="z-index: 104; left: 748px; position: absolute; top: 356px; width: 97px;" NavigateUrl="~/vendor.aspx" Font-Italic="True" Font-Underline="True" >Click Here</asp:HyperLink>
    <br /><asp:Label ID="Label3" runat="server" ForeColor="#400000" Style="z-index: 109; left: 523px;
                    position: absolute; top: 356px; width: 172px; height: 21px;" Text="Go To Your Mainpage" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large"
        ForeColor="Black" NavigateUrl="~/add product.aspx" Style="z-index: 102; left: 748px;
        position: absolute; top: 321px; text-align: center" Width="84px" TabIndex="4" Font-Italic="True">Click Here</asp:HyperLink>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 103;
        left: 523px; position: absolute; top: 321px; height: 27px;" Text="To Add Your Product Again" Font-Italic="True" ForeColor="#400000"></asp:Label>
   </asp:Content>