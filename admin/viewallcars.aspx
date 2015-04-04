<%@ Page Title="" Language="VB" MasterPageFile="~/cars.master" AutoEventWireup="false" CodeFile="viewallcars.aspx.vb" Inherits="admin_viewallcars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> title
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TGLAVAN_HW7 %>" SelectCommand="SELECT * FROM [TGLAVAN_HW7]"></asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="hl_home" runat="server" NavigateUrl="~/admin/Default.aspx">Home</asp:HyperLink>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VehicleID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="MSRP" HeaderText="MSRP" SortExpression="MSRP" />
                <asp:BoundField DataField="BHP" HeaderText="BHP" SortExpression="BHP" />
                <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
                <asp:BoundField DataField="Layout" HeaderText="Layout" SortExpression="Layout" />
                <asp:BoundField DataField="Transmission" HeaderText="Transmission" SortExpression="Transmission" />
            </Columns>
        </asp:GridView>

</asp:Content>

