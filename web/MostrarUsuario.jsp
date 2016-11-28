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
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <div style="margin-left: 12%; margin-right: 12%; margin-top: 2%; ">
            <center><h1 style="color: #0035B0;">Usuarios habilitados</h1></center>
            <br>
            <div>
                <center><a href="CuentaAdministrador.jsp" class="link"><h4> Pagina principal </h4></a></center>
            </div>
        
        <hr>
        
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
                        <input type="button" name="btnEliminar" value="Eliminar" id="btnEliminar" class="btn btn-danger" onclick="location.href='ServletUsuario?idU=<%=usu.getIdUsuario()%>&&accion=eliminar'">
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
