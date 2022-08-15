<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="EliminarPersona.aspx.cs" Inherits="JosephOProyecto.EliminarPersona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <asp:DropDownList ID="DPersona" runat="server" DataSourceID="SqlPersona1" DataTextField="Nombre" DataValueField="Id"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlPersona1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Id], [Nombre] FROM [Persona]"></asp:SqlDataSource>
    </div>
    <div>
        <asp:Button ID="BEliminar" class="btn btn-primary rounded submit" runat="server" Text="Eliminar" OnClick="BEliminar_Click" />
        <asp:Button ID="BConsultar" class="btn btn-primary rounded submit" runat="server" Text="Consultar" OnClick="BConsultar_Click" />
    </div>
</asp:Content>
