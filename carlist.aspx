﻿<%@ Page Title="" Language="VB" MasterPageFile="~/cars.master" AutoEventWireup="false" CodeFile="carlist.aspx.vb" Inherits="carlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> car list </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:SqlDataSource ID="sql_carlist" runat="server" ConnectionString="<%$ ConnectionStrings:TGLAVAN_HW7 %>" DeleteCommand="DELETE FROM [TGLAVAN_HW7] WHERE [VehicleID] = @VehicleID" InsertCommand="INSERT INTO [TGLAVAN_HW7] ([Make], [Model], [Year], [MSRP], [BHP], [Engine], [Layout], [Transmission]) VALUES (@Make, @Model, @Year, @MSRP, @BHP, @Engine, @Layout, @Transmission)" SelectCommand="SELECT * FROM [TGLAVAN_HW7]" UpdateCommand="UPDATE [TGLAVAN_HW7] SET [Make] = @Make, [Model] = @Model, [Year] = @Year, [MSRP] = @MSRP, [BHP] = @BHP, [Engine] = @Engine, [Layout] = @Layout, [Transmission] = @Transmission WHERE [VehicleID] = @VehicleID">
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
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VehicleID" DataSourceID="sql_carlist" Width="290px">
    <Columns>
        <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:HyperLinkField DataNavigateUrlFields="VehicleID" DataNavigateUrlFormatString="cardetails.aspx?VehicleID={0}" Text="Select" />
    </Columns>
</asp:GridView>



</asp:Content>

