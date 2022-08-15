<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="ActualizarPersona.aspx.cs" Inherits="JosephOProyecto.ActualizarPersona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Catalogo Persona</h2>

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
        <div><label for="psw-repeat"><b>Id Actualiazar</b></label>
        <asp:DropDownList ID="DActualizar" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="Id"></asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Id], [Nombre] FROM [Persona]"></asp:SqlDataSource>

        </div>
        <hr />
        <label for="email"><b>Nombre</b></label>
        <asp:TextBox ID="TNombreCP" type="text" placeholder="Nombre" runat="server"></asp:TextBox>
        <label for="psw"><b>Cedula</b></label>
        <asp:TextBox ID="TCedulaCP" type="text" placeholder="Cedula" runat="server"></asp:TextBox>
        <label for="psw-repeat"><b>Primer Apellido</b></label>
        <asp:TextBox ID="TApellido1CP" type="text" placeholder="Primer Apellido" runat="server"></asp:TextBox>
        <label for="psw-repeat"><b>Segundo Apellido</b></label>
        <asp:TextBox ID="TApellido2CP" type="text" placeholder="Segundo Apellido" runat="server"></asp:TextBox>
        <label for="psw-repeat"><b>Direccion</b></label>
        <asp:TextBox ID="TDireccionCP" type="text" placeholder="Direccion" runat="server"></asp:TextBox>
        <label for="psw-repeat"><b>Telefono</b></label>
        <asp:TextBox ID="TTelefonoCP" type="text" placeholder="Telefono" runat="server"></asp:TextBox>
      

    </div>
    <div>
        <asp:Button ID="BActualizar" class="btn btn-primary rounded submit" runat="server" Text="Actualizar" OnClick="BActualizar_Click" />
    </div>

</asp:Content>
