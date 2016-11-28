<%-- 
    Document   : AgregarCarrito
    Created on : 06/11/2016, 10:33:47 AM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarCliente.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>

    </head>
    <%
        String cliente = request.getParameter("cliente");
        ProductoDTO p = ProductoDAO.listarProductoPorId(Integer.parseInt(request.getParameter("idProducto")));
    %>

    <body>
        <form name="frm" action="ServletProducto" method="post" id="">
            <input type="hidden" name="txtCliente" value="<%=cliente%>">

            <div style="margin-left: 23%; margin-right: 23%; margin-top: 5%; ">
                <center><h2 style="color: #337ab7;">Agregar Carrito</h2></center>
                <br>

                <div class="form-group">
                    <input type="hidden" name="txtCodigo" value="<%=p.getIdProducto()%>" size="20" maxlength="30">
                </div>

                <div class="form-group">
                    <label class="col-lg-3">Nombre producto :</label>
                    <div class="col-lg-9">
                        <input type="text" name="txtNombreP" class="form-control" value="<%=p.getClase_Producto()%> <%=p.getMarca_Producto()%> - <%=p.getDescripcion()%>" 
                               size="60" readonly="readonly">
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-3">Precio producto :</label>
                    <div class="col-lg-9">
                        <input type="text" name="txtPrecio" class="form-control" value="<%=p.getPrecioP()%>" size="20" maxlength="30" readonly="readonly">
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-3">Cantidad :</label>
                    <div class="col-lg-9">
                        <input type="number" name="txtCantidad" value="1" min="1" class="form-control">
                    </div>
                </div>
                <br>
                <center>
                    <div>
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="btn btn-danger" value="Cancelar">
                        <input type="submit" name="btnGuardar" id="btnGuardar" class="btn btn-primary" value="ADD carrito">
                    </div>
                </center>

                <input type="hidden" name="accion" value="anadirCarrito">
            </div>
        </form>
    </body>
</html>

