<%-- 
    Document   : ModificarContraseña
    Created on : 06-nov-2016, 20:14:45
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/CambiarPass.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    
    <%
        UsuarioDTO usu = UsuarioDAO.listarUsuarioPorId(Integer.parseInt(request.getParameter("idU")));
    %>

    
    <body onload="cargar()">
        
        <form action="ServletUsuario" method="post">
            
            <div style="margin-left: 22%; margin-right: 22%; margin-top: 5%; ">
                <center><h2><a>Cambiar contrase&ntildea</a></h2></center>
                <br>

                <div class="form-group">
                   <input type="hidden" name="txtCodigo" value="<%=usu.getIdUsuario() %>">
                        <input type="hidden" name="txtCaracter" value="<%=usu.getClave() %>">
                </div>
                <div class="form-group">
                    <label class="col-lg-4"> Ingrese su contrase&ntildea actual :</label>
                    <div class="col-lg-8">
                       <input type="password" name="txtClaveActual" id="txtClaveActual" class="form-control" size="20" maxlength="20">
                    </div>
                </div>
                <br>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Ingrese nueva contrase&ntildea :</label>
                    <div class="col-lg-8">
                        <input type="password" name="txtClave" id="txtClave" class="form-control" size="20" maxlength="20">
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Confirmar su contrase&ntildea :</label>
                    <div class="col-lg-8">
                        <input type="password" name="txtConfirmarClave" id="txtConfirClave" class="form-control" size="20" maxlength="20">
                    </div>
                </div>
                <br>
                <br>
                <center>
                    <div>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="btn btn-danger" value="Cancelar">
                        <input type="submit" name="btnGuardar" id="btnGuardar" class="btn btn-primary" value="Guardar">
                    </div>
                </center>
               <input type="hidden" name="accion" value="modificarClave">
            </div>
        </form>
    </body>
</html>
