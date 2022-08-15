<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="AgregarTipoUS.aspx.cs" Inherits="JosephOProyecto.AgregarTipoUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Tipos de Usuario</h2>

    <div>
        <label for="psw-repeat"><b>Descripcion</b></label>
        <asp:TextBox ID="TDEscripcion" type="text" placeholder="Descripcion" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Button ID="BAgregar" class="btn btn-primary rounded submit" runat="server" Text="Agregar" OnClick="BAgregar_Click" />
    </div>
</asp:Content>
