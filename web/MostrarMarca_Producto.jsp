<%-- 
    Document   : MostrarMarca_Producto
    Created on : 06/11/2016, 06:31:05 PM
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

        <div style="margin-left: 15%; margin-right: 15%; margin-top: 2%; ">
            <center><h1 style="color: #0035B0;">Marca productos habilitados</h1></center>
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
                        ArrayList<Marca_Producto> lista = Marca_ProductoDAO.obtenerMPHabilitados();
                        for (int i = 0; i < lista.size(); i++) {
                            Marca_Producto MP = lista.get(i);
                    %>

                    <tr>
                        <td>
                            <%=MP.getIdMarca_Producto()%>
                        </td>
                        <td>
                            <%=MP.getNombreMP()%>
                        </td>
                        <td>
                            <%=MP.getEstadoMP()%>
                        </td>
                        <td class="Opcion">
                            <input type="button" name="btnModificar" id="btnModificar" class="btn btn-success" value="Modificar" onclick="location.href = 'ModificarMarca_Producto.jsp?idMarca_Producto=<%=MP.getIdMarca_Producto()%>&&nombreMP=<%=MP.getNombreMP()%>&&estadoMP=<%=MP.getEstadoMP()%>'">
                        </td>
                        <td class="Opcion">
                            <input type="button" name="btnEliminar" id="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="location.href = 'ServletMarca_Producto?idMarca_Producto=<%=MP.getIdMarca_Producto()%>&&accion=eliminar'">
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

