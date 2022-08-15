<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="JosephOProyecto.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/Estilo.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <title>Registrase</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Complete el formulario para registrase</h2>

        <div>

            <hr />

            <label for="email"><b>Nombre</b></label>
            <asp:TextBox ID="TNombre" type="text" placeholder="Nombre" runat="server"></asp:TextBox>
            <label for="psw"><b>Cedula</b></label>
            <asp:TextBox ID="TCedula" type="text" placeholder="Cedula" runat="server"></asp:TextBox>
            <label for="psw-repeat"><b>Primer Apellido</b></label>
            <asp:TextBox ID="TApellido1" type="text" placeholder="Primer Apellido" runat="server"></asp:TextBox>
            <label for="psw-repeat"><b>Segundo Apellido</b></label>
            <asp:TextBox ID="TApellido2" type="text" placeholder="Segundo Apellido" runat="server"></asp:TextBox>
            <label for="psw-repeat"><b>Direccion</b></label>
            <asp:TextBox ID="TDireccion" type="text" placeholder="Direccion" runat="server"></asp:TextBox>
            <label for="psw-repeat"><b>Telefono</b></label>
            <asp:TextBox ID="TTelefono" type="text" placeholder="Telefono" runat="server"></asp:TextBox>
            <label for="email"><b>Email</b></label>
            <asp:TextBox ID="TEmail" type="text" placeholder="Email" runat="server"></asp:TextBox>
            <label for="email"><b>Tipo Usuario</b></label>
            <asp:DropDownList ID="DTUsuario" runat="server" DataSourceID="SqlTipoUsuario" DataTextField="Descripcion" DataValueField="Id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlTipoUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectProgra2ConnectionString %>" SelectCommand="SELECT [Id], [Descripcion] FROM [TipoUsuario]"></asp:SqlDataSource>
            <div>
                <label for="psw-repeat"><b>Clave</b></label>
                <asp:TextBox ID="TClave" type="text" placeholder="Primer Apellido" runat="server"></asp:TextBox>
            </div>


        </div>

    <div>

        <asp:Button ID="BRegistar" class="btn btn-primary rounded submit" runat="server" Text="Registrase" OnClick="BRegistar_Click" />

    </div>
        
    </form>
</body>
</html>
