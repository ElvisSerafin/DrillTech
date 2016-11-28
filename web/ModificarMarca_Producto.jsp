<%-- 
    Document   : ModificarMarca_Producto
    Created on : 06/11/2016, 05:36:32 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/ModificarMP.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    
    <%
        // Obtenemos las variables del jsp MostrarCP (Dentro del boton modificar)
        int id = Integer.parseInt(request.getParameter("idMarca_Producto"));
        String nombre = request.getParameter("nombreMP");
    %>
    
    <body onload="cargar()">
        <form action="ServletMarca_Producto" method="post" name="frm" >
            
            <div style="margin-left: 28%; margin-right: 28%; margin-top: 5%; ">
                <center><h2 style="color: #337ab7;">Modificar Marca Producto</h2></center>
                <br>

                <div class="form-group">
                    <input type="hidden" name="txtCodigo" value="<%=id %>">
                </div>
                <div class="form-group">
                    <label class="col-lg-4">ID:</label>
                    <div class="col-lg-8">
                        <label class="form-control"> <%=id %></label>
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Marca producto :</label>
                    <div class="col-lg-8">
                        <input type="text" name="txtNombre" class="form-control" id="txtNombre" value="<%=nombre %>">
                    </div>
                </div>
                <br>
                <br>
                <center>
                    <div>
                       <input type="button" name="btnCancelar" id="btnCancelar" class="btn btn-danger" value="Cancelar">
                       <input type="submit" name="btnGuardar" id="btnGuardar" class="btn btn-primary" value="Guardar">
                    </div>
                </center>
            </div>
                    <input type="hidden" name="accion" value="actualizar">
        </form>
    </body>
    
</html>

