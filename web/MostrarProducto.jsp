<%-- 
    Document   : MostrarProducto
    Created on : 06/11/2016, 06:05:13 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    
    <body>
        
        <div style="margin-left: 12%; margin-right: 12%; margin-top: 2%; ">
            <center><h1 style="color: #0035B0;">Productos habilitados</h1></center>
            <br>
            <div>
                <center><a href="CuentaAdministrador.jsp" class="link"><h4> Pagina principal </h4></a></center>
            </div>


            <form>
                <table class="table table-hover">
                <tr>
                    <th class="Titulo">
                        ID
                    </th>
                    <th class="Titulo">
                        CLASE
                    </th>
                    <th class="Titulo">
                        MARCA
                    </th>
                    <th class="Titulo">
                        DESCRIPCION
                    </th>
                    <th class="Titulo">
                        PRECIO
                    </th>
                    <th class="Titulo">
                        STOCK
                    </th>
                    <th class="Titulo">
                        IMAGEN
                    </th>
                    <th class="Titulo">
                        ESTADO
                    </th>
                    <th colspan="2" class="Titulo">
                        OPCION
                    </th>
                </tr>
                
                <%
                    ArrayList<ProductoDTO> lista = ProductoDAO.obtenerProductosHabilitados();
                    for(int i=0; i<lista.size(); i++){
                        ProductoDTO P = lista.get(i);
                %>
                    
                <tr>
                    <td>
                        <%=P.getIdProducto() %>
                    </td>
                    <td>
                        <%=P.getClase_Producto()%>
                    </td>
                    <td>
                        <%=P.getMarca_Producto()%>
                    </td>
                    <td>
                        <%=P.getDescripcion() %>
                    </td>
                    <td>
                        <%=P.getPrecioP() %>
                    </td>
                     <td>
                        <%=P.getStockP() %>
                    </td>
                    <td>
                        <%=P.getImagenP() %>
                    </td>
                    <td>
                        <%=P.getEstadoP() %>
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnModificar" id="btnModificar"
                               class="btn btn-success" value="Modificar"
                               onclick="location.href='ServletProducto?idProducto=<%=P.getIdProducto()%>&&accion=editarProducto'"> 
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnEliminar" id="btnEliminar" 
                               class="btn btn-danger" value="Eliminar" 
                               onclick="location.href='ServletProducto?idProducto=<%=P.getIdProducto()%>&&accion=eliminar'">
                    </td>
                </tr>
                
                <%
                    }
                %>
    
            </table>
            </form>
        </div>
        <hr>
       
    </body>
</html>
