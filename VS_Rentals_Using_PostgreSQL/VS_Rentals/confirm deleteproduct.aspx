<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="confirm deleteproduct.aspx.cs" Inherits="unregister" Title="Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   
   <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 100;
                    left: 488px; position: absolute; top: 125px;  text-align: center; height: 43px;"
                    Text="Delete Products" Width="390px" Font-Names="Agency FB" Font-Size="25pt" Font-Underline="False"></asp:Label>
    <asp:Button ID="Button1" runat="server" ForeColor="#400000" Height="27px" OnClick="Button1_Click"
        Style="z-index: 101; left: 756px; position: absolute; top: 318px" Text="No" Width="66px" TabIndex="5" Font-Bold="True" Font-Italic="True" Font-Size="Medium" />
  
    <asp:Button ID="Button2" runat="server" ForeColor="#400000" Height="26px" OnClick="Button2_Click"
        Style="z-index: 104; left: 544px; position: absolute; top: 319px" Text="Yes"
        Width="66px" TabIndex="4" Font-Bold="True" Font-Italic="True" Font-Size="Medium" />
   
    <asp:Label ID="Label1" runat="server" Font-Bold="False" ForeColor="White"
        Style="z-index: 104; left: 278px; position: absolute; top: 226px; height: 46px; width: 807px;" Font-Italic="False" Font-Names="Agency FB" Font-Size="25pt"></asp:Label>
       
</asp:Content>

