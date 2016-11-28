<%-- 
    Document   : ModificarEmail
    Created on : 23/10/2016, 02:07:02 PM
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
        <script type="text/javascript" src="js/CambiarEmail.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>

    <%
        UsuarioDTO usu = UsuarioDAO.listarUsuarioPorId(Integer.parseInt(request.getParameter("idU")));
    %>

    <body onload="cargar()">
        <form action="ServletUsuario" method="post" id="">

            <div style="margin-left: 25%; margin-right: 25%; margin-top: 5%; ">
                <center><h2><a>Cambiar E-mail</a></h2></center>
                <br>

                <div class="form-group">
                    <input type="hidden" name="txtCodigo" value="<%=usu.getIdUsuario()%>">
                    <input type="hidden" name="txtCaracter" value="<%=usu.getClave()%>">
                </div>

                <div class="form-group">
                    <label class="col-lg-4">Correo actual :</label>
                    <div class="col-lg-8">
                        <%=usu.getEmail()%>
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Ingrese nuevo Email :</label>
                    <div class="col-lg-8">
                        <input type="text" name="txtEmail" id="txtEmail" class="form-control" size="30" maxlength="50">
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Confirmar su Email :</label>
                    <div class="col-lg-8">
                        <input type="text" name="txtConfirmarEmail" id="txtConfirEmail" class="form-control" size="30" maxlength="50">
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Ingrese su contraseña :</label>
                    <div class="col-lg-8">
                        <input type="password" name="txtPass" id="txtPass" class="form-control" size="30" maxlength="50">
                    </div>
                </div>
                <br>
                <center>
                    <div>
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="btn btn-danger" value="Cancelar">
                        <input type="submit" name="btnGuardar" id="btnGuardar" class="btn btn-primary" value="Guardar">
                    </div>
                </center>
                <input type="hidden" name="accion" value="modificarEmail">
            </div>

        </form>
    </body>
</html>
