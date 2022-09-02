<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="profile edited.aspx.cs" Inherits="successregister" Title="Profile Edited" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:Label ID="lblmsg" runat="server" Font-Size="25pt" Style="z-index: 100;
        left: 567px; position: absolute; top: 222px; height: 41px; width: 611px;" Font-Names="Agency FB" ForeColor="White"></asp:Label>
    &nbsp;
    <br /><asp:Label ID="Label1" runat="server" Font-Size="25pt" Style="z-index: 100;
        left: 278px; position: absolute; top: 262px; height: 46px; width: 807px;" Font-Names="Agency FB" ForeColor="White"></asp:Label>
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/right1.png" Style="z-index: 101;
        left: 503px; position: absolute; top: 204px; height: 70px; width: 70px;" />
  
    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="Large"
        ForeColor="Black" NavigateUrl="~/vendor.aspx" Style="z-index: 102; left: 731px;
        position: absolute; top: 321px; text-align: center" Width="84px" TabIndex="4" Font-Italic="True">Click Here</asp:HyperLink>
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 103;
        left: 540px; position: absolute; top: 321px; height: 27px;" Text="Go To Your Mainpage" Font-Italic="True" ForeColor="#400000"></asp:Label>
   
</asp:Content>

