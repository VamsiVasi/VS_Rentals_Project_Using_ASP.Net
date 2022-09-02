<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" Title="Vendor Change Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                               
   <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Underline="True" ForeColor="White" NavigateUrl="~/viewprofile.aspx" Style="z-index: 104; left: 570px; position: absolute; top: 89px; width: 225px;" Font-Names="Arial"><center>Click Here To Cancel</center></asp:HyperLink>
   
    <table style="z-index: 100; left: 477px; width: 399px; position: absolute; top: 176px;
        height: 254px">
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtcpwd" style="z-index:auto;position:absolute; top: 4px; left: 212px;" runat="server" TextMode="Password" TabIndex="4" Width="182px"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Style="z-index: 102; left: 8px;
        position: absolute; top: 5px; height: 20px; width: 145px;" Text="Current Password" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
        </tr><tr>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtnpwd" style="z-index:auto;position:absolute; top: 46px; left: 212px;" runat="server" TextMode="Password" TabIndex="5" Width="182px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label7" runat="server" Style="z-index: 102; left: 8px;
        position: absolute; top: 44px; height: 22px; width: 120px;" Text="New Password" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
        </tr><tr>
            <td style="width: 46px; height: 26px;">
            <asp:Label ID="Label8" runat="server" Style="z-index: 102; left: 8px;
        position: absolute; top: 157px; height: 21px; width: 184px;" Text="Confirm New Password" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
        </tr><tr>
            <td style="width: 46px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcpwd"
                    ErrorMessage="* Please Enter Current Password" Style="z-index: 101; left: 407px; position: absolute;
                    top: 9px; width: 188px; right: -196px; height: 29px;" Font-Bold="True" Font-Italic="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
                
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtnpwd"
                    ErrorMessage="* Please Enter New Password" Style="z-index: 101; left: 407px; position: absolute;
                    top: 51px; width: 182px; right: -190px; height: 29px;" Font-Bold="True" Font-Italic="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
                
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcnpwd"
                    ErrorMessage="*" Style="z-index: 101; left: 407px; position: absolute;
                    top: 164px; width: 94px; height: 31px;" Font-Bold="True" Font-Italic="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnpwd"
                    ControlToValidate="txtcnpwd" ErrorMessage="* Password Mismatch" Style="z-index: 103;
                    left: 407px; position: absolute; top: 164px; width: 166px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:CompareValidator>
                
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtnpwd"
                    Style="z-index: 103; left: 407px; position: absolute; top: 51px; width: 230px; height: 103px;" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&amp;])[A-Za-z\d$@$!%*?&amp;]{8,10}" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small">* Password Must Contain :<br/> - Min 8 and Max 10 Values<br/> - Atleast One Uppercase<br/> - Atleast One Lowercase<br/> - Atleast One Number<br/> - Atleast One Special Character</asp:RegularExpressionValidator>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtcnpwd" style="z-index:auto;position:absolute; top: 158px; left: 212px;" runat="server" TextMode="Password" TabIndex="6" Width="182px"></asp:TextBox>
                </td>
        </tr><tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
        </tr><tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="lblmsg1" runat="server" Style="z-index: 101; left: 94px; position: absolute;
        top: 238px; height: 24px;" Width="443px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
        </tr><tr>
            <td style="width: 46px; height: 26px;">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" style="z-index:auto;left: 168px; position: absolute; top: 199px;" OnClick="btnsubmit_Click" TabIndex="7" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Height="25px" Width="75px" />
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
        </tr>
       
    </table>    
   <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 100;
                    left: 487px; position: absolute; top: 115px;  text-align: center; height: 43px;"
                    Text="Change Password" Width="390px" Font-Names="Agency FB" Font-Size="25pt" Font-Underline="False"></asp:Label>   
</asp:Content>

