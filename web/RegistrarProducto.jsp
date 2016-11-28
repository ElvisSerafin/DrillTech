<%-- 
    Document   : RegistrarProducto
    Created on : 04-nov-2016, 11:44:08
    Author     : Elvis
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarProd.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>

    <%
        int Codigo_P = ObtenerId.idProducto();
        ArrayList<Clase_Producto> listcp = (ArrayList<Clase_Producto>) session.getAttribute("listcp");
        session.removeAttribute("listcp");
        ArrayList<Marca_Producto> listmp = (ArrayList<Marca_Producto>) session.getAttribute("listmp");
        session.removeAttribute("listmp");
    %>

    <body onload="cargar()">
        <form name="frm" action="ServletProducto" method="post" >

            <div style="margin-left: 28%; margin-right: 28%; margin-top: 5%; ">
                <center><h2 style="color: #337ab7;">Registrar producto</h2></center>
                <br>

                <div class="form-group">
                    <label class="col-lg-4">  ID :</label>
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="txtCodigo" value="<%=Codigo_P%>" readonly="readonly">
                    </div>
                </div>
                <br>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Clase producto :</label>
                    <div class="col-lg-8">
                        <select name="claseproducto" class="form-control">
                            <%for (int i = 0; i < listcp.size(); i++) {%>
                            <option value="<%=listcp.get(i).getIdClase_Producto()%>"><%=listcp.get(i).getNombreCP()%></option>
                            <%}%>
                        </select>
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Marca producto :</label>
                    <div class="col-lg-8">
                        <select name="marcaproducto" class="form-control">
                            <%for (int i = 0; i < listmp.size(); i++) {%>
                            <option value="<%=listmp.get(i).getIdMarca_Producto()%>"><%=listmp.get(i).getNombreMP()%></option>
                            <%}%>
                        </select>
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Nombre Producto :</label>
                    <div class="col-lg-8">
                        <input type="text" name="txtDescripcion" class="form-control" id="txtDescripcion" class="textBox">
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Precio :</label>
                    <div class="col-lg-8">
                        <input type="text" name="txtPrecio" class="form-control" id="txtPrecio" class="textBox">
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Stock :</label>
                    <div class="col-lg-8">
                        <input type="text" name="txtStock" class="form-control" id="txtPrecio" class="textBox">
                    </div>
                </div>
                <br>
                <br>
               
                <br>
                <br>
                <div class="form-group">
                    <label class="col-lg-4">Imagen :</label>
                    <div class="col-lg-8">
                        <input type="file" name="txtImagen" size="30" id="txtImagen" class="textBox">
                    </div>
                </div>
                <br>
                <br>
                <center>
                    <div>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="btn btn-danger" value="Cancelar">
                        <input type="submit" name="btnRegistrar" id="btnRegistrar" class="btn btn-primary" value="Registrar">
                    </div>
                </center>
            </div>
            <input type="hidden" name="accion" value="insertar">
        </form>
    </body>
</html>
