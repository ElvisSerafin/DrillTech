<%-- 
    Document   : CuentaAdministrador
    Created on : 13/11/2016, 06:32:46 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Administrador</title>
    </head>
    <body>
        <div style="margin-left: 10%; margin-right: 10%; margin-top: 2%; ">
            <form id="">
                <center><h2 style="color: #337ab7;">Menú Administrador</h2></center>
                <table id="" class="table table-hover">

                    <tr>
                        <th class="Titulo">
                            Registrar nuevo
                        </th>
                        <th class="Titulo">
                            Registros habilitados
                        </th>
                        <th class="Titulo">
                            Registros inhabilitados
                        </th>
                        <th class="Titulo">
                            Pedidos realizados
                        </th>
                        <th class="Titulo">
                            Mi catalogo
                        </th>
                    </tr>
                    <tr class="success">
                        <td >
                            <a href="RegistrarClaseProducto.jsp" class="link">Clase producto</a>
                        </td>
                        <td>
                            <a href="MostrarClase_Producto.jsp" class="link">Clase producto</a>
                        </td>
                        <td>
                            <a href="MostrarCPEliminados.jsp" class="link">Clase producto</a>
                        </td>
                        <td>
                            <a href="MostrarVenta.jsp" class="link">Ir a ventas</a>
                        </td>
                        <td>
                            <a href="Catalogo.jsp" class="link">Ir a catalogo</a>
                        </td>
                    </tr>
                    <tr class="danger">
                        <td>
                            <a href="RegistrarMarcaProducto.jsp" class="link">Marca producto</a>
                        </td>
                        <td>
                            <a href="MostrarMarca_Producto.jsp" class="link">Marca producto</a>
                        </td>
                        <td>
                            <a href="MostrarMPEliminados.jsp" class="link">Marca producto</a>
                        </td>
                        <td>

                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr class="success">
                        <td>
                            <a href="ServletProducto?accion=agregarProducto" class="link">Producto</a>
                        </td>
                        <td>
                            <a href="MostrarProducto.jsp" class="link">Producto</a>
                        </td>
                        <td>
                            <a href="MostrarProductosEliminados.jsp" class="link">Producto</a>
                        </td>
                        <td>

                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr class="danger">
                        <td>

                        </td>
                        <td>
                            <a href="MostrarUsuario.jsp" class="link">Usuario</a>
                        </td>
                        <td>
                            <a href="MostrarUsuarioEliminado.jsp" class="link">Usuario</a>
                        </td>
                        <td>

                        </td>
                        <td>

                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
