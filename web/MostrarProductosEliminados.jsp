<%-- 
    Document   : MostrarProductosEliminados
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
        <title>JSP Page</title>
    </head>
    
    <body>
        <form id="frmMostrarCabeceraProdEliminados">
            <table id="tablaMostrarCabeceraProdEliminados">
                <tr>
                    <th>
                        <h1> Productos habilitados </h1>
                    </th>
                </tr>
                <tr>
                    <td>
                        <a href="CuentaAdministrador.jsp" class="link"><h4> Pagina principal </h4></a>
                    </td>
                </tr>
            </table>
        </form>
        
        <hr>
        
        <form id="frmMostrarCuerpoProdEliminados">
            <table id="tablaMostrarCuerpoProdEliminados">
                <tr>
                    <th class="Titulo">
                        CODIGO
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
                        IMAGEN
                    </th>
                    <th class="Titulo">
                        ESTADO
                    </th>
                    <th class="Titulo">
                        OPCION
                    </th>
                </tr>
                
                <% 
                    ArrayList<ProductoDTO> lista = ProductoDAO.obtenerProductosInhabilitados();
                    for(int i=0; i<lista.size(); i++){
                        ProductoDTO P = lista.get(i);
                %>
                    
                <tr>
                    <td>
                        <%=P.getIdProducto() %>
                    </td>
                    <td>
                        <%=P.getClase_Producto() %>
                    </td>
                    <td>
                        <%=P.getMarca_Producto() %>
                    </td>
                    <td>
                        <%=P.getDescripcion() %>
                    </td>
                    <td>
                        <%=P.getPrecioP() %>
                    </td>
                    <td>
                        <%=P.getImagenP() %>
                    </td>
                    <td>
                        <%=P.getEstadoP() %>
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnRecuperar" id="btnRecuperar" class="button" value="Recuperar" onclick="location.href='Servlet_Prod?codigoP=<%=P.getIdProducto() %>&&accion=recuperar'">
                    </td>
                </tr>
                
                <%
                    }
                %>
    
            </table>
        </form>
    </body>
</html>
