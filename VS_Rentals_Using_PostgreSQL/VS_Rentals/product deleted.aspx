<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="product deleted.aspx.cs" Inherits="failbooking" Title="product deleted" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/right1.png" Style="z-index: 101;
        left: 340px; position: absolute; top: 228px; height: 70px; width: 70px;" />
    <asp:Label ID="Label1" runat="server" Font-Bold="False" ForeColor="White"
        Style="z-index: 104; left: 407px; position: absolute; top: 246px; height: 41px; width: 824px;" Font-Italic="False" Font-Names="Agency FB" Font-Size="25pt"></asp:Label>
   <asp:HyperLink ID="HyperLink2" runat="server"  Font-Bold="True" Font-Size="Large"
        ForeColor="Black" Style="z-index: 104; left: 751px; position: absolute; top: 335px; width: 97px;" NavigateUrl="~/vendor.aspx" Font-Italic="True" Font-Underline="True" >Click Here</asp:HyperLink>
    <br /><asp:Label ID="Label3" runat="server" ForeColor="#400000" Style="z-index: 109; left: 520px;
                    position: absolute; top: 335px; width: 172px; height: 23px;" Text="Go To Your Mainpage" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large"
        ForeColor="Black" NavigateUrl="~/deleteproduct.aspx" Style="z-index: 102; left: 751px;
        position: absolute; top: 300px; text-align: center" Width="84px" TabIndex="4" Font-Italic="True">Click Here</asp:HyperLink>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 103;
        left: 520px; position: absolute; top: 300px; height: 27px;" Text="To Delete Another Product" Font-Italic="True" ForeColor="#400000"></asp:Label>
  
</asp:Content>

