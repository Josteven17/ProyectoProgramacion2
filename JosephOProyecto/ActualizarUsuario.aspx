<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="ActualizarUsuario.aspx.cs" Inherits="JosephOProyecto.ActualizarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:GridView ID="GUsuario" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
    <div>
        <label for="psw"><b>Id Usuario</b></label>
        <asp:DropDownList ID="DId" runat="server" DataSourceID="SqlUsuario" DataTextField="Email" DataValueField="IdUsuario"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [IdUsuario], [Email] FROM [Usuario]"></asp:SqlDataSource>
    </div>
    <div>
        <label for="psw"><b>Tipo Usuario</b></label>
        <asp:DropDownList ID="DTipoUsuario" runat="server" DataSourceID="SqlTUsuario" DataTextField="Descripcion" DataValueField="Id"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlTUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Id], [Descripcion] FROM [TipoUsuario]"></asp:SqlDataSource>
    </div>
    <div>
        <label for="psw"><b>Clave</b></label>
        <asp:TextBox ID="TClave" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Button ID="BActualizar" class="btn btn-primary rounded submit" runat="server" Text="Actualizar" OnClick="BActualizar_Click" />
    </div>
</asp:Content>
