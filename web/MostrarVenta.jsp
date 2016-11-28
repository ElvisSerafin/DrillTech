<%-- 
    Document   : MostrarVentas
    Created on : 06/11/2016, 06:05:13 PM
    Author     : Elvis
--%>

<%@page import="javax.persistence.Convert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.*" %>
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
           <center><h1 style="color: #337ab7;">Clase de Productos Habilitados</h1></center>
            <br>
            <div>
                <center><a href="CuentaAdministrador.jsp" class="link"><h4> Pagina principal </h4></a></center>
            </div>
        <hr>
        <form>
            <table class="table table-hover">
                <tr>
                    <th class="Titulo">
                        CODIGO
                    </th>
                    <th class="Titulo">
                        CLIENTE
                    </th>
                    <th class="Titulo">
                        IMPORTE (S/.)
                    </th>
                    <th class="Titulo">
                        FECHA Y HORA
                    </th>
                    <th colspan="2" class="Titulo">
                        OPCION
                    </th>
                </tr>    
                
                <%
                    DecimalFormat df = new DecimalFormat("0.00");
                    DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                    dfs.setDecimalSeparator('.');
                    df.setDecimalFormatSymbols(dfs);
                    
                    ArrayList<VentaDTO> lista = VentaDAO.ObtenerVentas();
                    for(int i=0; i<lista.size(); i++){
                        VentaDTO v = lista.get(i);
                        %>
                        
                <tr>
                    <td>
                        <%=v.getIdVenta() %>
                    </td>
                    <td>
                        <%=v.getUsuario() %>
                    </td>
                    <td>
                        <%=df.format(v.getTotal())%>
                    </td>
                    <td>
                        <%=v.getFecha() %>
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnDetalle" id="btnDetalle" class="btn btn-success" value="Detalle venta" onclick="location.href='ServletVenta?idVenta=<%=v.getIdVenta() %>&&cliente=<%=v.getUsuario() %>&&importe=<%=v.getTotal() %>&&FechaV=<%=v.getFecha() %>&&iduser=<%=v.getIdUsuario() %>&&accion=MostrarDetalle'">
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnEliminar" id="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="location.href='ServletVenta?idVenta=<%=v.getIdVenta() %>&&accion=EliminarVenta'"> 
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
