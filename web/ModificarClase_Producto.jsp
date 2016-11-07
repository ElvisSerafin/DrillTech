<%-- 
    Document   : ModificarClase_Producto
    Created on : 06/11/2016, 05:04:56 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/ModificarCP.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>JSP Page</title>
    </head>
    
    <%
        // Obtenemos las variables del jsp MostrarCP (Dentro del boton modificar)
        int id = Integer.parseInt(request.getParameter("idClase_Producto"));
        String nombre = request.getParameter("nombre_CP");
    %>
    
    <body onload="cargar()">
        <form action="ServletClase_Producto" method="post" name="frm" id="frmModificarCP">
            <table id="tablaModificarCP">
                <tr>
                    <th colspan="2">
                        <h1> Modificar CP </h1>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="txtCodigo" value="<%=id %>">
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Codigo :
                    </td>
                    <td>
                        <dd> <%=id %> </dd> 
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Clase producto :
                    </td>
                    <td>
                        <dd> <input type="text" name="txtNombre" id="txtNombre" value="<%=nombre %>"> </dd>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="Botones">
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="button" value="Cancelar">
                        <input type="button" name="btnGuardar" id="btnGuardar" class="button" value="Guardar">
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
                    <input type="hidden" name="accion" value="actualizar">
        </form>
    </body>
</html>

