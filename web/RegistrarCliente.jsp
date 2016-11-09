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
        <title>JSP Page</title>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarCliente.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <form name="frm" action="ServletUsuario" method="post" class="">
            <input type="hidden" name="accion" value="registrar">
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                    <div class="alert-placeholder"></div>
                    <div class="panel panel-success">
                        <div class="panel-body">
                            <div class="row">
                                <h1 style="">Registrate ahora</h1>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Nombre : </h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input type="text" name="txtNombres" id="txtNombre" class="form-control" placeholder="Nombres" size="30" maxlength="50"> 
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Apellido :</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <input type="text" name="txtApellidos" id="txtApellido" class="form-control" placeholder="Apellidos" size="30" maxlength="50"> 
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Dni :</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <dd> <input type="text" name="txtDni" id="txtDni" class="form-control" placeholder="DNI" size="30" maxlength="8"> </dd>
                                    </div>                                
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Email :</h4>
                                    </div>
                                    <div class="col-lg-9">

                                        <dd> <input type="text" name="txtEmail" id="txtEmail" class="form-control" placeholder="Correo electronico" size="30" maxlength="50"> </dd>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Confirmar Email :</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <dd> <input type="text" name="txtConfirmarEmail" id="txtConfirEmail" class="form-control" placeholder="Confirme correo electronico" size="30" maxlength="50"> </dd>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Departamento :</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <dd> <input type="text" name="txtDepartamento" id="txtDepartamento" class="form-control" placeholder="Departamento" size="30" maxlength="20"> </dd>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Provincia :</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <dd> <input type="text" name="txtProvincia" id="txtProvincia" class="form-control" placeholder="Provincia" size="30" maxlength="20"> </dd>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Distrito :</h4> 
                                    </div>
                                    <div class="col-lg-9">
                                        <dd> <input type="text" name="txtDistrito" id="txtDistrito" class="form-control" placeholder="Distrito" size="30" maxlength="20"> </dd>

                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Direccion :</h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <dd> <input type="text" name="txtDireccion" id="txtDireccion2" class="form-control" placeholder="Direccion" size="30" maxlength="50"> </dd>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Telefono :</h4> 
                                    </div>
                                    <div class="col-lg-9">
                                        <dd> <input type="text" name="txtTelefono" id="txtTelefono" class="form-control" placeholder="Telefono o Celular" size="30" maxlength="9"> </dd>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Usuario :</h4> 
                                    </div>
                                    <div class="col-lg-9">
                                        <dd> <input type="text" name="txtUsuario" id="txtUsuario" class="form-control" placeholder="Cree un usuario" size="30" maxlength="30"> </dd>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Contraseña : </h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <dd> <input type="password" name="txtClave" id="txtClave" class="form-control" placeholder="Cree una contraseña" size="30" maxlength="20"> </dd>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3">
                                        <h4>Confirmar contraseña : </h4>
                                    </div>
                                    <div class="col-lg-9">
                                        <dd> <input type="password" name="txtConfirmarClave" id="txtConfirClave" class="form-control" placeholder="Confirme su contraseña" size="30" maxlength="20"> </dd>
                                    </div>                                    
                                </div>
                                <div class="form-group" >
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                            <input type="button" name="btnCancelar"  class="form-control btn btn-danger" id="btnCancelar" value="Cancelar">
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                            <input type="button" name="btnRegistrar"  class="form-control btn btn-success" id="btnRegistrar" value="Registrar">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </body>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
