<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="EliminarTipoUS.aspx.cs" Inherits="JosephOProyecto.EliminarTipoUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Tipos de Usuario</h2>
    <div>
        <label for="psw-repeat"><b>Descripcion</b></label>
        <asp:DropDownList ID="DId" runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="Id"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Id], [Descripcion] FROM [TipoUsuario]"></asp:SqlDataSource>
    </div>
    <asp:Button ID="BEliminar" class="btn btn-primary rounded submit" runat="server" Text="Eliminar" OnClick="BEliminar_Click" />
</asp:Content>
