<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : Catalogo
    Created on : 22/10/2016, 10:33:47 AM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="dao.*"%>
<%@page import="dto.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/Catalogo.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/catalogo.css" rel="stylesheet" type="text/css"/>
        <link href='Imagen/magnifier.png' rel='shortcut icon' type='image/png'/>
        <title>Catalogo</title>

    </head>

    <body onload="cargar()">

        <%
            int codigo = -1;
            try {
                codigo = Integer.parseInt(session.getAttribute("parametroId").toString());
            } catch (Exception e) {
                e.printStackTrace();
            }

            UsuarioDTO usu = UsuarioDAO.listarUsuarioPorId(codigo);
            String cliente = usu.getNombre() + ", " + usu.getApellidos();
        %>

        <form action="ServletUsuario" method="post" id="frmCabecera">
            <input type="hidden" value="<%=usu.getTipo()%>" name="txtTipo" id="txtTipo">

            <table id="tablaCabecera">
                <tr>
                    <td colspan="5">
                        <h1 style="color: white">Bienvenido : <%=usu.getNombre()%>, <%=usu.getApellidos()%></h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="index.html"  style="color: white; font: 150% sans-serif;">Inicio</a>
                    </td>
                    <td>
                        <a href="RegistrarVenta.jsp" class="link" id="lnkCompra" style="color: white;"><h4>Mi compra</h4></a>
                    </td>
                    <td>
                        <a href="MiPerfil.jsp?idU=<%=usu.getIdUsuario()%>" class="link" id="lnkPerfil" style="color: white;">Mi cuenta</a>  
                    </td>
                    <td>
                        <a href="CuentaAdministrador.jsp" class="link" id="lnkAdm" style="color: white;">Administrar</a>
                    </td>
                    <td>
                        <a href="Login.jsp" class="link" id="lnkLogin" style="color: white;">Login</a>
                    </td>
                    <td>
                        <a href="ServletUsuario?accion=logout" class="link" id="lnkLogout" style="color: white;">Salir</a>
                    </td>
                </tr>
            </table>
            <input type="hidden" name="accion" value="logout">
        </form>

        <form id="">
            <center><h1 style="color: #337ab7;"> Catalogo de productos </h1></center>

            <center> <table width="82%" id="tablaCatalogo">


                    <tbody>
                        <%
                            ArrayList<ProductoDTO> lista = ProductoDAO.obtenerProductosHabilitados();
                            int salto = 0;
                            for (int i = 0; i < lista.size(); i++) {
                                ProductoDTO p = lista.get(i);
                        %>

                    <th><img src="Imagen/<%=p.getImagenP()%>" width="100" height="100"><br>
                        <%=p.getClase_Producto()%> <%=p.getMarca_Producto()%> <br>
                        <%=p.getDescripcion()%><br>
                        S/ <%=p.getPrecioP()%><br>
                         <input type="button" class="BotonModificar btn" name="btnModificar" value="Modificar" onclick="location.href='ServletProducto?idProducto=<%=p.getIdProducto()%>&&accion=editarProducto'">
                        <input type="button" class="BotonADD btn btn-success" name="btnADD" value="ADD Carrito" onclick="location.href = 'AgregarCarrito.jsp?idProducto=<%=p.getIdProducto()%>&&cliente=<%=cliente%>'"><br>
                    </th>
                    <%
                        salto++;
                        if (salto == 4) {
                    %>

                    <tr>

                        <%
                                    salto = 0;
                                }
                            }
                        %>
                        </tbody>
                </table>
            </center>
        </form> 
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.dropotron.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/util.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="js/main.js"></script>
    </body>
</html>
