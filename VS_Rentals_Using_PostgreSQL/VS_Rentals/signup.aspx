<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" Title="Sign Up" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
    <div><asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/Default.aspx"
                    Style="z-index: 110; left: 581px; position: absolute; top: 95px" TabIndex="4"
                    Width="200px" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Names="Arial"><center>Click Here To Login</center></asp:HyperLink>
        <table border="0" cellpadding="0" cellspacing="0" style="z-index: 100; left: 1px;
            width: 100%; position: absolute; top: 6px; height: 102%">
            <tr>
                <td style="width: 977px; height: 82px">
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="36pt"
                        Height="50px" Style="z-index: 100; left: 461px; vertical-align: middle; position: absolute;
                        top: 11px; text-align: center; width: 426px;" Text=" VS Rentals" Font-Names="Monotype Corsiva" ForeColor="White" EnableTheming="True"></asp:Label>
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" ProviderName="<%$ ConnectionStrings:rentConnectionString.ProviderName %>" SelectCommand="SELECT * FROM state ORDER BY stateid"></asp:SqlDataSource>
                    
                <asp:Label ID="Label25" runat="server" Style="z-index:auto; position:absolute; top: 315px; left: 84px; height: 22px;" Visible="False"></asp:Label>
                    
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 431px; position: absolute;
                    top: 122px" Text="&lt;center&gt;Vendor Registration&lt;/center&gt;" Width="500px" Font-Bold="True" Font-Names="Agency FB" Font-Size="25pt" ForeColor="White" Font-Italic="False" Font-Underline="False"></asp:Label>
    <table style="z-index: 100; left: 214px; width: 931px; position: absolute; top: 184px;
        height: 291px">
        <tr>
            <td style="width: 46px; height: 26px;">
            <asp:Label ID="Label2" runat="server" Style="z-index: 110; left: 8px; position: absolute;
        top: 5px; width: 94px;" Text="First Name" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label></td>
            <td style="width: 133px; height: 26px;">
            <asp:TextBox ID="txtfname" runat="server" Style="z-index: 104; left: 164px; position: absolute;
        top: 5px" Width="182px" TabIndex="4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtfname"
                    ErrorMessage="* Please Enter First Name" Style="z-index: 101; left: 357px; position: absolute;
                    top: 9px; width: 217px; right: 357px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 49px; height: 26px;">
    <asp:Label ID="Label3" runat="server" Style="z-index: 106; left: 8px; position: absolute;
        top: 46px; width: 85px;" Text="Last Name" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 89px; height: 26px;">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname"
        ErrorMessage="* Please Enter Last Name" Style="z-index: 108; left: 357px;
        position: absolute; top: 50px; width: 225px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtlname" runat="server" Style="z-index: 107; left: 164px; position: absolute;
        top: 46px" Width="182px" TabIndex="5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 133px; height: 26px;">   
                &nbsp;</td>
            <td style="width: 49px; height: 26px;">
                <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 548px; position: absolute;
                    top: 45px; height: 75px;" Text="Address" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 89px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress"
                    ErrorMessage="* Please Enter Address" Style="z-index: 102; left: 908px; position: absolute;
                    top: 63px; width: 157px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtaddress" runat="server" Style="z-index: 100; left: 713px; position: absolute;
                    top: 41px; height: 52px;" TextMode="MultiLine" Width="184px" TabIndex="10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
            <asp:Label ID="Label4" runat="server" Style="z-index: 101; left: 8px; position: absolute;
        top: 88px; width: 89px; height: 23px;" Text="User Name" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label></td>
            <td style="width: 133px; height: 26px;">
                
                
            <asp:TextBox ID="txtusername" runat="server" MaxLength="8" Style="z-index: 100; left: 164px;
                    position: absolute; top: 88px; right: 577px;" Width="182px" ValidationGroup="check" TabIndex="6" AutoPostBack="True" OnTextChanged="txtusername_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtusername"
                    ErrorMessage="* Please Enter User Name" Style="z-index: 101; left: 359px; position: absolute;
                    top: 92px; width: 185px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 49px; height: 26px;">
             </td>
            <td style="width: 89px; height: 26px;">
                <asp:RequiredFieldValidator InitialValue="--City--" ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList2"
                    ErrorMessage="* Choose Your City" Style="z-index: 103; left: 908px;
                    position: absolute; top: 163px; height: 20px; width: 156px;" Font-Bold="True" Font-Italic="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                
                &nbsp;</td>
            <td style="width: 133px; height: 26px;">
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcpswd"
                    ErrorMessage="*" Style="z-index: 101; left: 908px; position: absolute;
                    top: 359px; width: 94px; height: 31px;" Font-Bold="True" Font-Italic="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpswd"
                    ControlToValidate="txtcpswd" ErrorMessage="* Password Mismatch" Style="z-index: 103;
                    left: 908px; position: absolute; top: 359px; width: 166px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:CompareValidator>
            </td>
            <td style="width: 49px; height: 26px;">
                <asp:Label ID="Label10" runat="server" Style="z-index: 100; left: 548px;
                    position: absolute; top: 157px; height: 36px; width: 48px;" Text="City" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 89px; height: 26px;">
                <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 100; left: 713px;
                    position: absolute; top: 158px" Width="190px" Height="22px" TabIndex="11">
                    <asp:ListItem>--City--</asp:ListItem>
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label18" runat="server" Style="z-index: 126; left: 548px; position: absolute;
        top: 5px; width: 110px; height: 30px;" Text="Date Of Birth" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            <asp:Label ID="Label6" runat="server" Style="z-index: 102; left: 548px;
        position: absolute; top: 240px; height: 16px;" Text="Password" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 133px; height: 26px;">
                
    <asp:TextBox ID="txtdate" runat="server" onkeypress="return Validslash()" Style="z-index: 118; left: 713px; position: absolute;
        top: 3px" Width="182px" TabIndex="18" OnTextChanged="txtdate_TextChanged" MaxLength="10" ></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" style="z-index:auto;position:absolute; top: 7px; left: 908px; width: 160px;" ErrorMessage="* Age Must Be '18-60'" ControlToValidate="txtdate" Font-Bold="True" Font-Italic="True" MaximumValue="1/1/2003" MinimumValue="1/1/1961" Type="Date" Display="Dynamic" Font-Size="Small"></asp:RangeValidator>   
        <cc1:CalendarExtender ID="Calendar1" runat="server" TargetControlID="txtdate" Enabled="True" PopupPosition="TopLeft" ></cc1:CalendarExtender>
    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtdate"
        ErrorMessage="* Please Enter Date Of Birth" Style="z-index: 127; left: 908px; position: absolute;
        top: 7px; width: 200px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtpswd" runat="server" Style="z-index: 100; position: absolute;
                    top: 241px; right: 27px;" TextMode="Password" Width="182px" TabIndex="8"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpswd"
                    ErrorMessage="* Please Enter Password" Style="z-index: 101; left: 908px; position: absolute;
                    top: 245px; width: 182px; right: -159px; height: 29px;" Font-Bold="True" Font-Italic="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
                
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtpswd"
                    Style="z-index: 103; left: 908px; position: absolute; top: 245px; width: 230px; height: 114px;" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&amp;]{8,10}" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small">* Password Must Contain :<br/> - Min 8 and Max 10 Values<br/> - Atleast One Uppercase<br/> - Atleast One Lowercase<br/> - Atleast One Number<br/> - Atleast One Special Character</asp:RegularExpressionValidator>
                </td>
            <td style="width: 49px; height: 26px;">
                <asp:Label ID="Label11" runat="server" Style="z-index: 100; left: 548px; position: absolute;
                    top: 117px" Text="State" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 89px; height: 26px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 100; left: 713px;
                    position: absolute; top: 116px" Width="190px" Height="22px" TabIndex="11" DataSourceID="SqlDataSource1" DataTextField="state" DataValueField="stateid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="* Choose Your State" Style="z-index: 101; left: 908px; position: absolute;
                    top: 119px; width: 139px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px">
                <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 8px;
                    position: absolute; top: 129px; height: 29px;" Text="Mobile No" Width="109px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtmobileno"
                    ErrorMessage="* Please Enter Mobile No" Style="z-index: 102; left: 357px; position: absolute;
                    top: 135px; width: 207px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtmobileno" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 164px; position: absolute;
                    top: 129px; margin-bottom: 0px;" Width="182px" TabIndex="15" OnTextChanged="txtmobileno_TextChanged" MaxLength="10" AutoPostBack="True"></asp:TextBox>
    <asp:Label ID="lblcheck0" runat="server" Style="z-index: 109; left: 359px; position: absolute;
        top: 135px" Visible="False" Width="242px" TabIndex="5" Font-Bold="True" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:Label>
            </td>
            <td style="width: 49px; height: 26px">
                <asp:Label ID="Label12" runat="server" Style="z-index: 100; left: 548px; position: absolute;
                    top: 201px" Text="Pincode" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 89px; height: 26px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txttelno"
                    ErrorMessage="* Enter Valid Tel No" Style="z-index: 102; left: 357px;
                    position: absolute; top: 177px; width: 149px;" ValidationExpression="\d{3,5}-\d{6,8}" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtpincode" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 713px; position: absolute;
                    top: 200px;" Width="182px" TabIndex="13" MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpincode"
                    ErrorMessage="* Please Enter Pincode" Style="z-index: 101; left: 908px; position: absolute;
                    top: 203px; width: 161px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtpincode"
                    ErrorMessage="* Enter Valid Pincode" Style="z-index: 103; left: 908px;
                    position: absolute; top: 203px; width: 156px;" ValidationExpression="\d{6}" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label19" runat="server" Style="z-index: 114; left: 8px; position: absolute;
        top: 213px; width: 82px; height: 36px;" Text="Gender" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                
            <asp:Label ID="Label7" runat="server" Style="z-index: 100; left: 548px;
                    position: absolute; top: 353px; height: 26px; width: 141px;" Text="Confirm Password" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:RadioButtonList ID="rdbtnlist" runat="server" RepeatDirection="Horizontal" Style="z-index: 111;
        left: 157px; position: absolute; top: 210px" Width="303px" TabIndex="17" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="rdbtnlist"
        ErrorMessage="* Choose Your Gender" Style="z-index: 115; left: 375px; position: absolute;
        top: 219px; width: 158px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtcpswd" runat="server" Style="z-index: 100; position: absolute;
                    top: 353px; right: 27px;" TextMode="Password" Width="182px" TabIndex="8"></asp:TextBox>
            </td>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label13" runat="server" Style="z-index: 100; left: 8px; position: absolute;
                    top: 173px; height: 41px;" Text="Tel No" Width="62px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
                <asp:TextBox ID="txttelno" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 164px; position: absolute;
                    top: 172px" Width="182px" TabIndex="16"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label16" runat="server" Style="z-index: 124; left: 8px; position: absolute;
        top: 257px; width: 157px; height: 41px;" Text="Security Question" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:DropDownList ID="ddlsecquestion" runat="server" Style="z-index: 122; left: 164px;
        position: absolute; top: 256px; text-align: center; height: 22px; right: 529px;" Width="238px" TabIndex="19" >
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>What is the name of your school?</asp:ListItem>
        <asp:ListItem>Who is your childhood hero?</asp:ListItem>
        <asp:ListItem>What is your favourite movie?</asp:ListItem>
        <asp:ListItem>What is your favourite sport?</asp:ListItem>
        <asp:ListItem>What  is your first car or bike?</asp:ListItem>
        <asp:ListItem>What is your pet name?</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td style="width: 46px; height: 26px;">
    <asp:RequiredFieldValidator InitialValue="--Select--" ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlsecquestion"
        ErrorMessage="* Choose Your Security Question" Style="z-index: 123; left: 407px; position: absolute;
        top: 261px; width: 230px;" Font-Bold="True" Font-Italic="True" Font-Size="Small" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 133px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label17" runat="server" Style="z-index: 130; left: 8px; position: absolute;
        top: 298px; height: 29px; width: 134px; right: 789px;" Text="Security Answer" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:TextBox ID="txtsecanswer" runat="server" Style="z-index: 131; left: 164px; position: absolute;
        top: 298px" Width="230px" TabIndex="20" OnTextChanged="txtsecanswer_TextChanged"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtmobileno"
                    ErrorMessage="* Enter Valid Mobile No" Style="z-index:auto; left: 357px; position: absolute;
                    top: 135px; width: 171px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 46px; height: 26px;">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtsecanswer"
        ErrorMessage="* Please Enter Your Security Answer" Style="z-index: 125;
        left: 407px; position: absolute; top: 304px; width: 256px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 133px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label14" runat="server" Style="z-index: 112; left: 8px; position: absolute;
        top: 341px; height: 38px;" Text="Email Id" Width="111px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:TextBox ID="txtemail" runat="server" Style="z-index: 116; left: 164px; position: absolute;
        top: 340px" Width="230px" TabIndex="21" AutoPostBack="True" OnTextChanged="txtemail_TextChanged"></asp:TextBox>
            </td>
            <td style="width: 46px; height: 26px;">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtemail"
        ErrorMessage="* Please Enter Email Id" Style="z-index: 117; left: 407px; position: absolute;
        top: 346px; width: 171px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:Label ID="Label23" runat="server" Style="z-index: 109; left: 409px; position: absolute;
        top: 346px" Visible="False" Width="242px" TabIndex="5" Font-Bold="True" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:Label>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
        ErrorMessage="* Enter Valid Email Id" Style="z-index: 113; left: 407px;
        position: absolute; top: 346px; width: 207px;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 133px; height: 26px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label15" runat="server" Style="z-index: 100; left: 8px; position: absolute;
                    top: 381px; width: 123px;" Text="Alternate Email" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:TextBox ID="txtaltemail" runat="server" Style="z-index: 120; left: 164px; position: absolute;
        top: 381px" Width="230px" TabIndex="22" AutoPostBack="True" OnTextChanged="txtaltemail_TextChanged"></asp:TextBox>
            </td>
            <td style="width: 46px; height: 26px;">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtaltemail"
        ErrorMessage="* Enter Valid Email Id" Style="z-index: 121; left: 407px; position: absolute;
        top: 387px; width: 197px;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaltemail"
        ErrorMessage="* Please Enter Alternate Email Id" Style="z-index: 117; left: 407px; position: absolute;
        top: 387px; width: 229px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
           <asp:Label ID="Label24" runat="server" Style="z-index: 109; left: 409px; position: absolute;
        top: 387px" Visible="False" Width="242px" TabIndex="5" Font-Bold="True" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:Label> </td>
            <td style="width: 133px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
            </td>
            <td style="width: 133px; height: 26px;">
                <asp:Button ID="btnreg" runat="server" OnClick="btnreg_Click" Style="z-index: 103; left: 353px; position: absolute; top: 422px" TabIndex="23" Text="Register" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Height="26px" Width="100px" />
    <asp:Button ID="Button2" runat="server" Style="z-index: 129; left: 520px; position: absolute;
        top: 422px" Text="Clear" Width="100px" OnClick="Button2_Click" TabIndex="24" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Height="26px" />
            </td>
            <td style="width: 46px; height: 26px;">
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:Label ID="lblcheck" runat="server" Style="z-index: 109; left: 359px; position: absolute;
        top: 92px" Visible="False" Width="242px" TabIndex="5" Font-Bold="True" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:Label>
            </td>
        </tr><tr>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 133px; height: 26px;">
            </td>
            <td style="width: 46px; height: 26px;">
            </td>
            <td style="width: 133px; height: 26px;">
    <asp:Label ID="lblavail" runat="server" Style="z-index:auto; position:absolute; top: 197px; left: -164px;" Visible="False"></asp:Label><asp:Label ID="Label8" runat="server" Style="z-index:auto; position:absolute; top: 106px; left: -184px;" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label21" runat="server" Style="z-index:auto; position:absolute; top: 155px; left: -202px; height: 22px;" Visible="False"></asp:Label>
            </td>
            <td style="width: 133px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
            </td>
            <td style="width: 133px; height: 26px;">
                </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">

            </td>
            <td style="width: 133px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
            </td>
            <td style="width: 133px; height: 26px;">
                </td>
        </tr><tr>
            <td style="width: 46px; height: 26px;">

            </td>
            <td style="width: 133px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
            </td>
            <td style="width: 133px; height: 26px;">
                </td>
        </tr>
    </table>
      
    </div></form></body></html>
