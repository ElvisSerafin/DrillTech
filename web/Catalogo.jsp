<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : Catalogo
    Created on : 23/10/2016, 02:14:26 PM
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
        <title>Catalogo de Productos</title>
        
    </head>
    
    <body onload="cargar()">
        
        <%
            int codigo = -1;
            try{
                codigo=Integer.parseInt(session.getAttribute("parametroId").toString());
            }catch(Exception e){
                e.printStackTrace();
            }
            
            UsuarioDTO usu = UsuarioDAO.listarUsuarioPorId(codigo);
            String cliente = usu.getNombre() + ", " + usu.getApellidos();
        %>
        
        <form action="ServletUsuario" method="post" id="frmCabecera">
            <input type="hidden" value="<%=usu.getTipo() %>" name="txtTipo" id="txtTipo">
            <table id="tablaCabecera">
                <tr>
                    <td colspan="5">
                            <h1>Bienvenido : <%=usu.getNombre() %>, <%=usu.getApellidos() %></h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarVenta.jsp" class="link" id="lnkCompra"><h4>Mi compra</h4></a>
                    </td>
                    <td>
                        <a href="MiPerfil.jsp?idU=<%=usu.getIdUsuario() %>" class="link" id="lnkPerfil">Mi cuenta</a>  
                    </td>
                    <td>
                        <a href="CuentaAdministrador.jsp" class="link" id="lnkAdm">Administrar</a>
                    </td>
                    <td>
                        <a href="Login.jsp" class="btn btn-primary" id="lnkLogin">Login</a>
                    </td>
                    <td>
                        <a href="ServletUsuario?accion=logout" class="link" id="lnkLogout">Salir</a>
                    </td>
                </tr>
            </table>
            <input type="hidden" name="accion" value="logout">
        </form>
        <hr>

        <form id="frmCatalogo">
            
            <table width="800" id="tablaCatalogo">
                <tr>
                    <th colspan="3">
                <h6 class="form-inline"> Catalogo de productos </h6>
                    </th>
                </tr>
                
                <tbody>
                <%
                    ArrayList<ProductoDTO> lista = ProductoDAO.obtenerProductosHabilitados();
                    int salto = 0;
                    for(int i=0; i<lista.size(); i++){
                        ProductoDTO p = lista.get(i);
                %>
                        
                            <th><img src="Imagen/<%=p.getImagenP()%>" width="100" height="100"><br>
                                <%=p.getClase_Producto()%> <%=p.getMarca_Producto()%> <br>
                                <%=p.getDescripcion()%><br>
                                S/ <%=p.getPrecioP() %><br>
                            <input type="button" class="BotonModificar" name="btnModificar" value="Modificar" onclick="location.href='ModificarProducto.jsp?idProducto=<%=p.getIdProducto()%>'">
                            <input type="button" class="BotonADD" name="btnADD" value="ADD Carrito" onclick="location.href='AnadirCarrito.jsp?idProducto=<%=p.getIdProducto()%>&&cliente=<%=cliente %>'"><br>
                            </th>
                <%
                        salto++;
                        if(salto == 3){
                            %>
                            
                            <tr>
                                
                            <%
                            salto = 0;
                        } 
                    }
                %>
                </tbody>
            </table>
        </form>  
    </body>
</html>
