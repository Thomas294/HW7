<%@ Page Title="" Language="VB" MasterPageFile="~/cars.master" AutoEventWireup="false" CodeFile="cardetails.aspx.vb" Inherits="admin_cardetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Admin Car Details 
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:SqlDataSource ID="sql_cardetails" runat="server" ConnectionString="<%$ ConnectionStrings:TGLAVAN_HW7 %>" DeleteCommand="DELETE FROM [TGLAVAN_HW7] WHERE [VehicleID] = @VehicleID" InsertCommand="INSERT INTO [TGLAVAN_HW7] ([Make], [Model], [Year], [MSRP], [BHP], [Engine], [Layout], [Transmission]) VALUES (@Make, @Model, @Year, @MSRP, @BHP, @Engine, @Layout, @Transmission)" SelectCommand="SELECT * FROM [TGLAVAN_HW7] WHERE ([VehicleID] = @VehicleID)" UpdateCommand="UPDATE [TGLAVAN_HW7] SET [Make] = @Make, [Model] = @Model, [Year] = @Year, [MSRP] = @MSRP, [BHP] = @BHP, [Engine] = @Engine, [Layout] = @Layout, [Transmission] = @Transmission WHERE [VehicleID] = @VehicleID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="VehicleID" QueryStringField="VehicleID" Type="Int32" />
            </SelectParameters>
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

        <span class="deletedCar"> <asp:Label ID="lbl_deletedcar" runat="server"></asp:Label></span>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="VehicleID" DataSourceID="sql_cardetails" Height="50px" Width="333px">
            <Fields>
                <asp:BoundField DataField="VehicleID" HeaderText="VehicleID" InsertVisible="False" ReadOnly="True" SortExpression="VehicleID" />
                <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="MSRP" HeaderText="MSRP" SortExpression="MSRP" />
                <asp:BoundField DataField="BHP" HeaderText="BHP" SortExpression="BHP" />
                <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
                <asp:BoundField DataField="Layout" HeaderText="Layout" SortExpression="Layout" />
                <asp:BoundField DataField="Transmission" HeaderText="Transmission" SortExpression="Transmission" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
    
</asp:Content>

