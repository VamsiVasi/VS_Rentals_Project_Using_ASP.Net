<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="feedbacksubmit.aspx.cs" Inherits="feedbacksubmit" Title="Feedback Posted" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:Label ID="Label2" runat="server" Font-Bold="False" ForeColor="White"
        Style="z-index: 104; left: 453px; position: absolute; top: 263px; height: 47px; width: 549px;" Text="&lt;center&gt;Thanks For Your Valuable Feedback.&lt;/center&gt;" Font-Italic="False" Font-Names="Agency FB" Font-Size="25pt"></asp:Label>
   <asp:Image ID="Image1" runat="server" ImageUrl="~/images/thanks13.png" Style="z-index: 101;
        left: 454px; position: absolute; top: 245px; height: 80px; width: 80px;" />
    
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Font-Underline="True" ForeColor="Black" NavigateUrl="~/Default.aspx" Style="z-index: 104; left: 713px; position: absolute; top: 323px; width: 97px;">Click Here</asp:HyperLink>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#400000" Style="z-index: 109; left: 558px;
                    position: absolute; top: 323px; width: 139px; height: 21px;" Text="Go To Homepage"></asp:Label>
   
</asp:Content>

