<%@ Page Language="C#" MasterPageFile="~/selectcategory.master" AutoEventWireup="true" CodeFile="computers.aspx.cs" Inherits="select_city4" Title="Computers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Size="Large" Font-Underline="True" ForeColor="White" NavigateUrl="~/Default.aspx" Style="z-index: 104; left: 571px; position: absolute; top: 89px; width: 225px;"><center>Click Here For Homepage</center></asp:HyperLink>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="25pt" Font-Underline="False" ForeColor="White" Style="z-index: 100;
                    left: 488px; position: absolute; top: 115px;  text-align: center; height: 43px;" Text="Computers" Width="390px"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Computers" Visible="False"></asp:Label>
    <asp:GridView ID="GridView1" runat="server"
        OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        PageSize="2" Style="z-index: 104; left: 1px; position: absolute; top: 176px; width: 1346px;" EnableModelValidation="True" Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Size="Small" ForeColor="#0066CC" CellPadding="4" CellSpacing="4" GridLines="None" AutoGenerateColumns="False" DataKeyNames="productid" DataSourceID="SqlDataSource1" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField NavigateUrl="~/booking.aspx" Text="Book" />
            <asp:TemplateField HeaderText="Product">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#    "Handler.ashx?id=" + Eval("productid")  %>'
                        Width="200" />
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:BoundField DataField="productid" HeaderText="Product Id" SortExpression="productid" ReadOnly="True" />
            <asp:BoundField DataField="productname" HeaderText="Product Name" SortExpression="productname" />
            <asp:BoundField DataField="producttype" HeaderText="Product Type" SortExpression="producttype" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:BoundField DataField="rent" HeaderText="Rent / Sale" SortExpression="rent" />
            <asp:BoundField DataField="availstate" HeaderText="State" SortExpression="availstate" />
            <asp:BoundField DataField="availcity" HeaderText="City" SortExpression="availcity" />
            <asp:BoundField DataField="vendorname" HeaderText="Vendor Name" SortExpression="vendorname" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="Medium" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" SelectCommand="SELECT picture, productid, productname, producttype, description, rent, availstate, availcity, vendorname FROM products WHERE (producttype = @producttype)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Computers" Name="producttype" Type="String" />
            
        </SelectParameters>
    </asp:SqlDataSource>
     <asp:Image ID="Image1" runat="server" ImageUrl="~/images/oops.png" Style="z-index: 101;
        left: 353px; position: absolute; top: 254px;" />
    <asp:Label ID="Label2" runat="server" Font-Bold="False" ForeColor="White"
        Style="z-index: 104; left: 444px; position: absolute; top: 286px; height: 40px; width: 549px;" Text="No Products Are Found According To Your Request." Font-Italic="False" Font-Names="Agency FB" Font-Size="25pt"></asp:Label>
</asp:Content>

