<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin forgot1.aspx.cs" Inherits="admin_forgot1" Title="Administrator Forgot Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/adminlogin1.aspx"
                    Style="z-index: 110; left: 581px; position: absolute; top: 169px" TabIndex="4"
                    Width="200px" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Names="Arial"><center>Click Here To Login</center></asp:HyperLink>
    <br />
    <br />
    <br />
    <table style="z-index: 101; left: 434px; position: absolute; top: 231px">
        <tr>
            <td style="width: 101px; height: 26px">
                <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: -3px; position: absolute;
                    top: -27px" Text="&lt;center&gt;Please Fill The Following Details To Retrieve Your Password&lt;/center&gt;" Width="500px" Font-Bold="False" Font-Names="Agency FB" Font-Size="25pt" ForeColor="White"></asp:Label>
                </td>
            </tr>
    </table>
    <br />
    <br />
    <br />
    <table style="z-index: 102; left: 548px; position: absolute; top: 303px">
        <tr>
            <td style="width: 101px; height: 26px">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 5px; position: absolute;
                    top: 5px" Text="Admin Name" Width="123px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 100px; height: 26px">
                <asp:TextBox ID="txtadminname" runat="server" Style="z-index: 100; left: 143px; position: absolute;
                    top: 5px" TabIndex="1" Width="112px" OnTextChanged="txtadminname_TextChanged"></asp:TextBox></td>
            <td style="width: 100px; height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtadminname"
                    ErrorMessage="* Please Enter Admin Name" Style="z-index: 100; position :absolute;
                    top: 9px; left: 269px; width: 235px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 101px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
                &nbsp;</td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 101px; height: 21px">
                &nbsp;
                <asp:Label ID="lblsans" runat="server" Style="z-index: 100; left: 5px; position: absolute;
                    top: 58px" Text="KeyWord" Width="123px" Font-Bold="True" Font-Italic="True" Font-Size="Large" Font-Strikeout="False" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 100px; height: 21px">
                &nbsp;
                <asp:TextBox ID="txtkeyword" runat="server" Style="z-index: 100; left: 143px; position: absolute;
                    top: 58px" TabIndex="2" Width="112px"></asp:TextBox>
            </td>
            <td style="width: 100px; height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtkeyword"
                    ErrorMessage="* Please Specify Keyword" Style="z-index: 100; left: 270px; position: absolute;
                    top: 62px; width: 210px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 101px">
                &nbsp;</td>
            <td style="width: 100px">
                &nbsp;</td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 101px; height: 21px">
                <asp:Label ID="lblpwd" runat="server" Style="z-index: 100;position:absolute; left: 19px; 
                    top: 104px" Visible="False" Width="300px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#400000"></asp:Label>
            </td>
            <td style="width: 100px; height: 21px">
                &nbsp;</td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 101px">
            </td>
            <td style="width: 100px">
                &nbsp;</td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 101px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 101px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnsubmit2" runat="server" OnClick="btnsubmit2_Click" Style="font-size: 10pt;
                    z-index: 100; left: 101px; position: absolute; top: 147px" TabIndex="3"
                    Text="Submit" ForeColor="#400000" Font-Bold="True" Font-Italic="True" />
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
   
    <asp:Label ID="lblmsg" runat="server" Height="35px" Style="z-index: 102; left: 536px;
        position: absolute; top: 407px" Width="395px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:Label>
    
</asp:Content>

