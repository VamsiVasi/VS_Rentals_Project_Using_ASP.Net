<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="update product.aspx.cs" Inherits="update_product" Title="Update Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table style="z-index: 100; left: 496px; width: 374px; position: absolute; top: 176px;
        height: 337px">
         <tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 9px; position: absolute;
                    top: 5px; width: 114px;" Text="Product Type" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
             <td style="width: 46px; height: 26px;">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Style="z-index: 101; left: 180px; position: absolute; top: 5px" Width="182px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" TabIndex="4">
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="* Choose Your Product Type" Style="z-index: 102; left: 366px; position: absolute;
                    top: 9px; width: 158px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" InitialValue="--Product Type--"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label2" runat="server" Style="z-index: 103; left: 9px; position: absolute;
                    top: 46px; width: 113px;" Text="Product Id" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 104; left: 180px;
                    position: absolute; top: 47px" Width="182px" TabIndex="5">
                    <asp:ListItem>--Product Id--</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2"
                    ErrorMessage="* Choose Your Product Id" Style="z-index: 105; left: 366px; position: absolute;
                    top: 52px; width: 152px;" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" InitialValue="--Product Id--"></asp:RequiredFieldValidator>
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
   
    <asp:Label ID="lblrent" runat="server" Style="z-index: 112; left: 9px;
        position: absolute; top: 213px; height: 20px;" Text="Rent / Sale" Visible="False" Width="95px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 107;
                    left: 153px; position: absolute; top: 86px" Text="Submit" Width="66px" TabIndex="6" Font-Bold="True" Font-Italic="True" ForeColor="#400000" />
                <asp:Label ID="Label5" runat="server" Style="z-index: 101; left: 9px; position: absolute;
                    top: 89px" Text="Product Name" Width="126px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White" Visible="False"></asp:Label></td>
            <td style="width: 46px; height: 26px;">
    <asp:TextBox ID="txtrent" runat="server" Style="z-index: 113; left: 180px; position: absolute;
        top: 214px" TabIndex="13" Visible="False" Width="174px" ValidationGroup="c3"></asp:TextBox>
   
                <asp:TextBox ID="txtproductname" runat="server" Style="z-index: 102; left: 180px;
                    position: absolute; top: 87px" Width="174px" TabIndex="6" ValidationGroup="c3" Visible="False"></asp:TextBox>
   
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label7" runat="server" Style="z-index: 105; left: 9px; position: absolute;
                    top: 129px; width: 157px; height: 42px;" Text="Product Details" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White" Visible="False"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:TextBox ID="txtdescription" runat="server" Height="56px" Style="z-index: 106;
                    left: 180px; position: absolute; top: 131px" TextMode="MultiLine" TabIndex="8" OnTextChanged="txtdescription_TextChanged" Visible="False" Width="176px" ValidationGroup="c3"></asp:TextBox>
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label9" runat="server" Style="z-index: 120; left: 9px; position: absolute;
                    top: 257px; width: 140px;" Text="Availability Status" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White" Visible="False"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:DropDownList ID="ddlstatus" runat="server" Style="z-index: 121; left: 180px;
                    position: absolute; top: 256px" TabIndex="16" OnSelectedIndexChanged="ddlstatus_SelectedIndexChanged" Visible="False" ValidationGroup="c3">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>True</asp:ListItem>
                    <asp:ListItem>False</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                <asp:Label ID="Label8" runat="server" Style="z-index: 107; left: 9px; position: absolute;
                    top: 297px" Text="Image" Width="88px" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White" Visible="False"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
   
    <asp:Button ID="btnsubmit" runat="server" Style="z-index: 115; left: 83px; position: absolute;
        top: 343px" Text="Update" Visible="False" OnClick="btnsubmit_Click" ValidationGroup="c3" TabIndex="14" Width="75px" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Height="25px" />
                <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 125; left: 180px;
                    position: absolute; top: 298px" TabIndex="18" Font-Bold="True" Font-Italic="True" ForeColor="#400000" Width="185px" Visible="False" />
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#400000" OnClick="Button2_Click" Style="z-index: 100; left: 214px; top: 342px; position: absolute; right: 85px;" TabIndex="5" Text="Cancel" Visible="False" Height="25px" Width="75px" />
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Style="z-index: 116;
        left: 19px; position: absolute; top: 382px; height: 30px;" Width="330px" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
                &nbsp;</td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr>
    </table>
   
  <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Underline="True" ForeColor="White" NavigateUrl="~/vendor.aspx" Style="z-index: 104; left: 571px; position: absolute; top: 89px; width: 225px;" Font-Names="Arial"><center>Click Here For Mainpage</center></asp:HyperLink>
   
   <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 100;
                    left: 488px; position: absolute; top: 115px;  text-align: center; height: 43px;"
                    Text="Update Products" Width="390px" Font-Names="Agency FB" Font-Size="25pt" Font-Underline="False"></asp:Label>
    
</asp:Content>

