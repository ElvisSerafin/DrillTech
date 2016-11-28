<%-- 
    Document   : Catalogo
    Created on : 29/10/2016, 02:14:26 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.*"%>
<%@page import="dao.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/MiPerfil.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <title>Mi Perfil</title>
    </head>

    <%
        UsuarioDTO usu = UsuarioDAO.listarUsuarioPorId(Integer.parseInt(request.getParameter("idU")));
    %>

    <body>
        <form action="ServletUsuario" method="post" id="">
            <div style="margin-left: 28%; margin-right: 28%; margin-top: 5%; ">
                <center><h2><a>Mi perfil</a></h2></center>
                <br>
                <div class="form-group">
                    <input type="hidden" name="txtCodigo" value="<%=usu.getIdUsuario()%>">
                </div>
                <div class="form-group col-lg-12">
                    <label class="col-lg-4"> Nombre :</label>
                    <div class="col-lg-8">
                        <dd class="soloTexto"><%=usu.getNombre()%> </dd>
                        <input type="text" name="txtNombre" id="txtNombre" class="campoOculto form-control form-control" value="<%=usu.getNombre()%>" size="30" maxlength="50"> 
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="col-lg-4"> Apellidos :</label>
                    <div class="col-lg-8">
                        <dd class="soloTexto"><%=usu.getApellidos()%> </dd>
                        <input type="text" name="txtApellidos" id="txtApellido" class="campoOculto form-control form-control" value="<%=usu.getApellidos()%>" size="30" maxlength="50">                        
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="col-lg-4"> DNI :</label>
                    <div class="col-lg-8">
                        <dd class="soloTexto"> <%=usu.getDni()%> </dd>
                        <input type="text" name="txtDni" id="txtDni" class="campoOculto form-control form-control" value="<%=usu.getDni()%>" size="30" maxlength="8"> 
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="col-lg-4"> Email :</label>
                    <div class="col-lg-8">
                        <%=usu.getEmail()%> 
                        &nbsp; <a href="ModificarEmail.jsp?idU=<%=usu.getIdUsuario()%>" style="color: #d43f3a;" class="Enlace">Cambiar Email</a> 
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="col-lg-4"> Contraseña :</label>
                    <div class="col-lg-8">
                        ***********
                        &nbsp;&nbsp;<a href="ModificarContraseña.jsp?idU=<%=usu.getIdUsuario()%>" style="color: #d43f3a;" class="Enlace">Cambiar contraseña</a>
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="col-lg-4"> Departamento :</label>
                    <div class="col-lg-8">
                        <dd class="soloTexto"><%=usu.getDepartamento()%> </dd>
                        <input type="text" name="txtDepartamento" id="txtDepartamento" class="campoOculto form-control form-control" value="<%=usu.getDepartamento()%>" size="30" maxlength="20"> 
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="col-lg-4"> Provincia :</label>
                    <div class="col-lg-8">
                        <dd class="soloTexto"><%=usu.getProvincia()%> </dd>
                        <input type="text" name="txtProvincia" id="txtProvincia" class="campoOculto form-control form-control" value="<%=usu.getProvincia()%>" size="30" maxlength="20"> 
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="col-lg-4"> Distrito :</label>
                    <div class="col-lg-8">
                        <dd class="soloTexto"> <%=usu.getDistrito()%> </dd>
                        <input type="text" name="txtDistrito" id="txtDistrito" class="campoOculto form-control form-control" value="<%=usu.getDistrito()%>" size="30" maxlength="20">

                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="col-lg-4"> Direccion :</label>
                    <div class="col-lg-8">
                        <dd class="soloTexto"> <%=usu.getDireccion()%> </dd>
                        <input type="text" name="txtDireccion" id="txtDireccion2" class="campoOculto form-control form-control" value="<%=usu.getDireccion()%>" size="30" maxlength="50"> 

                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="col-lg-4"> Telefono :</label>
                    <div class="col-lg-8">
                        <dd class="soloTexto"> <%=usu.getTelefonoUsuario()%> </dd>
                        <input type="text" name="txtTelefono" id="txtTelefono" class="campoOculto form-control form-control" value="<%=usu.getTelefonoUsuario()%>" size="30" maxlength="9"> 
                    </div>
                </div>
                <center>
                    <div class="form-group col-lg-12">
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="button btn btn-danger" value="Cancelar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" name="btnModificar" id="btnModificar" class="button btn btn-success" value="Modificar">
                        <input type="submit" name="btnGuardar" id="btnGuardar" class="campoOculto btn btn-primary" value="Guardar">
                    </div>
                </center>
            </div>
            <input type="hidden" name="accion" value="modificarUsuario">
        </form>
    </body>
</html>
