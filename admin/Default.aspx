<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_cars" runat="server" ConnectionString="<%$ ConnectionStrings:TGLAVAN_HW7 %>" DeleteCommand="DELETE FROM [TGLAVAN_HW7] WHERE [VehicleID] = @VehicleID" InsertCommand="INSERT INTO [TGLAVAN_HW7] ([Make], [Model], [Year], [MSRP], [BHP], [Engine], [Layout], [Transmission]) VALUES (@Make, @Model, @Year, @MSRP, @BHP, @Engine, @Layout, @Transmission)" SelectCommand="SELECT * FROM [TGLAVAN_HW7]" UpdateCommand="UPDATE [TGLAVAN_HW7] SET [Make] = @Make, [Model] = @Model, [Year] = @Year, [MSRP] = @MSRP, [BHP] = @BHP, [Engine] = @Engine, [Layout] = @Layout, [Transmission] = @Transmission WHERE [VehicleID] = @VehicleID">
            <DeleteParameters>
                <asp:Parameter Name="VehicleID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="MSRP" Type="Int32" />
                <asp:Parameter Name="BHP" Type="Int32" />
                <asp:Parameter Name="Engine" Type="String" />
                <asp:Parameter Name="Layout" Type="String" />
                <asp:Parameter Name="Transmission" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="MSRP" Type="Int32" />
                <asp:Parameter Name="BHP" Type="Int32" />
                <asp:Parameter Name="Engine" Type="String" />
                <asp:Parameter Name="Layout" Type="String" />
                <asp:Parameter Name="Transmission" Type="String" />
                <asp:Parameter Name="VehicleID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        Admin Home Page<br />
        <br />
        <asp:HyperLink ID="hl_newVehicle" runat="server" NavigateUrl="~/admin/newcar.aspx">New Vehicle</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hl_viewAll" runat="server" NavigateUrl="~/admin/viewallcars.aspx">View All Cars</asp:HyperLink>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="VehicleID" DataSourceID="sql_cars">
            <Columns>
                <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:HyperLinkField DataNavigateUrlFields="VehicleID" DataNavigateUrlFormatString="cardetails.aspx?VehicleID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
