 <%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true" CodeFile="deleteproduct.aspx.cs" Inherits="deleteproduct" Title="Delete Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="z-index: 100; left: 496px; width: 374px; position: absolute; top: 176px;
        height: 337px">
         <tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 9px; position: absolute;
        top: 5px; height: 20px; width: 113px;" Text="Product Type" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                                </td>
              <td style="width: 46px; height: 26px;">
   
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
        Style="z-index: 102; left: 180px; position: absolute; top: 5px" AutoPostBack="True" Width="182px" TabIndex="4">
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
        ErrorMessage="* Choose Your Product Type" Style="z-index: 103; left: 366px; position: absolute;
                    top: 9px; width: 159px;" InitialValue="--Product Type--" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
   
                </td>
             </tr>
       <tr>
            <td style="width: 46px; height: 26px;">
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
    <asp:Label ID="Label2" runat="server" Style="z-index: 104; left: 9px; position: absolute;
                    top: 46px; width: 101px;" Text="Product Id" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td style="width: 46px; height: 26px;">
    
   
    <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 106; left: 180px;
                    position: absolute; top: 47px" Width="182px" TabIndex="5">
        <asp:ListItem>--Product Id--</asp:ListItem>
    </asp:DropDownList>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2"
        ErrorMessage="* Choose Your Product Id" Style="z-index: 110; left: 366px; position: absolute;
                    top: 52px; width: 170px;" InitialValue="--Product Id--" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
    
   
                </td>
            </tr><tr>
            <td style="width: 46px; height: 26px;">
    
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 107;
        left: 153px; position: absolute; top: 86px" Text="Submit" Width="66px" TabIndex="6" Font-Bold="True" Font-Italic="True" ForeColor="#400000" />
   
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
                </td>
            <td style="width: 46px; height: 26px;">
                </td>
            </tr>
       </table>
   


    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Underline="True" ForeColor="White" NavigateUrl="~/vendor.aspx" Style="z-index: 104; left: 571px; position: absolute; top: 89px; width: 225px;" Font-Names="Arial"><center>Click Here For Mainpage</center></asp:HyperLink>

   
   <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 100;
                    left: 488px; position: absolute; top: 115px;  text-align: center; height: 43px;"
                    Text="Delete Products" Width="390px" Font-Names="Agency FB" Font-Size="25pt" Font-Underline="False"></asp:Label>
  
   
</asp:Content>

