<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminlogin1.aspx.cs" Inherits="adminlogin1" Title="Administrator Login Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table cellpadding="4" style=" z-index: 104; left: 535px; width: 360px; position: absolute; top: 142px; height: 324px; ">
        <tr>
            <td style="width: 100px;
                ">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White"
                    Style="z-index: 100; left: 24px; position: absolute; top: 96px; height: 34px; width: 144px;" Text="Admin Name" Font-Italic="True" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="txtadmin" runat="server" Style="z-index: 101; left: 153px; position: absolute;
                    top: 96px" TabIndex="1" Width="112px" OnTextChanged="txtadmin_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadmin"
                    ErrorMessage="* Please Enter Admin Name" Style="z-index: 102; left: 280px; position: absolute;
                    top: 101px; width: 219px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 103;
                    left: 23px; position: absolute; top: 143px" Text="Password" Width="76px" Font-Italic="True" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="txtadminpwd" runat="server" Style="z-index: 104; left: 153px; position: absolute;
                    top: 142px" TabIndex="2" TextMode="Password" Width="112px" OnTextChanged="txtadminpwd_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtadminpwd"
                    ErrorMessage="* Please Enter Password" Style="z-index: 105; left: 280px; position: absolute;
                    top: 149px; width: 198px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:Button ID="btnlogin" runat="server" Font-Bold="True" ForeColor="#400000" OnClick="Button1_Click"
                    Style="z-index: 106; left: 126px; position: absolute; top: 193px; " TabIndex="3"
                    Text="Login" Font-Italic="True" />
                &nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" ForeColor="#400000" Style="z-index: 109; left: 22px;
                    position: absolute; top: 237px; width: 139px; height: 21px;" Text="Forgot Password?" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                <asp:Label ID="Label1" runat="server" ForeColor="#400000" Style="z-index: 109; left: 22px;
                    position: absolute; top: 271px; width: 139px; height: 21px;" Text="Go To Homepage" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Black" NavigateUrl="~/admin forgot1.aspx"
                    Style="z-index: 110; left: 176px; position: absolute; top: 236px" TabIndex="4"
                    Width="100px" Font-Bold="True" Font-Italic="True" Font-Size="Large">Click Here</asp:HyperLink>
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="25pt" ForeColor="White"
                    Style="z-index: 112; left: 15px; position: absolute; top: 31px; text-align: center; width: 266px;" Text="Administrator Login" Font-Italic="True" Font-Names="Monotype Corsiva" Font-Underline="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br /><asp:HyperLink ID="HyperLink1" runat="server"  Font-Bold="True" Font-Size="Large"
        ForeColor="Black" Style="z-index: 104; left: 711px; position: absolute; top: 412px; width: 97px;" NavigateUrl="~/Default.aspx" Font-Italic="True" Font-Underline="True" >Click Here</asp:HyperLink>
    <asp:Label ID="lblmsg" runat="server" Height="47px" Style="z-index: 101; left: 541px;
        position: absolute; top: 446px; width: 364px;" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

