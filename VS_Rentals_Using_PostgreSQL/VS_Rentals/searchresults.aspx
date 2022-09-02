<%@ Page Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="searchresults.aspx.cs" Inherits="searchresults" Title="Search Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
        OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        PageSize="2" Style="z-index: 104; left: 1px; position: absolute; top: 143px; width: 1346px;" EnableModelValidation="True" Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Size="Small" ForeColor="#0066CC" CellPadding="4" CellSpacing="4" GridLines="None" AutoGenerateColumns="False" DataKeyNames="productid" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" ProviderName="<%$ ConnectionStrings:rentConnectionString.ProviderName %>" SelectCommand="SELECT picture, productid, productname, producttype, description, rent, availstate, availcity, vendorname FROM products WHERE ((producttype = @producttype) AND (availcity = @availcity))">
        <SelectParameters>
            <asp:SessionParameter Name="producttype" SessionField="category" Type="String" />
            <asp:SessionParameter Name="availcity" SessionField="city" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   
</asp:Content>

