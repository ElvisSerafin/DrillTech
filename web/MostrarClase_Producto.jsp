<%-- 
    Document   : MostrarClase_Producto
    Created on : 06/11/2016, 06:05:13 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>JSP Page</title>
    </head>
    
    <body>
        <form id="frmMostrarCabeceraCP">
            <table id="tablaMostrarCabeceraCP">
                <tr>
                    <th>
                        <h1> Clase productos habilitados </h1>
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
        
        <form id="frmMostrarCuerpoCP">
            <table id="tablaMostrarCuerpoCP">
                <tr>
                    <th class="Titulo">
                        CODIGO
                    </th>
                    <th class="Titulo">
                        NOMBRE
                    </th>
                    <th class="Titulo">
                        ESTADO
                    </th>
                    <th colspan="2" class="Titulo">
                        OPCION
                    </th>
                </tr>    
                
                <%
                    ArrayList<Clase_Producto> lista = Clase_ProductoDAO.ObtenerCPHabilitados();
                    for(int i=0; i<lista.size(); i++){
                        Clase_Producto CP = lista.get(i);
                        %>
                        
                <tr>
                    <td>
                        <%=CP.getIdClase_Producto()%>
                    </td>
                    <td>
                        <%=CP.getNombreCP() %>
                    </td>
                    <td>
                        <%=CP.getEstadoCP() %>
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnModificar" value="Modificar" id="btnModificar" class="button" onclick="location.href='ModificarCP.jsp?codigoCP=<%=CP.getIdClase_Producto()%>&&nombreCP=<%=CP.getNombreCP() %>&&estadoCP=<%=CP.getEstadoCP() %>'">
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnEliminar" value="Eliminar" id="btnEliminar" class="button" onclick="location.href='Servlet_CP?codigoCP=<%=CP.getIdClase_Producto()%>&&accion=eliminar'">
                    </td>
                </tr>
                
                <%
                    }
                %>

            </table>
        </form>
    </body>
    
    
</html>

