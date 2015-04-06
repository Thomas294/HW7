<%@ Page Title="" Language="VB" MasterPageFile="~/cars.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Home Page 
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      
    <asp:Label ID="Label1" runat="server" Text="Todays Time"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
    <img class="center_img" src="./images/porschehome.jpg" alt="Porsche 918" />
</asp:Content>

