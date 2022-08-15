<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="JosephOProyecto.AgregarUsuario" %>

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
    </div>
    <div>

        <div>
            <label for="psw"><b>Id Usuario</b></label>
            <asp:DropDownList ID="DIdUsuario" runat="server" DataSourceID="SqlIdUsuar" DataTextField="Nombre" DataValueField="Id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlIdUsuar" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Id], [Nombre] FROM [Persona]"></asp:SqlDataSource>
        </div>
        <div>
            <label for="psw-repeat"><b>Tipo Usuario</b></label>

            <asp:DropDownList ID="DTipoUsuario" runat="server" DataSourceID="SqlTipoUsuario" DataTextField="Descripcion" DataValueField="Id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlTipoUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Id], [Descripcion] FROM [TipoUsuario]"></asp:SqlDataSource>
        </div>

        <label for="email"><b>Email</b></label>
        <asp:TextBox ID="TEmail" type="text" placeholder="Email" runat="server"></asp:TextBox>
        <label for="psw-repeat"><b>Clave</b></label>
        <asp:TextBox ID="TClave" type="text" placeholder="Clave" runat="server"></asp:TextBox>


    </div>
    <div>
        <asp:Button ID="BAgregar" class="btn btn-primary rounded submit" runat="server" Text="Agregar Usuario" OnClick="BAgregar_Click" />
    </div>
</asp:Content>
