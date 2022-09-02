<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="User Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />

    <table style="z-index: 101; left: 434px; position: absolute; top: 231px">
        <tr>
            <td style="width: 101px; height: 26px">
                <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: -4px; position: absolute;
                    top: -79px" Text="&lt;center&gt;Please Fill The Following Details :&lt;/center&gt;" Width="500px" Font-Bold="False" Font-Names="Agency FB" Font-Size="25pt" ForeColor="White"></asp:Label>
                </td>
            </tr>
    </table>
    
    <table style="z-index: 102; left: 500px; position: absolute; top: 238px; width: 359px; height: 277px;">
        <tr>
            <td style="width: 101px; height: 26px">
    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 5px; position: absolute;
                    top: 5px" Text="Name" Width="123px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>                   
            <td style="width: 100px; height: 26px">
    <asp:TextBox ID="txtfeedname" runat="server" Style="z-index: 100; left: 109px; position: absolute;
                    top: 5px" TabIndex="1" Width="237px" ></asp:TextBox>
                </td>
            <td style="width: 100px; height: 26px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfeedname"
        ErrorMessage="* Please Enter Your Name"  Style="z-index: 100; position :absolute;
                    top: 10px; left: 361px; width: 206px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
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
            <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 5px; position: absolute;
                    top: 58px" Text="Email Id" Width="123px" Font-Bold="True" Font-Italic="True" Font-Size="Large" Font-Strikeout="False" ForeColor="White"></asp:Label>
    </td>
            <td style="width: 100px; height: 21px">
                &nbsp;
            <asp:TextBox ID="txtfeedemail" runat="server" Style="z-index: 100; left: 109px; position: absolute;
                    top: 58px" TabIndex="2" Width="237px"></asp:TextBox>
                </td>
            <td style="width: 100px; height: 21px">
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Please Enter Email Id" ControlToValidate="txtfeedemail" Style="z-index:auto;position:absolute; top: 62px; left: 361px; width: 192px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtfeedemail"
        ErrorMessage="* Please Enter A Valid Email Id" Style="z-index: 100; left: 361px; position: absolute;
                    top: 62px; width: 250px;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RegularExpressionValidator></td>
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
                <asp:Label ID="Label3" runat="server"  Style="z-index: 100; left: 5px; position: absolute;
                    top: 104px" Text="Feedback" Width="123px" Font-Bold="True" Font-Italic="True" Font-Size="Large" Font-Strikeout="False" ForeColor="White"></asp:Label>
    </td>
            <td style="width: 100px; height: 21px">
    <asp:TextBox ID="txtfeedback" runat="server" Height="73px" Style="z-index: 110;
        left: 109px; position: absolute; top: 108px" TextMode="MultiLine" Width="237px" TabIndex="6"></asp:TextBox>
    </td>
    <td style="width: 100px; height: 21px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfeedback"
        ErrorMessage="* Please Enter Feedback" Style="z-index: 111; left: 362px; position: absolute;
        top: 141px; width: 191px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
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
            <asp:Button ID="Button1" runat="server" Style="font-size: 10pt;
                    z-index: 100; left: 142px; position: absolute; top: 213px" TabIndex="3"
                    Text="Submit" ForeColor="#400000" Font-Bold="True" Font-Italic="True" OnClick="Button1_Click1" />
    </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
                
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br /><asp:Label ID="Label5" runat="server" ForeColor="#400000" Style="z-index: 109; left: 555px;
                    position: absolute; top: 489px; width: 139px; height: 21px;" Text="Go To Homepage" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
    <br />
    <br /><asp:HyperLink ID="HyperLink1" runat="server"  Font-Bold="True" Font-Size="Large"
        ForeColor="Black" Style="z-index: 104; left: 709px; position: absolute; top: 488px; width: 97px;" NavigateUrl="~/Default.aspx" Font-Italic="True" Font-Underline="True" >Click Here</asp:HyperLink>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

