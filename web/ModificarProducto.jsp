<%-- 
    Document   : ModificarProducto
    Created on : 06/11/2016, 05:52:30 PM
    Author     : Elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="dto.*" %>
<%@page import="dao.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/ModificarProd.js"></script>
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>

    <%
        ProductoDTO p = ProductoDAO.listarProductoPorId(Integer.parseInt(request.getParameter("idProducto")));
        int Codigo_P = ObtenerId.idProducto();
        ArrayList<Clase_Producto> listcp = (ArrayList<Clase_Producto>) session.getAttribute("listcp");
        session.removeAttribute("listcp");
        ArrayList<Marca_Producto> listmp = (ArrayList<Marca_Producto>) session.getAttribute("listmp");
        session.removeAttribute("listmp");
    %>

    <body onload="cargar()">
        <form name="frm" action="ServletProducto" method="post" id="">
            <div style="margin-left: 30%; margin-right: 30%; margin-top: 5%; ">
                <h2><a>Modificar Producto</a></h2>
                <br>
                <div class="form-group">
                    <input type="hidden" name="txtCodigo" value="<%=p.getIdProducto()%>">
                </div>
                <div class="form-group col-lg-12">
                    <div class="col-lg-5">
                        <label >Codigo producto :</label>
                    </div>
                    <div class="col-lg-7">
                        <%=p.getIdProducto()%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4">Nombre CP :</label>
                    <div class="col-lg-8">
                        <select name="claseproducto" class="form-control">
                            <%for (int i = 0; i < listcp.size(); i++) {
                                    if (listcp.get(i).getIdClase_Producto() == p.getIdClase_Producto()) {%>
                            <option selected="true" value="<%=listcp.get(i).getIdClase_Producto()%>"><%=listcp.get(i).getNombreCP()%></option>
                            <%} else {%>
                            <option value="<%=listcp.get(i).getIdClase_Producto()%>"><%=listcp.get(i).getNombreCP()%></option>
                            <%}
                                }%>
                        </select>
                    </div>
                </div>
                <br>
                <br>
                <br>
                <br>
                <br>

                <div class="form-group">
                    <label class="col-lg-4">Nombre MP:</label>
                    <div class="col-lg-8">
                        <select name="marcaproducto" class="form-control">
                            <%for (int i = 0; i < listmp.size(); i++) {

                                    if (listmp.get(i).getIdMarca_Producto() == p.getIdMarca_Producto()) {%>
                            <option selected="true" value="<%=listmp.get(i).getIdMarca_Producto()%>"><%=listmp.get(i).getNombreMP()%></option>
                            <%} else {%>
                            <option value="<%=listmp.get(i).getIdMarca_Producto()%>"><%=listmp.get(i).getNombreMP()%></option>
                            <%}
                                }%>

                        </select>
                    </div>
                    <br>
                    <br>
                </div>
                <div class="form-group col-lg-12">
                    <div class="col-lg-4">
                        <label >Descripcion producto : </label>
                    </div>
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="txtDescripcionP" id="txtDescripcionP" value="<%=p.getDescripcion()%>" size="30" maxlength="30">
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <div class="col-lg-4">
                        <label > Precio producto :</label>
                    </div>
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="txtPrecioP" id="txtPrecioP" value="<%=p.getPrecioP()%>" size="30" maxlength="30">
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <div class="col-lg-4">
                        <label > Stock :</label>
                    </div>
                    <div class="col-lg-8">
                        <input type="text" class="form-control" name="txtStockP" id="txtStockP" value="<%=p.getStockP()%>" size="30" maxlength="30">
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <div class="col-lg-4">
                        <label > Imagen actual :</label>
                    </div>
                    <div class="col-lg-8">
                        <div class="col-lg-1">
                            <input type="radio" name="selected" value="SelectImagenActual" id="SelectImagenActual" checked="checked"> 
                        </div>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" name="txtImagen" id="txtImagen" value="<%=p.getImagenP()%>" size="30" maxlength="30">
                        </div>
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <div class="col-lg-4">
                        <label > Modificar imagen :</label>
                    </div>
                    <div class="col-lg-8">
                        <div class="col-lg-1">
                            <input type="radio" name="selected" value="SelectModificarImagen" id="SelectModificarImagen"> 
                        </div>
                        <div class="col-lg-7">
                            <input type="file" name="txtModificarImagen" id="txtModificarImagen" size="30">
                        </div>
                    </div>
                </div>
                <center>
                    <div class="form-group">
                        <input type="button" name="btnCancelar" id="btnCancelar" class="button btn btn-danger" value="Cancelar">
                        <input type="submit" name="btnGuardar" id="btnGuardar" class="button btn btn-primary" value="Guardar">
                    </div>
                </center>
            </div>
            <input type="hidden" name="accion" value="actualizar">
        </form>
    </body>
</html>

