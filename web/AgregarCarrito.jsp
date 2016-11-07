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
        <title>JSP Page</title>
        
    </head>
    <%
        String cliente = request.getParameter("cliente");
        ProductoDTO p = ProductoDAO.listarProductoPorId(Integer.parseInt(request.getParameter("codigoP")));
    %>
    
    <body>
        <form name="frm" action="ServletProducto" method="post" id="frmAnadirCarrito">
            <input type="hidden" name="txtCliente" value="<%=cliente %>">
            <table id="tablaAnadirCarrito">
                <tr>
                    <th colspan="2">
                        <h1>Añadir a carrito</h1>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <dd> <input type="hidden" name="txtCodigo" value="<%=p.getIdProducto()%>" size="20" maxlength="30"> </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Nombre producto :
                    </td>
                    <td>
                        <dd> <input type="text" name="txtNombreP" class="campoNoEditable" value="<%=p.getClase_Producto()%> <%=p.getMarca_Producto()%> - <%=p.getDescripcion() %>" 
                               size="60" readonly="readonly"> </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Precio producto :
                    </td>
                    <td>
                        <dd> <input type="text" name="txtPrecio" class="campoNoEditable" value="<%=p.getPrecioP() %>" size="20" maxlength="30" readonly="readonly"> </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Cantidad :
                    </td>
                    <td>
                        <dd> <input type="number" name="txtCantidad" value="1" min="1"> </dd>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="Botones">
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="button" value="Cancelar">
                        <input type="submit" name="btnGuardar" id="btnGuardar" class="button" value="ADD carrito">
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
                    <input type="hidden" name="accion" value="anadirCarrito">
        </form>
    </body>
</html>

