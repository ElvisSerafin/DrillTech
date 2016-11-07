<%-- 
    Document   : Login
    Created on : 23/10/2016, 02:07:02 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/Login.js" type="text/javascript"></script>
        <script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
        <link href="css/Login.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body>
        <div id="fullscreen_bg" class="fullscreen_bg">
            <div class="container">
                <form method="post" action="ServletUsuario" id="frmLogin" class="form-signin">
                    <h1  class="form-signin-heading text-muted">Iniciar Sesión</h1>
                    <input type="text" name="txtUsuario" placeholder="Ingrese Usuario" id="txtUsuario" class="form-control"/>
                    <input type="password" name="txtClave" placeholder="Ingrese contraseña" id="txtClave" class="form-control"/>
                    <input class="btn btn-lg btn-primary btn-block" type="submit" name="btnIngresar" value="Ingresar" id="btnIngresar" />
                    <a href="RegistrarCliente.jsp" id="lnkRegistrarUsuario" class="btn btn-lg btn-success btn-block"><h4>Registrate aqui</h4></a>
                    <input type="hidden" name="accion" value="login"/>
                </form>
            </div> 
        </div>

    </body>
</html>
