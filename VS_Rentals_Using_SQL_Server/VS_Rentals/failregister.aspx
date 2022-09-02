<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="failregister.aspx.cs" Inherits="failregister" Title="Registration Failed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:Label ID="Label2" runat="server" Font-Bold="False" ForeColor="White"
        Style="z-index: 104; left: 408px; position: absolute; top: 207px; height: 124px; width: 549px;" Text="&lt;center&gt;Registration Failed.&lt;br&gt;Choose Valid User Name,&lt;br&gt;Mobile No, Email Id And Alternate Email Id.&lt;/center&gt;" Font-Italic="False" Font-Names="Agency FB" Font-Size="25pt"></asp:Label>
    
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/wrong.png" Style="z-index: 101;
        left: 514px; position: absolute; top: 194px; height: 70px; width: 70px;" />
    <br /><asp:HyperLink ID="HyperLink2" runat="server"  Font-Bold="True" Font-Size="Large"
        ForeColor="Black" Style="z-index: 104; left: 713px; position: absolute; top: 376px; width: 97px;" NavigateUrl="~/Default.aspx" Font-Italic="True" Font-Underline="True" >Click Here</asp:HyperLink>
    <br /><asp:Label ID="Label3" runat="server" ForeColor="#400000" Style="z-index: 109; left: 558px;
                    position: absolute; top: 376px; width: 139px; height: 21px;" Text="Go To Homepage" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large"
        ForeColor="Black" NavigateUrl="~/signup.aspx" Style="z-index: 102; left: 713px;
        position: absolute; top: 341px; text-align: center" Width="84px" TabIndex="4" Font-Italic="True">Click Here</asp:HyperLink>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 103;
        left: 558px; position: absolute; top: 341px; height: 27px;" Text="Go To Sign Up" Font-Italic="True" ForeColor="#400000"></asp:Label>
   </asp:Content>