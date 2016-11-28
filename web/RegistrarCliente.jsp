<%-- 
    Document   : RegistrarCliente
    Created on : 23/10/2016, 02:14:26 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.*" %>
<%@page import="dto.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Cliente</title>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarCliente.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form name="frm" action="ServletUsuario" method="post" id="">
            <input type="hidden" name="accion" value="registrar">
            <div style="margin-left: 30%; margin-right: 30%; margin-top: 2%; ">
                <h2><a>Registrate</a> | <a>Ahora</a></h2>
                <br>
                <div class="form-group has-success">
                    <input type="text" name="txtNombres" id="txtNombre" class="form-control form-control" placeholder="Nombres" size="30" maxlength="50">
                </div>
                <div class="form-group has-success">
                    <input type="text" name="txtApellidos" id="txtApellido" class="form-control form-control" placeholder="Apellidos" size="30" maxlength="50"> 
                </div>
                <div class="form-group has-success">
                    <input type="text" name="txtDni" id="txtDni" class="form-control form-control" placeholder="DNI" size="30" maxlength="8"> 
                </div>

                <div class="form-group has-success">
                    <input type="text" name="txtEmail" id="txtEmail" class="form-control form-control" placeholder="Correo Electronico" size="30" maxlength="50"> 
                </div>

                <div class="form-group has-success">
                    <input type="text" name="txtConfirmarEmail" id="txtConfirEmail" class="form-control form-control" placeholder="Confirme Correo Electronico" size="30" maxlength="50">
                </div>

                <div class="form-group has-success">
                    <input type="text" name="txtDepartamento" id="txtDepartamento" class="form-control form-control" placeholder="Departamento" size="30" maxlength="20"> 
                </div>

                <div class="form-group has-success">
                    <input type="text" name="txtProvincia" id="txtProvincia" class="form-control form-control" placeholder="Provincia" size="30" maxlength="20"> 
                </div>

                <div class="form-group has-success">
                    <input type="text" name="txtDistrito" id="txtDistrito" class="form-control form-control" placeholder="Distrito" size="30" maxlength="20"> 
                </div>

                <div class="form-group has-success">
                    <input type="text" name="txtDireccion" id="txtDireccion" class="form-control form-control" placeholder="Dirección" size="30" maxlength="50"> 
                </div>

                <div class="form-group has-success">
                    <input type="text" name="txtTelefono" id="txtTelefono" class="form-control form-control" placeholder="Telefono o Celular" size="30" maxlength="9">
                </div>

                <div class="form-group has-success">
                    <input type="text" name="txtUsuario" id="txtUsuario" class="form-control form-control" placeholder="Cree un Usuario" size="30" maxlength="30">
                </div>

                <div class="form-group has-success">
                    <input type="password" name="txtClave" id="txtClave" class="form-control form-control" placeholder="Cree una Contraseña" size="30" maxlength="20">
                </div>

                <div class="form-group has-success">
                    <input type="password" name="txtConfirmarClave" id="txtConfirClave" class="form-control form-control" placeholder="Confirme su Contraseña" size="30" maxlength="20">
                </div>
                <center><div>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="btn btn-danger" value="Cancelar">
                        <input type="submit" name="btnRegistrar" id="btnRegistrar" class="btn btn-success" value="Registrar">
                    </div>
                </center>
                <br>
            </div>
        </form>
    </body>
</html>
