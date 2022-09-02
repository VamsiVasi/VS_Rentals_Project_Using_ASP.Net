<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="successregister.aspx.cs" Inherits="successregister" Title="Registered Successfully" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:Label ID="lblmsg" runat="server" Font-Size="25pt" Style="z-index: 100;
        left: 567px; position: absolute; top: 236px; height: 41px; width: 611px;" Font-Names="Agency FB" ForeColor="White"></asp:Label>
   
    <asp:Label ID="Label1" runat="server" Font-Size="25pt" Style="z-index: 100;
        left: 278px; position: absolute; top: 276px; height: 90px; width: 807px;" Font-Names="Agency FB" ForeColor="White"></asp:Label>
    
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/right1.png" Style="z-index: 101;
        left: 503px; position: absolute; top: 218px; height: 70px; width: 70px;" />
  
    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/Default.aspx"
                    Style="z-index: 110; left: 581px; position: absolute; top: 204px" TabIndex="4"
                    Width="200px" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Names="Arial"><center>Click Here To Login</center></asp:HyperLink>
   
</asp:Content>

