<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="viewprofile.aspx.cs" Inherits="viewprofile" Title="View Profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
        <title>Untitled Page</title>   
</head>
<body background="images/caribbean-sea-sky-clouds (1).JPG" >
    <form id="form1" runat="server">
        
        <div>
   <table border="0" cellpadding="0" cellspacing="0" style="z-index: 100; left: 1px;
            width: 100%; position: absolute; top: 6px;">
            <tr>
                <td style="width: 977px; height: 82px">
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="36pt"
                        Height="50px" Style="z-index: 100; left: 461px; vertical-align: middle; position: absolute;
                        top: 11px; text-align: center; width: 426px;" Text=" VS Rentals" Font-Names="Monotype Corsiva" ForeColor="White" EnableTheming="True"></asp:Label>
                    
                </td>
            </tr>
        </table>
   <table style="z-index: 100; left: 228px; width: 931px; position: absolute; top: 182px;
        height: 291px">
        <tr>
             <td style="width: 46px; height: 26px;">
            <asp:Label ID="Label2" runat="server" Style="z-index: 110; left: 8px; position: absolute;
        top: 5px; width: 94px;" Text="First Name" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label></td>
            <td style="width:133px; height: 26px;"> 
            <asp:TextBox ID="txtfname" runat="server" Style="z-index: 104; left: 120px; position: absolute;
        top: 5px" Width="182px" TabIndex="4" ReadOnly="True"></asp:TextBox>
            </td>
           <td style="width: 49px; height: 26px;">
    <asp:Label ID="Label3" runat="server" Style="z-index: 106; left: 8px; position: absolute;
        top: 46px; width: 85px;" Text="Last Name" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 89px; height: 26px;">
    <asp:TextBox ID="txtlname" runat="server" Style="z-index: 107; left: 120px; position: absolute;
        top: 46px" Width="182px" TabIndex="5" ReadOnly="True"></asp:TextBox>
                
    <asp:TextBox ID="txtdate" runat="server"  Style="z-index: 118; left: 656px; position: absolute;
        top: 5px" Width="182px" TabIndex="18" OnTextChanged="txtdate_TextChanged" MaxLength="10" ReadOnly="True" ></asp:TextBox>
        
    
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width:133px; height: 26px;"> 
                &nbsp;</td>
            <td style="width: 49px; height: 26px;">
                <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 498px; position: absolute;
                    top: 46px; height: 75px;" Text="Address" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 89px; height: 26px;">
                <asp:TextBox ID="txtaddress" runat="server" Style="z-index: 100; left: 656px; position: absolute;
                    top: 41px; height: 22px;" TextMode="MultiLine" Width="184px" TabIndex="10" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
            <asp:Label ID="Label4" runat="server" Style="z-index: 101; left: 8px; position: absolute;
        top: 88px; width: 89px; height: 23px;" Text="User Name" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label></td>
            <td style="width: 133px; height: 26px;">
                
                
            <asp:TextBox ID="txtusername" runat="server" MaxLength="8" Style="z-index: 100; left: 120px;
                    position: absolute; top: 88px; right: 621px;" Width="182px" ValidationGroup="check" TabIndex="6" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 49px; height: 26px;">
             </td>
            <td style="width: 89px; height: 26px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                
                &nbsp;</td>
            <td style="width: 133px; height: 26px;">
                &nbsp;
                </td>
            <td style="width: 49px; height: 26px;">
                <asp:Label ID="Label10" runat="server" Style="z-index: 100; left: 498px;
                    position: absolute; top: 88px; height: 36px; width: 48px;" Text="State" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 89px; height: 26px;">
                <asp:TextBox ID="txtstate" runat="server" Style="z-index: 100; left: 656px; position: absolute;
                    top: 88px" Width="182px" TabIndex="12" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label18" runat="server" Style="z-index: 126; left: 498px; position: absolute;
        top: 5px; width: 110px; height: 30px;" Text="Date Of Birth" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            <asp:Label ID="Label6" runat="server" Style="z-index: 102; left: 8px;
        position: absolute; top: 129px; height: 20px;" Text="Password" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 133px; height: 26px;">
                
    
        
    
            <asp:TextBox ID="txtpswd" runat="server" Style="z-index: 100; position: absolute;
                   left:120px; top: 130px; right: 577px;" Width="182px" TabIndex="8" ReadOnly="True"></asp:TextBox>
                </td>
            <td style="width: 49px; height: 26px;">
                <asp:Label ID="Label11" runat="server" Style="z-index: 100; left: 498px; position: absolute;
                    top: 129px" Text="City" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 89px; height: 26px;">
                <asp:TextBox ID="txtcity" runat="server" Style="z-index: 100; left: 656px; position: absolute;
                    top: 130px" Width="182px" TabIndex="12" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px">
                <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 8px;
                    position: absolute; top: 173px; height: 29px;" Text="Mobile No" Width="109px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px">
                <asp:TextBox ID="txtmobileno" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 120px; position: absolute;
                    top: 171px; margin-bottom: 0px;" Width="182px" TabIndex="15" OnTextChanged="txtmobileno_TextChanged" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 49px; height:26px">
                <asp:Label ID="Label12" runat="server" Style="z-index: 100; left: 498px; position: absolute;
                 top: 173px" Text="Pincode" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width:89px; height: 26px">
                <asp:TextBox ID="txtpincode" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 656px; position: absolute;
                   top: 172px;" Width="182px" TabIndex="13" ReadOnly="True" MaxLength="6"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width:46px; height: 26px;">
    <asp:Label ID="Label19" runat="server" Style="z-index: 114; left: 8px; position: absolute;
        top: 257px; width: 82px; height: 36px;" Text="Gender" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:RadioButtonList ID="rdbtnlist" runat="server" fixed="false" RepeatDirection="Horizontal" Style="z-index: 111;
        left: 113px; position: absolute; top: 254px" Width="303px" TabIndex="17" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White" EnableTheming="True" Enabled="False">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
            </td>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label13" runat="server" Style="z-index: 100; left: 8px; position: absolute;
                    top: 213px; height: 41px;" Text="Tel No" Width="62px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
                <asp:TextBox ID="txttelno" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 120px; position: absolute;
                   top:213px" Width="182px" TabIndex="16" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label16" runat="server" Style="z-index: 124; left: 498px; position: absolute;
        top: 213px; width: 157px; height: 41px;" Text="Security Question" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:TextBox ID="txtsecquestion" runat="server" Style="z-index: 131; left: 656px; position: absolute;
        top: 213px" Width="218px" TabIndex="20" OnTextChanged="txtsecanswer_TextChanged" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 133px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label17" runat="server" Style="z-index: 130; left: 498px; position: absolute;
        top: 257px; height: 29px; width: 134px; right: 251px;" Text="Security Answer" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:TextBox ID="txtsecanswer" runat="server" Style="z-index: 131; left: 656px; position: absolute;
        top: 256px" Width="218px" TabIndex="20" OnTextChanged="txtsecanswer_TextChanged" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 133px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label14" runat="server" Style="z-index: 112; left: 8px; position: absolute;
        top: 297px; height: 65px;" Text="Email Id" Width="111px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:TextBox ID="txtemail" runat="server" Style="z-index: 116; left: 120px; position: absolute;
        top: 298px" Width="218px" TabIndex="21" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 133px; height: 26px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label15" runat="server" Style="z-index: 100; left: 498px; position: absolute;
                    top: 297px; width: 123px;" Text="Alternate Email" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:TextBox ID="txtaltemail" runat="server" Style="z-index: 120; left: 656px; position: absolute;
        top: 298px" Width="218px" TabIndex="22" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 133px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
            </td>
            <td style="width: 133px; height: 26px;">
                <asp:Button ID="btnreg" runat="server" OnClick="btnedit_Click" Style="z-index: 103; left: 307px; position: absolute; top: 340px" TabIndex="23" Text="Edit Profile" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Width="110px" Height="26px" />
    <asp:Button ID="Button2" runat="server" Style="z-index: 129; left: 471px; position: absolute;
        top: 338px" Text="Delete Profile" Width="110px" OnClick="btndelete_Click" TabIndex="24" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Height="26px" />
            </td>
            <td style="width: 46px; height: 26px;">
            </td>
            <td style="width: 133px; height: 26px;">
                &nbsp;</td>
        </tr><tr>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 133px; height: 26px;">
            </td>
            <td style="width: 46px; height: 26px;">
            </td>
            <td style="width: 133px; height: 26px;">
                &nbsp;</td>
        </tr>
       
    </table>
              
                               
   <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Underline="True" ForeColor="White" NavigateUrl="~/vendor.aspx" Style="z-index: 104; left: 572px; position: absolute; top: 95px; width: 225px;" Font-Names="Arial"><center>Click Here For Mainpage</center></asp:HyperLink>
   
   <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 100;
                    left: 489px; position: absolute; top: 121px;  text-align: center; height: 43px;"
                    Text="Your Account Details" Width="390px" Font-Names="Agency FB" Font-Size="25pt" Font-Underline="False"></asp:Label>
            
       
</div></form></body></html>

