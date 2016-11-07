<%-- 
    Document   : RegistrarCliente
    Created on : 23/10/2016, 02:14:26 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.*" %>
<%@page import="dto.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarCliente.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body>
        <form name="frm" action="ServletUsuario" method="post" id="frmRegistrarUsuario">
            <input type="hidden" name="accion" value="registrar">
            <table id="tablaRegistrarUsuario">
                <tr>
                    <th colspan="3">
                        <h1>Registrate ahora</h1>
                    </th>
                </tr>
                
                <tr>
                    <td class="primeraColumna">
                        <h4>Nombre : </h4>
                        
                    </td>
                    <td>
                        <dd> <input type="text" name="txtNombres" id="txtNombre" class="form-control" placeholder="Nombres" size="30" maxlength="50"> </dd>          
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        <h4>Apellido :</h4>
                         
                    </td>
                    <td>
                        <dd> <input type="text" name="txtApellidos" id="txtApellido" class="form-control" placeholder="Apellidos" size="30" maxlength="50"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        <h4>Dni :</h4>
                         
                    </td>
                    <td>
                        <dd> <input type="text" name="txtDni" id="txtDni" class="form-control" placeholder="DNI" size="30" maxlength="8"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        <h4>Email :</h4>
                         
                    </td>
                    <td>
                        <dd> <input type="text" name="txtEmail" id="txtEmail" class="form-control" placeholder="Correo electronico" size="30" maxlength="50"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        <h4>Confirmar Email :</h4>
                         
                    </td>
                    <td>
                        <dd> <input type="text" name="txtConfirmarEmail" id="txtConfirEmail" class="form-control" placeholder="Confirme correo electronico" size="30" maxlength="50"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        <h4>Departamento :</h4>
                         
                    </td>
                    <td>
                        <dd> <input type="text" name="txtDepartamento" id="txtDepartamento" class="form-control" placeholder="Departamento" size="30" maxlength="20"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        <h4>Provincia :</h4>
                         
                    </td>
                    <td>
                        <dd> <input type="text" name="txtProvincia" id="txtProvincia" class="form-control" placeholder="Provincia" size="30" maxlength="20"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        
                        <h4>Distrito :</h4> 
                    </td>
                    <td>
                        <dd> <input type="text" name="txtDistrito" id="txtDistrito" class="form-control" placeholder="Distrito" size="30" maxlength="20"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                         
                        <h4>Direccion :</h4>
                    </td>
                    <td>
                        <dd> <input type="text" name="txtDireccion" id="txtDireccion2" class="form-control" placeholder="Direccion" size="30" maxlength="50"> </dd>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna"> 
                         
                        <h4>Telefono :</h4> 
                    </td>
                    <td>
                        <dd> <input type="text" name="txtTelefono" id="txtTelefono" class="form-control" placeholder="Telefono o Celular" size="30" maxlength="9"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        <h4>Usuario :</h4> 
                    </td>
                    <td>
                        <dd> <input type="text" name="txtUsuario" id="txtUsuario" class="form-control" placeholder="Cree un usuario" size="30" maxlength="30"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        <h4>Contraseña : </h4>
                    </td>
                    <td>
                        <dd> <input type="password" name="txtClave" id="txtClave" class="form-control" placeholder="Cree una contraseña" size="30" maxlength="20"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        <h4>Confirmar contraseña : </h4>
                    </td>
                    <td>
                        <dd> <input type="password" name="txtConfirmarClave" id="txtConfirClave" class="form-control" placeholder="Confirme su contraseña" size="30" maxlength="20"> </dd>
                    </td>
                    <td>
                        <dd> * </dd>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="Botones">
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="form-control" value="Cancelar">
                        <input type="button" name="btnRegistrar" id="btnRegistrar" class="form-control" value="Registrar">
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
        </form>
    </body>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
