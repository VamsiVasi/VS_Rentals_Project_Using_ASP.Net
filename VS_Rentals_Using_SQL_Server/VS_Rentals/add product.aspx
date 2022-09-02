<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add product.aspx.cs" Inherits="add_product" Title="Add Product" %>
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
    </script>
</head>
<body background="images/caribbean-sea-sky-clouds (1).JPG" >
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" style="z-index: 100; left: 1px;
            width: 100%; position: absolute; top: 6px; height: 102%">
            <tr>
                <td style="width: 977px; height: 82px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="36pt"
                        Height="50px" Style="z-index: 100; left: 461px; vertical-align: middle; position: absolute;
                        top: 11px; text-align: center; width: 426px;" Text=" VS Rentals" Font-Names="Monotype Corsiva" ForeColor="White" EnableTheming="True"></asp:Label>
                    
                </td>
            </tr>
            </table>
    <table style="z-index: 100; left: 483px; width: 399px; position: absolute; top: 182px;
        height: 337px">
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="lblvendor" runat="server" Style="z-index: 110; left: 8px; position: absolute;
                    top: 5px" Text="Vendor Name" Width="125px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtvendor" runat="server" Style="z-index: 111; left: 180px; position: absolute;
                    top: 4px" Width="204px" TabIndex="4" OnTextChanged="txtvendor_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label6" runat="server" Style="z-index: 103; left: 8px; position: absolute;
                    top: 45px; width: 157px;" Text="Product Category" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 104; left: 180px;
                    position: absolute; top: 46px" Width="212px" TabIndex="5" Height="21px">
                    <asp:ListItem>--Product Type--</asp:ListItem>
                   <asp:ListItem Text="Air Conditioners" Value="Air Conditioners"></asp:ListItem>
                    <asp:ListItem Text="Audio Visuals" Value="Audio Visuals"></asp:ListItem>
                    <asp:ListItem Text="Automobiles" Value="Automobiles"></asp:ListItem>
                    <asp:ListItem Text="Computers" Value="Computers"></asp:ListItem>
                    <asp:ListItem Text="Furniture" Value="Furniture"></asp:ListItem>
                    <asp:ListItem Text="Home Appliances" Value="Home Appliances"></asp:ListItem>
                    <asp:ListItem Text="Office Equipments" Value="Office Equipments"></asp:ListItem>
                    <asp:ListItem Text="Party Rentals" Value="Party Rentals"></asp:ListItem>
                    <asp:ListItem Text="Relocations" Value="Relocations"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList3"
                    ErrorMessage="* Choose Your Product Category" Style="z-index: 122; left: 398px; position: absolute;
                    top: 52px; width: 187px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" InitialValue="--Product Type--"></asp:RequiredFieldValidator>
                </td>
            </tr>
        
        <tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label5" runat="server" Style="z-index: 101; left: 8px; position: absolute;
                    top: 129px" Text="Product Name" Width="126px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtproductname" runat="server" Style="z-index: 102; left: 180px;
                    position: absolute; top: 130px" Width="204px" TabIndex="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdescription"
                    ErrorMessage="*  Please Enter Your Product Details" Style="z-index: 109; left: 398px; position: absolute;
                    top: 197px; width: 201px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
  
    
    <asp:Label ID="lblmsg" runat="server" Style="z-index: 103; left: 401px;
        position: absolute; top: 91px; width: 173px; height: 24px;" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Red" TabIndex="21"></asp:Label>
  
                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="lblacity" runat="server" Style="z-index: 113; left: 8px; position: absolute;
                    top: 297px; right: 273px;" Text="Available City" Width="118px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 114; left: 180px; position: absolute;
                    top: 299px" TabIndex="7" Width="190px" Height="22px">
                    <asp:ListItem>--City--</asp:ListItem>
                    
                </asp:DropDownList>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2"
                    ErrorMessage="* Choose Your City" Style="z-index: 123; left: 376px; position: absolute;
                    top: 303px; width: 131px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" InitialValue="--City--"></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label7" runat="server" Style="z-index: 105; left: 8px; position: absolute;
                    top: 173px; width: 189px; height: 49px;" Text="Product Details" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                <asp:TextBox ID="txtdescription" runat="server" Style="z-index: 106;
                    left: 180px; position: absolute; top: 172px; height: 57px;" TextMode="MultiLine" TabIndex="8" OnTextChanged="txtdescription_TextChanged" Width="206px"></asp:TextBox>
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtproductname"
                    ErrorMessage="*  Please Enter Your Product Name" Style="z-index: 109; left: 398px; position: absolute;
                    top: 135px; width: 201px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
               
                <asp:Label ID="lblrent" runat="server" Style="z-index: 117; left: 8px;
                    position: absolute; top: 342px; height: 20px;" Text="Rent / Sale" Width="95px" Font-Bold="True" Font-Italic="True" ForeColor="White"></asp:Label>
               
                <asp:Label ID="Label11" runat="server" Style="z-index: 100; left: 8px; position: absolute;
                    top: 257px; height: 34px; width: 143px;" Text="Available State" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="* Choose Your State" Style="z-index: 123; left: 376px; position: absolute;
                    top: 262px; width: 131px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
               
                </td>
            <td style="width: 46px; height: 26px;">
               
                <asp:TextBox ID="txtrent" runat="server" Style="z-index: 119; left: 180px; position: absolute;
                    top: 341px" TabIndex="15" Width="182px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtrent"
                    ErrorMessage="* Please Specify Your Rent / Sale" Style="z-index: 124; left: 376px; position: absolute;
                    top: 346px; width: 182px; height: 23px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 100; left: 180px;
                    position: absolute; top: 257px" Width="190px" Height="22px" TabIndex="11" DataSourceID="SqlDataSource1" DataTextField="state" DataValueField="stateid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    
                </asp:DropDownList>

                </td>
            </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label9" runat="server" Style="z-index: 120; left: 8px; position: absolute;
                    top: 381px; width: 154px;" Text="Availability Status" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:DropDownList ID="ddlstatus" runat="server" Style="z-index: 121; left: 180px;
                    position: absolute; top: 382px" TabIndex="16" OnSelectedIndexChanged="ddlstatus_SelectedIndexChanged" Height="20px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>True</asp:ListItem>
                    <asp:ListItem>False</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" style="z-index:auto;position:absolute; top: 387px; left: 265px; width: 174px; height: 16px;" runat="server" ErrorMessage="* Choose Your Product Status" ControlToValidate="ddlstatus" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" InitialValue="--Select--"></asp:RequiredFieldValidator>
                </td>
            </tr>
         <tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr> <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="lblpid" runat="server" Style="z-index: 127; left: 8px; position: absolute;
                    top: 89px; width: 99px; height: 68px;" Text="Product Id" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtpid" onkeypress="return ValidNumeric()" runat="server" Style="z-index: 128; left: 180px; position: absolute;
                    top: 87px" TabIndex="17" Width="204px" OnTextChanged="txtpid_TextChanged" MaxLength="5" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpid"
                    ErrorMessage="* Please Enter Product Id" Style="z-index: 131; left: 398px; position: absolute;
                    top: 92px; height: 18px; width: 160px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpid"
                    ErrorMessage="* Product Id Must Be 3-5 Digits" Style="z-index: 132; left: 398px; position: absolute;
                    top: 92px; width: 178px;" ValidationExpression="\d{3,5}" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RegularExpressionValidator>
              
                </td>
            </tr> <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Style="z-index: 126;
                    left: 96px; position: absolute; top: 466px" Text="Add" Width="75px" TabIndex="19" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Height="25px" />
    <asp:Button ID="Button2" runat="server" Style="z-index: 129; position: absolute;
       left:227px; top: 466px" Text="Clear" Width="75px" OnClick="Button2_Click" TabIndex="24" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Height="25px" />
                <asp:Label ID="Label8" runat="server" Style="z-index: 107; left: 8px; position: absolute;
                    top: 425px" Text="Image" Width="88px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 125; left: 180px;
                    position: absolute; top: 424px" TabIndex="18" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Width="193px" Height="22px" />
                </td>
            </tr> <tr>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 46px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1"
                    ErrorMessage="* Please Upload Product Image" Style="z-index: 108; left: 376px; position: absolute;
                    top: 429px; width: 179px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
               
                </td>
            </tr>
        </table>        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 100;
                    left: 489px; position: absolute; top: 121px;  text-align: center; height: 43px;"
                    Text="Add Products" Width="390px" Font-Names="Agency FB" Font-Size="25pt" Font-Underline="False"></asp:Label>
             
                <asp:Label ID="lblavail" runat="server" Style="z-index: 134; left: 115px; position: absolute;
                    top: 141px; height: 20px; width: 68px; margin-bottom: 0px;" Visible="False" TabIndex="20"></asp:Label>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" SelectCommand="SELECT * FROM [state] ORDER BY [stateid]"></asp:SqlDataSource>
</div>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Underline="True" ForeColor="White" NavigateUrl="~/vendor.aspx" Style="z-index: 104; left: 572px; position: absolute; top: 95px; width: 225px;" Font-Names="Arial"><center>Click Here For Mainpage</center></asp:HyperLink>
        
    </form>
</body> </html>
