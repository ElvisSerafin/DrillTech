<%-- 
    Document   : RegistrarVenta
    Created on : 06/11/2016, 11:18:13 AM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<%@page import="java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarVenta.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>

        <%
            int idVenta = ObtenerId.idVenta();
            String cliente = (String) session.getAttribute("parametroCliente");
        %>

        <form action="ServletVenta" method="post" id="">
            <div style="margin-left: 10%; margin-right: 10%; margin-top: 5%; ">
                <center><h3><a>CARRITO DE COMPRAS</a></h3></center>
                <input type="hidden" name="txtCodigoV" value="<%=idVenta%>">
                <br>

                <div>
                    <label>CLIENTE : </label>
                    <label> <%=cliente%> </label>
                    <input type="hidden" name="txtCliente" value="<%=cliente%>" size="50" readonly="readonly" class="form-control">
                </div>
                <table id="" class="table table-hover">
                    <br><br>

                    <tr>
                        <th class="Titulo">
                            N°
                        </th>
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
                        <th class="Titulo">
                            OPCION
                        </th>
                    </tr>

                    <%
                        DecimalFormat df = new DecimalFormat("0.00");
                        DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                        dfs.setDecimalSeparator('.');
                        df.setDecimalFormatSymbols(dfs);

                        double total = 0;
                        ArrayList<Detalle_VentaDTO> lista = (ArrayList<Detalle_VentaDTO>) session.getAttribute("carrito");

                        if (lista != null) {
                            for (Detalle_VentaDTO dv : lista) {
                    %>

                    <tr>
                        <td class="danger">
                            <%=dv.getNumero()%>
                        </td>
                        <td class="danger">
                            <%=dv.getNombreProducto()%>
                            <input type="hidden" name="nombreProd" value="<%=dv.getNombreProducto()%>">
                        </td>
                        <td class="danger">
                            <%=df.format(dv.getPrecio())%>
                            <input type="hidden" name="precioProd" value="<%=dv.getPrecio()%>">
                        </td>
                        <td class="danger">
                            <%=dv.getCantidad()%>
                            <input type="hidden" name="cantidadProd" value="<%=dv.getCantidad()%>">
                        </td>
                        <td class="danger">
                            <%=df.format(dv.getDescuento())%>
                            <input type="hidden" name="descuentoProd" value="<%=dv.getDescuento()%>">
                        </td>
                        <td class="danger">
                            <div> <%=df.format(dv.getSubTotal())%> </div>
                            <input type="hidden" name="subTotalProd" value="<%=dv.getSubTotal()%>">
                        </td> 
                        <td whidh="100" class="danger">
                            <input type="button" name="btnEliminar" id="" class="btn btn-danger" value="Eliminar" onclick="location.href = 'ServletVenta?numero=<%=dv.getNumero()%>&&accion=quitar'">
                        </td>
                    </tr>
                    <%
                                total = total + dv.getSubTotal();
                            }
                        }
                    %>
                    <tr>
                        <th colspan="5" class="success">
                    <div> TOTAL (S/.)  </div>
                    </th>
                    <th class="">
                    <div> <%=String.valueOf(df.format(total))%> </div>
                    <input type="hidden" name="txtTotal" value="<%=String.valueOf(df.format(total))%>" readonly="readonly">
                    </th>
                    <th class="success">
                    </th>
                    </tr>
                </table>
                    <br>
                    <br>
                    <br>
                <center>
                    <div>
                        <input type="submit" name="btnRegistrar" id="" class="btn btn-primary" value="Registrar compra">
                    </div>
                </center>
                <input type="hidden" name="accion" value="RegistrarVenta"><br>
            </div>  
        </form>
        <h3 align="center">
            <a href="Catalogo.jsp" class="link">Seguir comprando</a>
        </h3>
    </body>
</html>

