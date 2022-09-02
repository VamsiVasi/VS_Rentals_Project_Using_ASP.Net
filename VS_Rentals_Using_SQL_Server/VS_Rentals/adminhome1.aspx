<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminhome1.aspx.cs" Inherits="adminhome1" Title="Administrator Home Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="lbluser" runat="server" Style="z-index: 100; left: 400px; position: absolute;
        top: 84px; height: 51px; width: 556px;" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva" Font-Size="XX-Large" ForeColor="White"><center>* Welcome VS *</center></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton4" runat="server" Style="z-index: 101; left: 646px; position: absolute;
        top: 144px; width: 145px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton4_Click" Font-Bold="True">View All Products</asp:LinkButton>
                  
    <asp:LinkButton ID="LinkButton2" runat="server" Style="z-index: 101; left: 63px; position: absolute;
        top: 144px; width: 145px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton2_Click" Font-Bold="True">View All Bookings</asp:LinkButton>
    <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 101; left: 1213px; position: absolute;
        top: 144px; width: 61px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton1_Click" Font-Bold="True">Signout</asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server" Style="z-index: 101; left: 354px; position: absolute;
        top: 144px; width: 145px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton3_Click" Font-Bold="True">View Vendors List</asp:LinkButton>
    <br />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton5" runat="server" Style="z-index: 101; left: 933px; position: absolute;
        top: 144px; width: 145px;" TabIndex="2" Font-Italic="False" Font-Names="Arial" ForeColor="White" OnClick="LinkButton5_Click" Font-Bold="True">View Feedbacks</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
        OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        PageSize="2" Style="z-index: 104; left: 1px; position: absolute; top: 173px; width: 1346px;" EnableModelValidation="True" Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Size="Small" ForeColor="#0066CC" CellPadding="4" CellSpacing="4" GridLines="None" AutoGenerateColumns="False" DataKeyNames="productid" DataSourceID="SqlDataSource2" OnRowDataBound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="productid" HeaderText="Product Id" ReadOnly="True" SortExpression="productid" />
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
            <asp:BoundField DataField="rent" HeaderText="Rent / Sale" SortExpression="rent" />
           
            
            <asp:BoundField DataField="pdate" HeaderText="Pickup Date" DataFormatString="{0:D}" SortExpression="pdate" />
            <asp:BoundField DataField="ldate" HeaderText="Leaving Date" DataFormatString="{0:D}" SortExpression="ldate" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" SelectCommand="SELECT products.productid, products.picture, products.productname, products.producttype, booking.bname, booking.bemail, booking.bphnumber, booking.bnumpieces, products.rent, booking.pdate, booking.ldate, products.availstate, products.availcity, products.vendorname FROM booking INNER JOIN products ON booking.ProductId = products.productid"></asp:SqlDataSource>
    
    
    <asp:GridView ID="GridView2" runat="server"
        OnPageIndexChanging="GridView2_PageIndexChanging" OnSelectedIndexChanged="GridView2_SelectedIndexChanged"
        PageSize="4" Style="z-index: 104; left: 41px; position: absolute; top: 173px; width: 1263px;" EnableModelValidation="True" Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Size="Medium" ForeColor="#0066CC" CellPadding="4" CellSpacing="4" GridLines="None" AutoGenerateColumns="False" DataKeyNames="vuname" DataSourceID="SqlDataSource1">
        <Columns>
<asp:BoundField HeaderText="Vendor Name" DataField="vuname" ReadOnly="True" SortExpression="vuname"></asp:BoundField>
<asp:BoundField DataField="vdate" HeaderText="Date Of Birth" DataFormatString="{0:D}" SortExpression="vdate"></asp:BoundField>
            <asp:BoundField DataField="vmobile" HeaderText="Mobile"  SortExpression="vmobile" />
            <asp:BoundField DataField="vtel" HeaderText="Telephone" SortExpression="vtel" />
            <asp:BoundField DataField="vemail" HeaderText="Email Id" SortExpression="vemail" />
            <asp:BoundField DataField="vstate" HeaderText="State" SortExpression="vstate" />
            <asp:BoundField DataField="vcity" HeaderText="City" SortExpression="vcity" />
            <asp:BoundField DataField="vgender" HeaderText="Gender" SortExpression="vgender" />
        </Columns>
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="Medium" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" SelectCommand="SELECT [vuname], [vdate], [vmobile], [vtel], [vemail], [vstate], [vcity], [vgender] FROM [vendortab]"></asp:SqlDataSource>
    
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True"
        OnPageIndexChanging="GridView3_PageIndexChanging" OnSelectedIndexChanged="GridView3_SelectedIndexChanged"
        PageSize="2" Style="z-index: 104; left: 1px; position: absolute; top: 173px; width: 1346px;" EnableModelValidation="True" Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Size="Small" ForeColor="#0066CC" CellPadding="4" CellSpacing="4" GridLines="None" AutoGenerateColumns="False" DataKeyNames="productid" DataSourceID="SqlDataSource3" OnRowDataBound="GridView3_RowDataBound">
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
            <asp:BoundField DataField="vendorname" HeaderText="Vendor Name" SortExpression="vendorname" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="Medium" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" SelectCommand="SELECT  [productid], [picture], [productname], [producttype], [description], [availstate], [availcity], [rent], [status], [vendorname] FROM [products]"></asp:SqlDataSource>
    
    <asp:GridView ID="GridView4" runat="server"
        OnPageIndexChanging="GridView4_PageIndexChanging" OnSelectedIndexChanged="GridView4_SelectedIndexChanged"
        PageSize="4" Style="z-index: 104; left: 41px; position: absolute; top: 173px; width: 1263px;" EnableModelValidation="True" Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Size="Medium" ForeColor="#0066CC" CellPadding="4" CellSpacing="4" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
        <Columns>
<asp:BoundField HeaderText="Name" DataField="fname" SortExpression="fname"></asp:BoundField>
<asp:BoundField DataField="femail" HeaderText="Email Id" SortExpression="femail"></asp:BoundField>
            <asp:BoundField DataField="feedback" HeaderText="Feedback"  SortExpression="feedback" />
        </Columns>
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="Medium" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:rentConnectionString %>" SelectCommand="SELECT [fname], [femail], [feedback] FROM [feedback]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

