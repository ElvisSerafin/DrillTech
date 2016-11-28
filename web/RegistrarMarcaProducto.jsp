<%-- 
    Document   : RegistrarMarcaProducto
    Created on : 04-nov-2016, 11:44:08
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
        <script type="text/javascript" src="js/RegistrarMP.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>

    <%
        int Codigo_MP = ObtenerId.idProducto();
    %>

    <body onload="cargar()">
        <form name="frm" action="ServletMarca_Producto" method="post">
            <div style="margin-left: 35%; margin-right: 35%; margin-top: 5%; ">
                <h2 style="color: #337ab7;">Registrar | Marca Producto</h2>
                <br>
                <div class="form-group">
                    <label>Codigo:</label>
                    <input type="text" name="txtCodigo" value="<%=Codigo_MP%>" class="form-control form-control" readonly="readonly">
                </div>
                <div class="form-group">
                    <label>Marca de Producto:</label>
                    <input type="text" name="txtNombre" id="txtNombre" class="form-control form-control" >
                </div>
                <br>
                <center><div>
                        <input type="submit" name="btnRegistrar" id="btnRegistrar" class="btn btn-primary" value="Registrar">
                        <input type="button" name="btnCancelar" id="btnCancelar" class="btn btn-danger" value="Cancelar">
                        <input type="hidden" name="accion" value="insertar">

                    </div>
                </center>
            </div>
    </form>
</body>
</html>
