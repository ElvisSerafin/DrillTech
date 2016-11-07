<%-- 
    Document   : Catalogo
    Created on : 29/10/2016, 02:14:26 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.*"%>
<%@page import="dao.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/MiPerfil.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>JSP Page</title>
    </head>
    
    <%
        UsuarioDTO usu = UsuarioDAO.listarUsuarioPorId(Integer.parseInt(request.getParameter("idU")));
    %>
    
    <body>
        <form action="ServletUsuario" method="post" id="frmModificarUsuario">
            <table id="tablaModificarUsuario">
                <tr>
                    <th colspan="3">
                        <h1>Mi perfil</h1>
                    </th>
                </tr>
                <tr>
                    <td colspan="3">
                        <input type="hidden" name="txtCodigo" value="<%=usu.getIdUsuario()%>"> 
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Nombre : 
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getNombre()%> </dd>
                        <dd> <input type="text" name="txtNombre" id="txtNombre" class="campoOculto" value="<%=usu.getNombre() %>" size="30" maxlength="50"> </dd>
                        
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Apellidos : 
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getApellidos()%> </dd>
                        <dd> <input type="text" name="txtApellidos" id="txtApellido" class="campoOculto" value="<%=usu.getApellidos() %>" size="30" maxlength="50"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        DNI :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getDni()%> </dd>
                        <dd> <input type="text" name="txtDni" id="txtDni" class="campoOculto" value="<%=usu.getDni() %>" size="30" maxlength="8"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Email :
                    </td>
                    <td>
                        <dd> <%=usu.getEmail()%> </dd>
                    </td>
                    <td>
                        <dd> <a href="ModificarEmail.jsp?codigoU=<%=usu.getIdUsuario()%>" class="Enlace">Cambiar email</a> </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Contraseña :
                    </td>
                    <td>
                        <dd> ********** </dd>
                    </td>
                    <td>
                        <dd> <a href="ModificarContraseña.jsp?codigoU=<%=usu.getIdUsuario()%>" class="Enlace">Cambiar contraseña</a> </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Departamento :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getDepartamento()%> </dd>
                        <dd> <input type="text" name="txtDepartamento" id="txtDepartamento" class="campoOculto" value="<%=usu.getDepartamento() %>" size="30" maxlength="20"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Provincia :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getProvincia()%> </dd>
                        <dd> <input type="text" name="txtProvincia" id="txtProvincia" class="campoOculto" value="<%=usu.getProvincia()%>" size="30" maxlength="20"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Distrito :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getDistrito()%> </dd>
                        <dd> <input type="text" name="txtDistrito" id="txtDistrito" class="campoOculto" value="<%=usu.getDistrito() %>" size="30" maxlength="20"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Direccion :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getDireccion()%> </dd>
                        <dd> <input type="text" name="txtDireccion" id="txtDireccion2" class="campoOculto" value="<%=usu.getDireccion() %>" size="30" maxlength="50"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Telefono :
                    </td>
                    <td>
                        <dd class="soloTexto"> <%=usu.getTelefonoUsuario()%> </dd>
                        <dd> <input type="text" name="txtTelefono" id="txtTelefono" class="campoOculto" value="<%=usu.getTelefonoUsuario() %>" size="30" maxlength="9"> </dd>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    
                </tr>
                <tr>
                    <td colspan="3" class="Botones">
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="button" value="Cancelar">
                        <input type="button" name="btnModificar" id="btnModificar" class="button" value="Modificar">
                        <input type="button" name="btnGuardar" id="btnGuardar" class="campoOculto" value="Guardar">
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
                    <input type="hidden" name="accion" value="modificarUsuario">
        </form>
    </body>
</html>
