<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="ActualizarTransaccion.aspx.cs" Inherits="JosephOProyecto.ActualizarTransaccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <h2>Registro de transacciones</h2>

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
    </div>
    <div>
        <label for="psw-repeat"><b>Id</b></label>
        <asp:DropDownList ID="DId" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Id] FROM [Transaccion]"></asp:SqlDataSource>
    </div>
    <div>
        <label for="psw-repeat"><b>Tipo Transaccion</b></label>
        <asp:DropDownList ID="DTransaccion" runat="server" DataSourceID="SqlDataSource2" DataTextField="Descripcion" DataValueField="Id"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Id], [Descripcion] FROM [TipoTransaccion]"></asp:SqlDataSource>
    </div>
    <div>
        <label for="psw-repeat"><b>Descripcion</b></label>
        <asp:TextBox ID="TDescripcion" type="text" placeholder="Descripcion" runat="server"></asp:TextBox>
        <label for="psw-repeat"><b>Monto</b></label>
        <asp:TextBox ID="TMonto" type="text" placeholder="Monto" runat="server"></asp:TextBox>
        <label for="psw-repeat"><b>Fecha</b></label>
        <asp:TextBox ID="TFecha" type="text" placeholder="Fecha" runat="server"></asp:TextBox>
    </div>

    <div>
        <asp:Button ID="BActuaizar" class="btn btn-primary rounded submit" runat="server" Text="Actualizar" OnClick="BActuaizar_Click" />
    </div>
</asp:Content>
