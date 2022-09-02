<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="product updated.aspx.cs" Inherits="product_added" Title="product updated" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/right1.png" Style="z-index: 101;
        left: 508px; position: absolute; top: 207px; height: 70px; width: 70px;" />
    
   <asp:Label ID="lblmsg" runat="server" Font-Size="25pt" Style="z-index: 100;
        left: 574px; position: absolute; top: 225px; height: 41px; width: 340px;" Font-Names="Agency FB" ForeColor="White"></asp:Label>
    <asp:Label ID="Label1" runat="server" Font-Size="25pt" Style="z-index: 100;
        left: 278px; position: absolute; top: 265px; height: 50px; width: 807px;" Font-Names="Agency FB" ForeColor="White"></asp:Label>
    <br />
   <asp:HyperLink ID="HyperLink1" runat="server"  Font-Bold="True" Font-Size="Large"
        ForeColor="Black" Style="z-index: 104; left: 748px; position: absolute; top: 356px; width: 97px;" NavigateUrl="~/vendor.aspx" Font-Italic="True" Font-Underline="True" >Click Here</asp:HyperLink>
    <br /><asp:Label ID="Label2" runat="server" ForeColor="#400000" Style="z-index: 109; left: 523px;
                    position: absolute; top: 356px; width: 172px; height: 21px;" Text="Go To Your Mainpage" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="Large"
        ForeColor="Black" NavigateUrl="~/update product.aspx" Style="z-index: 102; left: 748px;
        position: absolute; top: 321px; text-align: center" Width="84px" TabIndex="4" Font-Italic="True">Click Here</asp:HyperLink>
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 103;
        left: 523px; position: absolute; top: 321px; height: 27px;" Text="To Update Another Product" Font-Italic="True" ForeColor="#400000"></asp:Label>
        </asp:Content>

