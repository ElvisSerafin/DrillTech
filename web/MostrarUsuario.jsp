<%-- 
    Document   : MostrarUsuario
    Created on : 15-dic-2015, 11:07:57
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="dto.*" %> 
<%@page import="dao.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <form id="frmMostrarCabeceraUsuario">
            <table id="tablaMostrarCabeceraUsuario">
                <tr>
                    <th>
                        <h1> Usuarios habilitados </h1>
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
        
        <form id="frmMostrarCuerpoUsuario">
            <table id="tablaMostrarCuerpoUsuario">
                <tr>
                    <th class="Titulo">
                        CODIGO
                    </th>
                    <th class="Titulo">
                        NOMBRE
                    </th>
                    <th class="Titulo">
                        APELLIDO
                    </th>
                    <th class="Titulo">
                        DNI
                    </th>
                    <th class="Titulo">
                        CORREO
                    </th>
                    <th class="Titulo">
                        TELEFONO
                    </th>
                    <th class="Titulo">
                        USUARIO
                    </th>
                    <th class="Titulo">
                        TIPO
                    </th>
                    <th class="Titulo">
                        ESTADO
                    </th>
                    <th class="Titulo">
                        OPCION
                    </th>
                </tr>    
                
                <%
                    ArrayList<UsuarioDTO> lista = UsuarioDAO.MostrarUsuarioHabilitado();
                    for(int i=0; i<lista.size(); i++){
                        UsuarioDTO usu = lista.get(i);
                %>
                        
                <tr>
                    <td>
                        <%=usu.getIdUsuario() %>
                    </td>
                    <td>
                        <%=usu.getNombre() %>
                    </td>
                    <td>
                        <%=usu.getApellidos() %>
                    </td>
                    <td>
                        <%=usu.getDni()%>
                    </td>
                    <td>
                        <%=usu.getEmail()%>
                    </td>
                    <td>
                        <%=usu.getTelefonoUsuario()%>
                    </td>
                    <td>
                        <%=usu.getUsuario()%>
                    </td>
                    <td>
                        <%=usu.getTipo()%>
                    </td>
                    <td>
                        <%=usu.getEstado()%>
                    </td>
                    <td class="Opcion">
                        <input type="button" name="btnEliminar" value="Eliminar" id="btnEliminar" class="button" onclick="location.href='Servlet_Usu?codigoU=<%=usu.getIdUsuario()%>&&accion=eliminar'">
                    </td>
                </tr>
                
                <%
                    }
                %>

            </table>
        </form>
    </body>
</html>
