<%@ Page Language="C#" MasterPageFile="~/vendor.master" AutoEventWireup="true"
    CodeFile="vendor.aspx.cs" Inherits="vendor" Title="Vendor Home Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
                  
    <asp:LinkButton ID="LinkButton2" runat="server" Style="z-index: 101; left: 267px; position: absolute;
        top: 144px; width: 145px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton2_Click" Font-Bold="True">View My Orders</asp:LinkButton>
    <asp:Label ID="lbluser" runat="server" Style="z-index: 100; left: 400px; position: absolute;
        top: 84px; height: 51px; width: 556px;" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva" Font-Size="XX-Large" ForeColor="White"></asp:Label>
    &nbsp;&nbsp;&nbsp;<br />
                  
    <asp:LinkButton ID="LinkButton5" runat="server" Style="z-index: 101; left: 465px; position: absolute;
        top: 144px; width: 113px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton5_Click" Font-Bold="True">Add Product</asp:LinkButton>
    &nbsp;<br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="False" ForeColor="White"
        Style="z-index: 104; left: 440px; position: absolute; top: 286px; height: 40px; width: 641px;" Text="No Current Orders Are Found Yet. Come Back Soon..." Font-Italic="False" Font-Names="Agency FB" Font-Size="25pt" Visible="False"></asp:Label>
    
    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/oops.png" Style="z-index: 101;
        left: 350px; position: absolute; top: 254px;" Visible="False" />
    <asp:Label ID="Label1" runat="server" Font-Bold="False" ForeColor="White"
        Style="z-index: 104; left: 479px; position: absolute; top: 286px; height: 40px; width: 641px;" Text="No Products Are Available In Your Catalog..." Font-Italic="False" Font-Names="Agency FB" Font-Size="25pt" Visible="False"></asp:Label>
    
    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/oops.png" Style="z-index: 101;
        left: 389px; position: absolute; top: 254px;" Visible="False" />
    
    <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 101; left: 1234px; position: absolute;
        top: 144px; width: 61px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton1_Click" Font-Bold="True">Signout</asp:LinkButton>
    &nbsp;<br />
    <asp:LinkButton ID="LinkButton4" runat="server" Style="z-index: 101; left: 49px; position: absolute;
        top: 144px; width: 145px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton4_Click" Font-Bold="True">View My Products</asp:LinkButton>
                  
    <asp:LinkButton ID="LinkButton8" runat="server" Style="z-index: 101; left: 1038px; position: absolute;
        top: 144px; width: 145px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton8_Click" Font-Bold="True">View My Profile</asp:LinkButton>
                  
    &nbsp;<br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton7" runat="server" Style="z-index: 101; left: 842px; position: absolute;
        top: 144px; width: 145px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton7_Click" Font-Bold="True">Delete Product</asp:LinkButton>
                  
    <br />
    &nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton6" runat="server" Style="z-index: 101; left: 641px; position: absolute;
        top: 144px; width: 145px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton6_Click" Font-Bold="True">Update Product</asp:LinkButton>
                  
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
        OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        PageSize="2" Style="z-index: 104; left: 1px; position: absolute; top: 173px; width: 1346px;" EnableModelValidation="True" Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Size="Small" ForeColor="#0066CC" CellPadding="4" CellSpacing="4" GridLines="None" AutoGenerateColumns="False" DataKeyNames="productid" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="productid" HeaderText="Product Id" SortExpression="productid" ReadOnly="True" />
            <asp:TemplateField HeaderText="Product">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#    "Handler.ashx?id=" + Eval("productid")  %>'
                         Width="200" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="productname" HeaderText="Product Name" SortExpression="productname" />
            <asp:BoundField DataField="producttype" HeaderText="Product Type" SortExpression="producttype" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:BoundField DataField="availstate" HeaderText="State" SortExpression="availstate" />
            <asp:BoundField DataField="availcity" HeaderText="City" SortExpression="availcity" />
            <asp:BoundField DataField="rent" HeaderText="Rent / Sale" SortExpression="rent" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="Medium" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" SelectCommand="SELECT [productid], [picture], [productname], [producttype], [description], [availstate], [availcity], [rent], [status] FROM [products] WHERE ([vendorname] = @vendorname)">
        <SelectParameters>
            <asp:SessionParameter Name="vendorname" SessionField="vuname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   <asp:GridView ID="GridView2" runat="server" AllowPaging="True"
        OnPageIndexChanging="GridView2_PageIndexChanging" OnSelectedIndexChanged="GridView2_SelectedIndexChanged"
        PageSize="2" Style="z-index: 104; left: 1px; position: absolute; top: 173px; width: 1346px;" EnableModelValidation="True" Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Size="Small" ForeColor="#0066CC" CellPadding="4" CellSpacing="4" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnRowDataBound="GridView2_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="Product Id" SortExpression="ProductId" />
            <asp:TemplateField HeaderText="Product">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#    "Handler.ashx?id=" + Eval("productid")  %>'
                         Width="200" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="productname" HeaderText="Product Name" SortExpression="productname" />
            <asp:BoundField DataField="producttype" HeaderText="Product Type" SortExpression="producttype" />
            <asp:BoundField DataField="bname" HeaderText="Customer Name" SortExpression="bname" />
            <asp:BoundField DataField="bemail" HeaderText="Customer Email Id" SortExpression="bemail" />
            <asp:BoundField DataField="bphnumber" HeaderText="Customer Number" SortExpression="bphnumber" />
            <asp:BoundField DataField="bnumpieces" HeaderText="Number Of Pieces" SortExpression="bnumpieces" />
            <asp:BoundField DataField="pdate" HeaderText="Pickup Date" DataFormatString="{0:D}" SortExpression="pdate" />
            <asp:BoundField DataField="ldate" HeaderText="Leaving Date" DataFormatString="{0:D}" SortExpression="ldate" />
            <asp:BoundField DataField="availstate" HeaderText="State" SortExpression="availstate" />
            <asp:BoundField DataField="availcity" HeaderText="City" SortExpression="availcity" />
            <asp:BoundField DataField="pplace" HeaderText="Place Of Delivery" SortExpression="pplace" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="Medium" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView> 
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" SelectCommand="SELECT booking.ProductId, products.picture, products.productname, products.producttype, booking.bname, booking.bemail, booking.bphnumber, booking.bnumpieces, booking.pdate, booking.ldate, products.availstate, products.availcity, booking.pplace FROM booking INNER JOIN products ON booking.ProductId = products.productid WHERE (booking.ldate &gt; GETDATE()) AND (products.vendorname = @vendorname)">
        <SelectParameters>
            <asp:SessionParameter Name="vendorname" SessionField="vuname" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
