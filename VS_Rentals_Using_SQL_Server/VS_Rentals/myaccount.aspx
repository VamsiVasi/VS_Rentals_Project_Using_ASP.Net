<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="myaccount" Title="Vendor Edit Account" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
        <title>Untitled Page</title>
    <script type="text/javascript">
        function ValidNumeric() {

            var charCode = (event.which) ? event.which : event.keyCode;
            if (charCode >= 48 && charCode <= 57)
            { return true; }
            else
            { return false; }
        }
        function Validslash() {

            var charCode = (event.which) ? event.which : event.keyCode;
            if (charCode >= 48 && charCode <= 57 || charCode == 47)
            { return true; }
            else
            { return false; }
        }
    </script>
    
</head>
<body background="images/caribbean-sea-sky-clouds (1).JPG" >
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                
    <asp:TextBox ID="txtdate" runat="server" onkeypress="return Validslash()" Style="z-index: 118; left: 656px; position: absolute;
        top: 5px" Width="182px" TabIndex="18" MaxLength="10" ></asp:TextBox>
         <cc1:CalendarExtender ID="Calendar1" runat="server" TargetControlID="txtdate" Enabled="True" PopupPosition="TopLeft" ></cc1:CalendarExtender>
    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtdate"
        ErrorMessage="* Please Enter Date Of Birth" Style="z-index: 127; left: 853px; position: absolute;
        top: 10px; width: 200px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" style="z-index:auto;position:absolute; top: 10px; left: 853px; width: 160px;" ErrorMessage="* Age Must Be '18-60'" ControlToValidate="txtdate" Font-Bold="True" Font-Italic="True" MaximumValue="1/1/2003" MinimumValue="1/1/1961" Type="Date" Display="Dynamic" Font-Size="Small"></asp:RangeValidator>   
    
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
                    top: 41px; height: 22px;" TextMode="MultiLine" Width="184px" TabIndex="10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
            <asp:Label ID="Label4" runat="server" Style="z-index: 101; left: 8px; position: absolute;
        top: 88px; width: 89px; height: 23px;" Text="User Name" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label></td>
            <td style="width: 133px; height: 26px;">
                
                
            <asp:TextBox ID="txtusername" runat="server" MaxLength="8" Style="z-index: 100; left: 120px;
                    position: absolute; top: 88px; right: 577px;" Width="182px" TabIndex="6" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 49px; height: 26px;">
             </td>
            <td style="width: 89px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress"
                    ErrorMessage="* Please Enter Address" Style="z-index: 102; left: 853px; position: absolute;
                    top: 51px; width: 157px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
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
                <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 100; left: 656px;
                    position: absolute; top: 130px" Width="190px" Height="22px" TabIndex="11">
                    <asp:ListItem>--City--</asp:ListItem>
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label18" runat="server" Style="z-index: 126; left: 498px; position: absolute;
        top: 5px; width: 110px; height: 30px;" Text="Date Of Birth" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            <asp:Label ID="Label6" runat="server" Style="z-index: 102; left: 8px;
        position: absolute; top: 129px; height: 23px;" Text="Password" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 133px; height: 26px;">
                
    
        
    
            <asp:TextBox ID="txtpswd" runat="server" Style="z-index: 100; position: absolute;
                   left:120px; top: 130px; right: 575px;" Width="182px" TabIndex="8" ReadOnly="True"></asp:TextBox>
                </td>
            <td style="width: 49px; height: 26px;">
                <asp:Label ID="Label11" runat="server" Style="z-index: 100; left: 498px; position: absolute;
                    top: 129px" Text="City" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 89px; height: 26px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 100; left: 656px;
                    position: absolute; top: 88px" Width="190px" Height="22px" TabIndex="11" DataSourceID="SqlDataSource1" DataTextField="state" DataValueField="stateid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="--City--" ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList2"
                    ErrorMessage="* Choose Your City" Style="z-index: 103; left: 853px;
                    position: absolute; top: 135px; height: 20px; width: 156px;" Font-Bold="True" Font-Italic="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px">
                <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 8px;
                    position: absolute; top: 173px; height: 29px;" Text="Mobile No" Width="109px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px">
                <asp:TextBox ID="txtmobileno" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 120px; position: absolute;
                    top: 171px; margin-bottom: 0px;" Width="182px" TabIndex="15" AutoPostBack="True" MaxLength="10" OnTextChanged="txtmobileno_TextChanged" ></asp:TextBox>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red" NavigateUrl="~/changepassword.aspx" Style="z-index: 118; left: 320px; position: absolute; top: 129px; width: 159px; height: 24px;" TabIndex="8">Change Password..?</asp:HyperLink>
            </td>
            <td style="width: 49px; height:26px">
                <asp:Label ID="Label12" runat="server" Style="z-index: 100; left: 498px; position: absolute;
                 top: 173px" Text="Pincode" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width:89px; height: 26px">
                <asp:TextBox ID="txtpincode" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 656px; position: absolute;
                   top: 172px;" Width="182px" TabIndex="13" MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="* Choose Your State" Style="z-index: 101; left: 853px; position: absolute;
                    top: 93px; width: 139px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td style="width:46px; height: 26px;">
    <asp:Label ID="Label19" runat="server" Style="z-index: 114; left: 8px; position: absolute;
        top: 257px; width: 82px; height: 36px;" Text="Gender" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:RadioButtonList ID="rdbtnlist" runat="server" fixed="false" RepeatDirection="Horizontal" Style="z-index: 111;
        left: 113px; position: absolute; top: 254px" Width="303px" TabIndex="17" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White" EnableTheming="True">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtmobileno"
                    ErrorMessage="* Please Enter Mobile No" Style="z-index: 102; left: 317px; position: absolute;
                    top: 177px; width: 207px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtmobileno"
                    ErrorMessage="* Enter Valid Mobile No" Style="z-index:auto; left: 317px; position: absolute;
                    top: 177px; width: 171px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label13" runat="server" Style="z-index: 100; left: 8px; position: absolute;
                    top: 213px; height: 41px;" Text="Tel No" Width="62px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
                <asp:TextBox ID="txttelno" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 120px; position: absolute;
                   top:213px" Width="182px" TabIndex="16"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtpincode"
                    ErrorMessage="* Enter Valid Pincode" Style="z-index: 103; left: 853px;
                    position: absolute; top: 177px; width: 156px;" ValidationExpression="\d{6}" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpincode"
                    ErrorMessage="* Please Enter Pincode" Style="z-index: 101; left: 853px; position: absolute;
                    top: 177px; width: 161px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label16" runat="server" Style="z-index: 124; left: 498px; position: absolute;
        top: 213px; width: 157px; height: 41px;" Text="Security Question" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:DropDownList ID="ddlsecquestion" runat="server" Style="z-index: 122; left: 656px;
        position: absolute; top: 215px; text-align: center; height: 22px;" Width="226px" TabIndex="19" >
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>What is the name of your school?</asp:ListItem>
        <asp:ListItem>Who is your childhood hero?</asp:ListItem>
        <asp:ListItem>What is your favourite movie?</asp:ListItem>
        <asp:ListItem>What is your favourite sport?</asp:ListItem>
        <asp:ListItem>What  is your first car or bike?</asp:ListItem>
        <asp:ListItem>What is your pet name?</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lblcheck0" runat="server" Style="z-index: 109; left: 317px; position: absolute;
        top: 177px" Visible="False" Width="242px" TabIndex="5" Font-Bold="True" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:Label>
            </td>
            <td style="width: 46px; height: 26px;">
            </td>
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
        top: 256px" Width="218px" TabIndex="20"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txttelno"
                    ErrorMessage="* Enter Valid Tel No" Style="z-index: 102; left: 317px;
                    position: absolute; top: 219px; width: 149px;" ValidationExpression="\d{3,5}-\d{6,8}" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 133px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label14" runat="server" Style="z-index: 112; left: 8px; position: absolute;
        top: 297px; height: 23px;" Text="Email Id" Width="111px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:TextBox ID="txtemail" runat="server" Style="z-index: 116; left: 120px; position: absolute;
        top: 298px" Width="218px" TabIndex="21" ReadOnly="True"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="rdbtnlist"
        ErrorMessage="* Choose Your Gender" Style="z-index: 115; left: 331px; position: absolute;
        top: 263px; width: 158px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
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
                <asp:Button ID="btnreg" runat="server" OnClick="btnedit_Click" Style="z-index: 103; left: 400px; position: absolute; top: 340px" TabIndex="23" Text="Save Changes" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Width="110px" Height="26px" />
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
    <asp:RequiredFieldValidator InitialValue="--Select--" ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlsecquestion"
        ErrorMessage="* Choose Your Security Question" Style="z-index: 123; left: 887px; position: absolute;
        top: 219px; width: 230px;" Font-Bold="True" Font-Italic="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtsecanswer"
        ErrorMessage="* Please Enter Your Security Answer" Style="z-index: 125;
        left: 887px; position: absolute; top: 261px; width: 256px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        
    </table>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" SelectCommand="SELECT * FROM [state] ORDER BY [stateid]"></asp:SqlDataSource>
                               
   <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Underline="True" ForeColor="White" NavigateUrl="~/viewprofile.aspx" Style="z-index: 104; left: 571px; position: absolute; top: 95px; width: 225px;" Font-Names="Arial"><center>Click Here To Cancel</center></asp:HyperLink>
   
   <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 100;
                    left: 488px; position: absolute; top: 121px;  text-align: center; height: 43px;"
                    Text="Edit Account Details" Width="390px" Font-Names="Agency FB" Font-Size="25pt" Font-Underline="False"></asp:Label>
       
</div>
        <p>
                    
                <asp:Label ID="Label25" runat="server" Style="z-index:auto; position:absolute; top: 315px; left: 84px; height: 22px;" Visible="False"></asp:Label>
                    
                </p>
    </form></body></html>

