<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="booking.aspx.cs" Inherits="booking" Title="Booking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
    </script>
</head>
<body background="images/backnew.JPG">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" style="z-index: 100; left: 1px;
            width: 100%; position: absolute; top: 6px; height: 102%">
            <tr>
                <td style="width: 977px; height: 82px">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="36pt"
                        Height="50px" Style="z-index: 100; left: 461px; vertical-align: middle; position: absolute;
                        top: 11px; text-align: center; width: 426px;" Text=" VS Rentals" Font-Names="Monotype Corsiva" ForeColor="White" EnableTheming="True"></asp:Label>
                    </td></tr></table>
    <asp:Button ID="btnbooknow" runat="server" Style="z-index: 100; left: 579px; position: absolute;
        top: 508px;" Text="Book" TabIndex="19" 
        OnClick="btnbooknow_Click" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Font-Size="10pt" Height="25px" Width="75px" />
    
    <table style="z-index: 100; left: 485px; width: 476px; position: absolute; top: 155px;
        height: 337px">
        <tr>
            <td style="width: 46px; height: 26px;">
                    <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 11px" Text="Name" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtuname" runat="server" Style="z-index: 100; left: 176px; position: absolute;
                    top: 10px" Width="204px" TabIndex="4" MaxLength="11"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname"
                    ErrorMessage="* Please Enter Your Name" Style="z-index: 102; left: 396px; position: absolute;
                    top: 15px; width: 148px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 52px; width: 82px;" Text="Email Id" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtumail" runat="server" Style="z-index: 100; left: 176px; position: absolute;
                    top: 51px" Width="204px" TabIndex="5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtumail"
                    ErrorMessage="* Please Enter Email Id" Style="z-index: 101; left: 396px; position: absolute;
                    top: 56px; width: 135px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtumail"
                    ErrorMessage="* Enter Valid Email Id" Style="z-index: 103; left: 396px;
                    position: absolute; top: 56px; width: 129px;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 95px" Text="Mobile No" Width="133px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtuphone" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 176px; position: absolute;
                    top: 94px" Width="204px" TabIndex="6" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuphone"
                    ErrorMessage="* Please Enter Mobile No" Style="z-index: 101; left: 396px; position: absolute;
                    top: 99px; width: 172px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtuphone"
                    ErrorMessage="* Enter Valid Mobile No" Style="z-index: 103; left: 396px;
                    position: absolute; top: 99px; width: 142px;" ValidationExpression="\d{10}" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 137px" Text="Number Of pieces" Width="153px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtnumber" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 100; left: 176px; position: absolute;
                    top: 135px" Width="204px " TabIndex="7" MaxLength="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtnumber"
                    ErrorMessage="* Please Enter No Of Pieces" Style="z-index: 101; left: 396px; position: absolute;
                    top: 140px; width: 159px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" style="z-index:auto;position:absolute; top: 140px; left: 396px; width: 159px;" runat="server" ErrorMessage='* Min "1" and Max "100"' ControlToValidate="txtnumber" MaximumValue="100" MinimumValue="1" Type="Integer" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label6" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 179px" Text="Pickup Date" Width="150px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 46px; height: 26px;">
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpdate"
                    ErrorMessage="* Choose Your Pickup Date" Style="z-index: 100; left: 427px;
                    position: absolute; top: 183px; width: 168px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:TextBox ID="txtpdate" runat="server" Style="z-index: 102; left: 176px; position: absolute;
                    top: 177px" Width="204px" TabIndex="8" 
                    ontextchanged="txtpdate_TextChanged" ReadOnly="True"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cal.png"
                    Style="z-index: 104; left: 386px; position: absolute; top: 164px; height: 46px; width: 46px;"
                    OnClick="ImageButton1_Click" ValidationGroup="c1" TabIndex="9" />
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label7" runat="server" ForeColor="#400000" Style="z-index: 109; left: 79px;
                    position: absolute; top: 393px; width: 139px; height: 21px;" Text="Go To Homepage" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server"  Font-Bold="True" Font-Size="Large"
        ForeColor="Black" Style="z-index: 104; left: 232px; position: absolute; top: 393px; width: 97px;" NavigateUrl="~/Default.aspx" Font-Italic="True" Font-Underline="True" >Click Here</asp:HyperLink>
            </td>
            <td style="width: 46px; height: 26px;">
    <asp:TextBox ID="txtldate" runat="server" Style="z-index: 101; left: 176px; position: absolute;
        top: 220px" Width="204px" TabIndex="14" ReadOnly="True" OnTextChanged="txtldate_TextChanged"></asp:TextBox>
                <asp:Label ID="lblmsg0" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Red" Style="z-index: 102; left: 430px; position: absolute; top: 225px; height: 24px; width: 355px;"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label8" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 221px" Text="Leaving Date" Width="143px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="width: 46px; height: 26px;">
                &nbsp;&nbsp;
                &nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/cal.png"
                    Style="z-index: 104; left: 386px; position: absolute; top: 207px; height: 46px; width: 46px;"
                    OnClick="ImageButton2_Click" ValidationGroup="c2" TabIndex="9" />
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 7px; position: absolute;
                    top: 263px; height: 34px;" Text="Place Of Delivery" Width="145px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            <asp:Label ID="Label1" runat="server" Style="z-index: 107; left: 7px; position: absolute;
        top: 312px" Text="Product Id" Width="138px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label></td>
            <td style="width: 46px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtpaddress"
                    ErrorMessage="* Please Enter Place Of Delivery" Style="z-index: 100; left: 397px;
                    position: absolute; top: 270px; width: 191px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" style="z-index:auto;position:absolute; top: 317px; left: 259px; width: 165px;" ErrorMessage="* Choose Your Product Id" ControlToValidate="DropDownList1" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" InitialValue="--Select--"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="DropDownList1" runat="server" style="z-index:auto;position:absolute; top: 312px; left: 176px;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                <asp:TextBox ID="txtpaddress" runat="server" Style="z-index: 102; left: 176px; position: absolute;
                    top: 262px" TextMode="MultiLine" Width="206px" Height="22px" TabIndex="17"></asp:TextBox>
                
            </td>
        </tr>
    </table>
    <asp:Label ID="Label10" runat="server" Style="z-index: 100; left: 431px; position: absolute;
                    top: 91px" Text="&lt;center&gt;Product Booking&lt;/center&gt;" Width="500px" Font-Bold="True" Font-Names="Agency FB" Font-Size="25pt" ForeColor="White"></asp:Label>
   
    <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Style="z-index: 102;
        left: 914px; position: absolute; top: 334px; height: 24px; width: 355px;" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtldate"
        ErrorMessage="* Choose Your Leaving Date" Style="z-index: 103; left: 912px; position: absolute;
        top: 381px; width: 180px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#004F9D"
        BorderWidth="2px" DayNameFormat="Shortest" Font-Names="Arial" Font-Size="8pt"
        ForeColor="#004F9D" OnSelectionChanged="Calendar1_SelectionChanged" Style="z-index: 104; left: 913px; position: absolute; top: 187px; height: 169px;"
        Width="175px" Visible="False" TabIndex="10" CellPadding="1" CellSpacing="1" Font-Bold="True" Font-Italic="False">
        <SelectedDayStyle BackColor="#400000" Font-Bold="True" Font-Italic="False" ForeColor="White" />
        <TodayDayStyle BackColor="#004F9D" ForeColor="White" Font-Bold="True" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <OtherMonthDayStyle ForeColor="#999999" BackColor="White" />
        <DayStyle BackColor="White" Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="#004F9D" Wrap="True" />
        <NextPrevStyle Font-Size="8pt" ForeColor="White" BackColor="#004F9D" BorderColor="White" Font-Bold="True" Font-Italic="True" Font-Names="Arial" />
        <DayHeaderStyle BackColor="#336699" Font-Bold="True" BorderWidth="0px" Font-Italic="False" Font-Names="Arial" ForeColor="White" />
        <TitleStyle BackColor="#004F9D" Font-Bold="True" Font-Size="10pt" ForeColor="White" BorderColor="White" Font-Italic="False" Height="25px" />
        <WeekendDayStyle BackColor="White" />
    </asp:Calendar>
       <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#004F9D"
        BorderWidth="2px" DayNameFormat="Shortest" Font-Names="Arial" Font-Size="8pt"
        ForeColor="#004F9D" OnSelectionChanged="Calendar2_SelectionChanged" Style="z-index: 104; left: 913px; position: absolute; top: 371px; height: 169px;"
        Width="175px" Visible="False" TabIndex="10" CellPadding="1" CellSpacing="1" Font-Bold="True" Font-Italic="False">
        <SelectedDayStyle BackColor="#400000" Font-Bold="True" Font-Italic="False" ForeColor="White" />
        <TodayDayStyle BackColor="#004F9D" ForeColor="White" Font-Bold="True" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <OtherMonthDayStyle ForeColor="#999999" BackColor="White" />
        <DayStyle BackColor="White" Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="#004F9D" />
        <NextPrevStyle Font-Size="8pt" ForeColor="White" BackColor="#004F9D" BorderColor="White" Font-Bold="True" Font-Italic="True" Font-Names="Arial" />
        <DayHeaderStyle BackColor="#336699" Font-Bold="True" BorderWidth="0px" Font-Italic="False" Font-Names="Arial" ForeColor="White" />
        <TitleStyle BackColor="#004F9D" Font-Bold="True" Font-Size="10pt" ForeColor="White" BorderColor="White" Font-Italic="False" Height="25px" />
        <WeekendDayStyle BackColor="White" />
    </asp:Calendar>
   
    <asp:Button ID="btnclear" runat="server" Style="z-index: 108; left: 711px; position: absolute;
        top: 507px" Text="Clear" Width="75px" TabIndex="20" OnClick="btnclear_Click" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Font-Size="10pt" Height="25px" />
   
        </div> </form> </body> </html>