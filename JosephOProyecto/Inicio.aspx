<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="JosephOProyecto.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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

        <asp:Button ID="BBitacora" class="btn btn-primary rounded submit" runat="server" Text="Mostrar Bitacora" OnClick="BBitacora_Click" />
        <asp:Button ID="BOcultar" class="btn btn-primary rounded submit" runat="server" Text="Ocultar Bitacora" OnClick="BOcultar_Click" />


    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlTransaccion" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="IdTipoTransaccion" HeaderText="IdTipoTransaccion" SortExpression="IdTipoTransaccion" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
            </Columns>
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

        <asp:SqlDataSource ID="SqlTransaccion" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT * FROM [Transaccion]"></asp:SqlDataSource>
    </div>
    <div>
        <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <h3>Filtrar Informacion</h3>
        <div>
            <label for="psw-repeat"><b>Tipo Transaccion</b></label>
            <asp:DropDownList ID="DTransaccion" runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="Id" Width="98px"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Id], [Descripcion] FROM [TipoTransaccion]"></asp:SqlDataSource>
        </div>
        <div>
            <label for="psw-repeat"><b>Usuario</b></label>
            <asp:DropDownList ID="DUsuario" runat="server" DataSourceID="SqlDataSource2" DataTextField="Email" DataValueField="Email"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Email] FROM [Transaccion]"></asp:SqlDataSource>
        </div>
        <div>
            <label for="psw-repeat"><b>Mes</b></label>
            <asp:TextBox ID="TMes" type="text" placeholder="Mes" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="BFiltrar" class="btn btn-primary rounded submit" runat="server" Text="Filtrar" OnClick="BFiltrar_Click" />
    </div>



</asp:Content>
