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
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div style="margin-left: 15%; margin-right: 15%; margin-top: 2%; ">
            <center><h1><a>Clase de Productos Habilitados</a></h1></center>
            <br>
            <div>
                <center><a href="CuentaAdministrador.jsp" class="link"><h4> Pagina principal </h4></a></center>
            </div>


            <form>
                <table class="table table-hover">
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
                            <input type="button" name="btnModificar" value="Modificar" id="" class="btn btn-success" onclick="location.href = 'ModificarClase_Producto.jsp?idClase_Producto=<%=CP.getIdClase_Producto()%>&&nombre_CP=<%=CP.getNombreCP() %>&&estadoCP=<%=CP.getEstadoCP() %>'">
                        </td>
                        <td class="Opcion">
                            <input type="button" name="btnEliminar" value="Eliminar" id="" class="btn btn-danger" onclick="location.href = 'ServletClase_Producto?idClase_Producto=<%=CP.getIdClase_Producto()%>&&accion=eliminar'">
                        </td>
                    </tr>

                    <%
                        }
                    %>

                </table>
            </form>
        </div>
    </body>


</html>

