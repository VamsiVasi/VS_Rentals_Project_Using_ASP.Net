<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" Title="Vendor Forgot Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    
    <br />
    <asp:Label ID="lblmsg1" runat="server" Style="z-index: 102; left: 578px;
        position: absolute; top: 451px" Width="395px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:Label><br />
    &nbsp;
    <asp:Label ID="lblmsg" runat="server" Style="z-index: 102; left: 598px;
        position: absolute; top: 388px; width: 238px;" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:Label><br />
    &nbsp;&nbsp;
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/Default.aspx"
                    Style="z-index: 110; left: 581px; position: absolute; top: 145px" TabIndex="4"
                    Width="200px" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Names="Arial"><center>Click Here To Login</center></asp:HyperLink>
    <br />
    <br />
    <br />
    <table style="z-index: 101; left: 434px; position: absolute; top: 231px">
        <tr>
            <td style="width: 101px; height: 26px">
                <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: -3px; position: absolute;
                    top: -50px" Text="&lt;center&gt;Please Fill The Following Details To Retrieve Your Password&lt;/center&gt;" Width="500px" Font-Bold="False" Font-Names="Agency FB" Font-Size="25pt" ForeColor="White"></asp:Label>
                </td>
            </tr>
    </table>
    &nbsp;<br />
    <br />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Style="z-index: 100; left: 889px; top: 290px ; position:absolute; width: 256px;" ErrorMessage="* Please Enter Your Username" ControlToValidate="txtusername" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
    
    <br />
    <br />
    <table style="z-index: 102; left: 475px; position: absolute; top: 281px; width: 412px;">
        <tr>
            <td style="width: 101px; height: 26px">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 5px; position: absolute;
                    top: 5px" Text="Name" Width="123px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 100px; height: 26px">
            <asp:TextBox ID="txtusername" runat="server" Style="z-index: 100; left: 149px; position: absolute;
                    top: 5px" TabIndex="1" Width="250px" ></asp:TextBox></td>
            <td style="width: 100px; height: 26px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px; height: 26px;">
            
            </td>
            <td style="width: 100px; height: 26px;">
            <asp:Button ID="btnsubmit1" runat="server" Style="font-size: 10pt;
                    z-index: 100; left: 177px; position: absolute; top: 58px" TabIndex="3"
                    Text="Submit" ForeColor="#400000" Font-Bold="True" Font-Italic="True" OnClick="btnsubmit1_Click" />
            </td>
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        
        <tr>
            <td style="width: 100px; height: 26px;">
            <asp:Label ID="lblsqn" runat="server" Style="z-index: 100; left: 5px; 
        top: 60px ; position:absolute" Text="Security Question" Width="141px" Visible="False" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                
                </td>
            <td style="width: 100px; height: 26px;">
            <asp:TextBox ID="txtsqn" runat="server" Style="z-index: 100; left: 148px; position: absolute;
                    top: 60px" TabIndex="1" Width="250px" ReadOnly="True"></asp:TextBox>
        </td>
        
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px;">
            <asp:Label ID="lblsans" runat="server" Style="z-index: 100; left: 7px; 
        top: 117px; position:absolute" Text="Security Answer" Width="123px" Visible="False" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
               
            </td>
            <td style="width: 100px; height: 26px;">
            <asp:TextBox ID="txtsans" runat="server" Style="z-index: 100; left: 149px; position: absolute;
                    top: 116px" TabIndex="1" Width="250px" OnTextChanged="txtsans_TextChanged" ControlToValidate="txtsans"></asp:TextBox>
            </td>
            <td style="width: 100px; height: 26px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px;">
            <asp:Label ID="lblpwd" runat="server" Style="z-index: 100;position:absolute; left: 6px; 
                    top: 170px; width: 400px; height: 22px;" Visible="False" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#400000"></asp:Label>
            </td>
            <td style="width: 100px; height: 26px;">
                &nbsp;</td>
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px;">
            </td>
            <td style="width: 100px; height: 26px;">
            </td>
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px;">
            
                
            </td>
            <td style="width: 100px; height: 26px;">
            </td>
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px;">
            </td>
            <td style="width: 100px; height: 26px;">
            </td>
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        
        <tr>
            <td style="width: 100px; height: 26px;">
            </td>
            <td style="width: 100px; height: 26px;">
                &nbsp;</td>
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px;">
            </td>
            <td style="width: 100px; height: 26px;">
            </td>
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px;">
            </td>
            <td style="width: 100px; height: 26px;">
            <asp:Button ID="btnsubmit2" runat="server" Style="z-index: 100; left: 103px; 
         top: 223px; position: absolute; right: 234px;" Text="Submit" Visible="False" OnClick="btnsubmit2_Click" TabIndex="5" ForeColor="#400000" Font-Bold="True" Font-Italic="True" Height="25px" Width="75px" />
            </td>
            <td style="width: 100px; height: 26px;">
            <asp:Button ID="Button1" runat="server" Style="z-index: 100; left: 235px; 
         top: 222px; position: absolute; right: 115px;" Text="Cancel" Visible="False" TabIndex="5" ForeColor="#400000" Font-Bold="True" Font-Italic="True" OnClick="Button1_Click" Height="25px" Width="75px" />
                
            </td>
        </tr>
    </table>
    <br />
    <br />
    
    &nbsp; &nbsp;&nbsp;
    
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

