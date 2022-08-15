<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="JosephOProyecto.Log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Login</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet"/>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	
	<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">Login</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-7 col-lg-5">
                    <div class="login-wrap p-4 p-md-5">
                        <div class="d-flex">
                            <div class="w-100">
                                <h3 class="mb-4">Iniciar Sesion</h3>
                            </div>
                            <div class="w-100">
                                <p class="social-media d-flex justify-content-end">
                                    <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
                                    <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
                                </p>
                            </div>
                        </div>
                        
                            <div class="form-group">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-user"></span></div>
                                <asp:TextBox ID="TEmail" type="text" class="form-control rounded-left" placeholder="Correo Electronico" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-lock"></span></div>
                                <asp:TextBox ID="TContraseña" type="password" class="form-control rounded-left" placeholder="Contraseña" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group d-flex align-items-center">
                                <div class="w-100">
                                    <label class="checkbox-wrap checkbox-primary mb-0">
                                        								 
                                     
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="w-100 d-flex justify-content-end">
                                    <asp:Button ID="BRegistrarse" type="submit" class="btn btn-primary rounded submit" runat="server" Text="Iniciar Sesion" OnClick="BRegistrarse_Click" />
                                </div>
                            </div>
                            <div class="form-group mt-4">
                                <div class="w-100 text-center">
                                    <p class="mb-1">No tienes cuenta? <a href="Registrarse.aspx">Registrate aqui</a></p>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </form>
</body>
</html>
