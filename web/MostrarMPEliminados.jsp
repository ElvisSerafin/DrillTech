<%-- 
    Document   : MostrarMPEliminados
    Created on : 23/10/2016, 02:07:02 PM
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
            <center><h1 style="color: #0035B0;">Marca de productos eliminados</h1></center>
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
                    ArrayList<Marca_Producto> lista = Marca_ProductoDAO.obtenerMPInhabilitados();
                    for(int i=0; i<lista.size(); i++){
                        Marca_Producto MP = lista.get(i);
                %>

                    <tr>
                         <td>
                        <%=MP.getIdMarca_Producto() %>
                    </td>
                    <td>
                        <%=MP.getNombreMP() %>
                    </td>
                    <td>
                        <%=MP.getEstadoMP() %>
                    </td>
                        <td class="Opcion">
                          <input type="button" name="btnRecuperar" id="btnRecuperar" class="btn btn-warning" value="Recuperar" onclick="location.href='ServletMarca_Producto?idMarca_Producto=<%=MP.getIdMarca_Producto() %>&&accion=recuperar'">
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
