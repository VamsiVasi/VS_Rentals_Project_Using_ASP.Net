<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="informbooking.aspx.cs" Inherits="informbooking" Title="Booking Success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/right1.png" Style="z-index: 101;
        left: 480px; position: absolute; top: 207px; height: 70px; width: 70px;" />
    
   <asp:Label ID="lblmsg" runat="server" Font-Size="25pt" Style="z-index: 100;
        left: 546px; position: absolute; top: 225px; height: 41px; width: 340px;" Font-Names="Agency FB" ForeColor="White"></asp:Label>
    <asp:Label ID="Label1" runat="server" Font-Size="25pt" Style="z-index: 100;
        left: 278px; position: absolute; top: 265px; height: 90px; width: 807px;" Font-Names="Agency FB" ForeColor="White"></asp:Label>
    <asp:HyperLink ID="HyperLink2" runat="server"  Font-Bold="True" Font-Size="Large"
        ForeColor="Black" Style="z-index: 104; left: 713px; position: absolute; top: 357px; width: 97px;" NavigateUrl="~/Default.aspx" Font-Italic="True" Font-Underline="True" >Click Here</asp:HyperLink>
    <br /><asp:Label ID="Label3" runat="server" ForeColor="#400000" Style="z-index: 109; left: 558px;
                    position: absolute; top: 357px; width: 139px; height: 21px;" Text="Go To Homepage" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
   
        </asp:Content>

