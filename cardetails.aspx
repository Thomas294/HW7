<%@ Page Title="" Language="VB" MasterPageFile="~/cars.master" AutoEventWireup="false" CodeFile="cardetails.aspx.vb" Inherits="cardetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> car details
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="sql_cardetails" runat="server" ConnectionString="<%$ ConnectionStrings:TGLAVAN_HW7 %>" SelectCommand="SELECT * FROM [TGLAVAN_HW7] WHERE ([VehicleID] = @VehicleID)">
           
            <SelectParameters>
                <asp:QueryStringParameter Name="VehicleID" QueryStringField="VehicleID" Type="Int32" />
            </SelectParameters>
           
        </asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="hl_home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        <br />
        <br />

        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="VehicleID" DataSourceID="sql_cardetails" Height="50px" Width="391px">
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
            </Fields>
        </asp:DetailsView>
        <br />
    
</asp:Content>

