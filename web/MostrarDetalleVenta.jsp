<%-- 
    Document   : MostrarDetalleVenta
    Created on : 23/10/2016, 02:07:02 PM
    Author     : Elvis
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<%@page import="java.text.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>

    <%
        int idVenta = Integer.parseInt(session.getAttribute("idVenta").toString());
        int idCliente = Integer.parseInt(session.getAttribute("idCliente").toString());
        String Cliente = (String) session.getAttribute("Cliente");
        String Fecha = (String) session.getAttribute("FechaVenta");
        String Importe = (String) session.getAttribute("Importe");
    %>

    <body>
        <form action="ServletProducto" method="post" id="">

            <div style="margin-left: 15%; margin-right: 15%; margin-top: 5%; ">
                <center><h3>VENTA - <%=idVenta%></h3></center>
                <br>


                <table class="table table-hover">

                    <tr>
                        <th class="Titulo">
                            CLIENTE :  
                        </th>
                        <td style="font-weight: bold;" colspan="4" class="Contenido">
                            <%=Cliente%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                        </td>
                    </tr>
                    <tr>
                        <th class="Titulo">
                            PRODUCTO 
                        </th>
                        <th class="Titulo">
                            P/U (S/.)
                        </th>
                        <th class="Titulo">
                            CANTIDAD 
                        </th>
                        <th class="Titulo">
                            DESC (S/.)
                        </th>
                        <th class="Titulo">
                            SUBTOTAL (S/.)
                        </th>
                    </tr>

                    <%
                        DecimalFormat df = new DecimalFormat("0.00");
                        DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                        dfs.setDecimalSeparator('.');
                        df.setDecimalFormatSymbols(dfs);
                        ArrayList<Detalle_VentaDTO> lista = Detalle_VentaDAO.obtenerDetalleVenta(idVenta);
                        for (int i = 0; i < lista.size(); i++) {
                            Detalle_VentaDTO dv = lista.get(i);
                    %>
                    <tr>
                        <td class="Contenido"><%=dv.getNombreProducto()%></td>
                        <td class="Contenido"><%=df.format(dv.getPrecio())%></td>
                        <td class="Contenido"><%=df.format(dv.getCantidad())%></td>
                        <td class="Contenido"><%=df.format(dv.getDescuento())%></td>
                        <td class="Contenido"> <div> <%=df.format(dv.getSubTotal())%> </div> </td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                        <th colspan="4" class="Titulo">
                    <div> TOTAL (S/.)  </div>
                    </th>
                    <th class="Contenido">
                    <div> <%=df.format(Double.parseDouble(Importe))%> </div>
                    </th>
                    </tr>
                </table>
            </div>
        </form>
    <center><h3>  <a href="MostrarVenta.jsp" class="link">REGRESAR</a></h3></center>
    <form id="">
        <div style="margin-left: 30%; margin-right: 30%; margin-top: 5%; ">

            <center><table class="table table-hover">
                    <%
                        UsuarioDTO usu = UsuarioDAO.listarUsuarioPorId(idCliente);
                    %>
                    <tr>
                        <td class="primeraColumna">
                    <dd style="font-weight: bold;"> Fecha : </dd>
                    </td>
                    <td>
                    <dd> <%=Fecha%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd style="font-weight: bold;"> Codigo cliente : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getIdUsuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd style="font-weight: bold;"> Cliente : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getNombre()%>, <%=usu.getApellidos()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd style="font-weight: bold;"> Dni : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getDni()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd style="font-weight: bold;"> Email : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getEmail()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd style="font-weight: bold;"> Departamento : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getDepartamento()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd style="font-weight: bold;"> Provincia : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getProvincia()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd style="font-weight: bold;"> Distrito : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getDistrito()%> </dd>
                    </td>
                    </tr>

                    <tr>
                        <td class="primeraColumna">
                    <dd style="font-weight: bold;"> Domicilio : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getDireccion()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td class="primeraColumna">
                    <dd style="font-weight: bold;"> Telefono : </dd>
                    </td>
                    <td>
                    <dd> <%=usu.getTelefonoUsuario()%> </dd>
                    </td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                        </td>
                    </tr>
                </table></center>
        </div>
    </form>  

</body>
</html>
