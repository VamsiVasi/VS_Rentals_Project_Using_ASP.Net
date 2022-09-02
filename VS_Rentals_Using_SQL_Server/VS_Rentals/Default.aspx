<%@ Page Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 101;
        left: 19px; position: absolute; top: 174px" Text="About Us :" Width="109px" Font-Names="Monotype Corsiva" Font-Size="Large"></asp:Label>
    
    <table border="2" cellpadding="4" style="border-color: #ffffff; z-index: 104; left: 928px; width: 247px;
        position: absolute; top: 236px; height: 260px; ">
        <tr>
            <td style="width: 100px;">
                <asp:Label ID="Label4" runat="server" Height="19px" Style="z-index: 100; left: 8px;
                    position: absolute; top: 54px" Text="User Name" Width="76px" Font-Bold="True" ForeColor="White" Font-Italic="True" Font-Size="Medium"></asp:Label>
                <asp:TextBox ID="txtuser" runat="server" Style="z-index: 101; left: 93px; position: absolute;
                    top: 51px" Width="112px" TabIndex="4" OnTextChanged="txtuser_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuser"
                    ErrorMessage="* Please  Enter Username" Style="z-index: 102; left: 218px; position: absolute;
                    top: 54px; width: 172px;" ValidationGroup="memberlogin" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:Label ID="Label12" runat="server" Style="z-index: 103; left: 9px; position: absolute;
                    top: 99px" Text="Password" Width="76px" Font-Bold="True" ForeColor="White" Font-Italic="True"></asp:Label>
                <asp:TextBox ID="txtpwd" runat="server" Style="z-index: 104; left: 94px; position: absolute;
                    top: 94px" TextMode="Password" Width="112px" TabIndex="5" OnTextChanged="txtpwd_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"
                    ErrorMessage="* Please Enter Password" Style="z-index: 105; left: 219px; position: absolute;
                    top: 98px; width: 169px;" ValidationGroup="memberlogin" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:Button ID="btnlogin" runat="server" Style="z-index: 106; left: 90px; position: absolute;
                    top: 143px; width: 54px;" Text="Login" OnClick="Button1_Click" TabIndex="6" Font-Bold="True" ForeColor="#400000" ValidationGroup="memberlogin" Font-Italic="True" />
                <asp:Label ID="Label13" runat="server" Style="z-index: 107; left: 11px; position: absolute;
                    top: 188px" Text="New Vendor?" Width="106px" ForeColor="#400000" Font-Bold="True" Font-Italic="True"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/signup.aspx" Style="z-index: 108;
                    left: 139px; top:187px; position: absolute;" Width="70px" TabIndex="7" ForeColor="Black" Font-Bold="True" Font-Italic="True">Sign Up</asp:HyperLink>
                <asp:Label ID="Label14" runat="server" Style="z-index: 109; left: 10px; position: absolute;
                    top: 223px; width: 122px;" Text="Forgot Password?" ForeColor="#400000" Font-Bold="True" Font-Italic="True"></asp:Label>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgotpassword.aspx" Style="z-index: 110;
                    left: 139px; position: absolute; top: 223px; width: 74px;" TabIndex="8" ForeColor="Black" Font-Bold="True" Font-Italic="True">Click Here</asp:HyperLink>
                <asp:Label ID="Label15" runat="server" Style="z-index: 112; left: 47px; position: absolute;
                    top: 12px; text-align: center; height: 37px; width: 145px;" Text="Vendor Login" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Font-Italic="True" Font-Names="Monotype Corsiva"></asp:Label>
            </td>
        </tr>
    </table>
    <div style="text-align: left">
        <div style="text-align: left">
            <table border="0" cellpadding="0" style="z-index: 105; left: 16px; width: 211px; position: absolute;
                top: 202px; height: 275px">
                <tr>
                    <td align="left" rowspan="" style="width: 200px; color: #FFFFFF; font-style: italic; font-variant: normal;" valign="middle">
                        VS Rentals is a one stop rental portal. It provides
                        online rental platform for Air Conditioners, Audio Visuals, Automobiles, Computers, Furniture, Home Appliances, Office Equipments, Party Rentals and also provides 
                        Relocation Services anywhere.&nbsp;<br />
                        <br />
                        &nbsp; &nbsp;VS Rentals provides the facility to make the online orders and get everything ready well in advance from anywhere in India.
                        <table style="z-index: 100; left: -7px; width: 225px; position: absolute;
                            top: -40px; height: 378px">
                            <tr>
                                <td style="width: 100px">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    
    <table style="z-index: 101; left: 255px; width: 650px; position: absolute; top: 166px;
        border-collapse: separate; height: 305px" cellpadding="2" cellspacing="2">
        <tr>
            <td style="width: 112px; height: 121px">
                <asp:HyperLink ID="HyperLink4" runat="server"  Font-Bold="True" Height="22px" NavigateUrl="~/audiovisuals.aspx"
                    Style="z-index: 101; left: 248px; position: absolute; top: 93px; text-align: center; width: 148px;" Font-Underline="True" TabIndex="12" ForeColor="White" Font-Names="Monotype Corsiva" Font-Size="X-Large">Audio Visuals</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/images/1.jpg" NavigateUrl="~/audiovisuals.aspx"
                    Style="z-index: 103; left: 236px; position: absolute; top: 5px; width: 172px; height: 87px;" TabIndex="9">HyperLink</asp:HyperLink>   
            </td>
            <td style="width: 114px; height: 121px">
            
                <asp:HyperLink ID="HyperLink22" runat="server" Font-Bold="True" Height="22px" NavigateUrl="~/automobile.aspx"
                    Style="z-index: 101; left: 485px; position: absolute; top: 93px; text-align: center"
                    Width="111px" Font-Underline="True" TabIndex="12" ForeColor="White" Font-Names="Monotype Corsiva" Font-Size="X-Large">Automobiles</asp:HyperLink>
                
            
                <asp:HyperLink ID="HyperLink25" runat="server" Height="73px" ImageUrl="~/images/most-expensive-cars-2021-Maserati-MC20-luxe-digital@2x.jpg" NavigateUrl="~/automobile.aspx"
                    Style="z-index: 103; left: 455px; position: absolute; top: 4px; width: 171px;" TabIndex="11">HyperLink</asp:HyperLink>
                
            
            </td>
            
            <td style="width: 114px; height: 121px">
            
                <asp:HyperLink ID="HyperLink32" runat="server" Height="25px" NavigateUrl="~/homeappliances.aspx"
                    Style="z-index: 101; left: 448px; position: absolute; top: 215px; text-align: center; width: 185px;" Font-Bold="True" Font-Underline="True" ForeColor="White" TabIndex="21" Font-Names="Monotype Corsiva" Font-Size="X-Large">Home Appliances</asp:HyperLink>
                <asp:HyperLink ID="HyperLink33" runat="server" ImageUrl="~/images/homeappli.jpg" NavigateUrl="~/homeappliances.aspx"
                    Style="z-index: 100; left: 455px; position: absolute; top: 125px; width: 171px;" TabIndex="20">HyperLink</asp:HyperLink>
            </td>
            
        </tr>
        <tr>
            <td style="width: 112px; height: 123px;">
             
                <asp:HyperLink ID="HyperLink23" runat="server"  Height="23px" NavigateUrl="~/airconditioners.aspx"
                    Style="z-index: 100; left: 23px; position: absolute; top: 93px; text-align: center; width: 167px;" Font-Bold="True" Font-Underline="True" ForeColor="White" TabIndex="14" Font-Names="Monotype Corsiva" Font-Size="X-Large"><center>Air Conditioners</center></asp:HyperLink>
             
                <asp:HyperLink ID="HyperLink24" runat="server"  ImageUrl="~/images/cooling.jpg" NavigateUrl="~/airconditioners.aspx"
                    Style="z-index: 101; left: 19px; position: absolute; top: 5px" TabIndex="13">HyperLink</asp:HyperLink>
             
            </td>
            <td style="width: 114px; height: 123px;">
                
                <asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="~/furniture.aspx" Style="z-index: 103;
                    left: 259px; position: absolute; top: 216px; text-align: center" Width="129px" Font-Bold="True" Font-Underline="True" ForeColor="White" TabIndex="16" Font-Names="Monotype Corsiva" Font-Size="X-Large">Furniture</asp:HyperLink>
                
                <asp:HyperLink ID="HyperLink27" runat="server"  ImageUrl="~/images/Living-Room-Banner.jpg" NavigateUrl="~/furniture.aspx"
                    Style="z-index: 100; left: 238px; position: absolute; top: 126px; vertical-align: middle; text-align: center; width: 176px; height: 88px;" TabIndex="15">HyperLink</asp:HyperLink>
                
            </td>
            <td style="width: 114px; height: 123px;">
                
                <asp:HyperLink ID="HyperLink34" runat="server" Height="25px" NavigateUrl="~/computers.aspx"
                    Style="z-index: 101; left: 36px; position: absolute; top: 216px; text-align: center"
                    Width="142px" Font-Bold="True" Font-Underline="True" ForeColor="White" TabIndex="21" Font-Names="Monotype Corsiva" Font-Size="X-Large">Computers</asp:HyperLink>
                <asp:HyperLink ID="HyperLink35" runat="server" ImageUrl="~/images/Computer-Data.jpg" NavigateUrl="~/computers.aspx"
                    Style="z-index: 103; left: 19px; position: absolute; top: 127px; vertical-align: middle; text-align: center; width: 177px; height: 88px; right: 454px;" TabIndex="22">HyperLink</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 120px;">
            
                <asp:HyperLink ID="HyperLink28" runat="server" NavigateUrl="~/officeequipments.aspx" Style="z-index: 103;
                    left: 14px; position: absolute; top: 337px; text-align: center; width: 191px;" Font-Bold="True" Font-Underline="True" ForeColor="White" TabIndex="17" Font-Names="Monotype Corsiva" Font-Size="X-Large">Office Equipments</asp:HyperLink>
            
                <asp:HyperLink ID="HyperLink29" runat="server"  ImageUrl="~/images/office.jpg" NavigateUrl="~/officeequipments.aspx"
                    Style="z-index: 100; left: 21px; position: absolute; top: 249px; width: 174px; height: 88px;" TabIndex="17">HyperLink</asp:HyperLink>
            
            </td>
            <td style="width: 114px; height: 120px;">
            
                <asp:HyperLink ID="HyperLink30" runat="server" Font-Bold="True" Font-Italic="False"
                    NavigateUrl="~/partyrentals.aspx" Style="z-index: 101; left: 257px; position: absolute;
                    top: 337px; text-align: center" Width="133px" Font-Underline="True" ForeColor="White" TabIndex="19" Font-Names="Monotype Corsiva" Font-Size="X-Large">Party Rentals</asp:HyperLink>
            
                <asp:HyperLink ID="HyperLink31" runat="server"  ImageUrl="~/images/party-equipment-hire.jpg" NavigateUrl="~/partyrentals.aspx"
                    Style="z-index: 100; left: 238px; position: absolute; top: 249px; vertical-align: middle; text-align: center; width: 171px;" Height="58px" TabIndex="18">HyperLink</asp:HyperLink>
            
            </td>
           </tr>
    </table>
    

    <asp:Label ID="Label16" runat="server" Font-Size="Large" ForeColor="Red" Height="42px"
        Style="z-index: 103; left: 922px; position: absolute; top: 499px; width: 259px;" Font-Bold="True" Font-Italic="True"></asp:Label>
    
    <asp:HyperLink ID="HyperLink21" runat="server" Font-Bold="True" Font-Size="X-Large"
        ForeColor="White" Style="z-index: 104; left: 942px; position: absolute; top: 172px; width: 216px;" NavigateUrl="~/adminlogin1.aspx" Font-Italic="True" Font-Names="Monotype Corsiva"><center>Administrator Login</center></asp:HyperLink>
   
    <asp:HyperLink ID="HyperLink6" runat="server"  ImageUrl="~/images/relocation-package-advice.jpg" NavigateUrl="~/relocations.aspx"
                    Style="z-index: 101; left: 711px; position: absolute; top: 414px" TabIndex="13">HyperLink</asp:HyperLink>
    <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Italic="False"
                    NavigateUrl="~/relocations.aspx" Style="z-index: 101; left: 732px; position: absolute;
                    top: 504px; text-align: center" Width="133px" Font-Underline="True" ForeColor="White" TabIndex="19" Font-Names="Monotype Corsiva" Font-Size="X-Large">Relocations</asp:HyperLink>
    
</asp:Content>

