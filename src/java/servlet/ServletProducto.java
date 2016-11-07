/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ProductoDAO;
import dto.Detalle_VentaDTO;
import dto.ProductoDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Elvis
 */
public class ServletProducto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String accion = request.getParameter("accion");
            
            if(accion.equals("insertar")){
                this.RegistrarProducto(request, response); 
            }
            if(accion.equals("actualizar")){
                this.ActualizarProducto(request, response); 
            }
            if(accion.equals("eliminar")){
                this.DarBajaProducto(request, response); 
            }
            if(accion.equals("recuperar")){
                this.DarAltaProducto(request, response); 
            }
            if(accion.equals("anadirCarrito")){
                this.AgregarCarrito(request, response);
            }
        }
    }
    
     private void RegistrarProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductoDTO p = new ProductoDTO();
        p.setClase_Producto(request.getParameter("txtClase")); 
        p.setMarca_Producto(request.getParameter("txtMarca"));
        p.setDescripcion(request.getParameter("txtDescripcion"));
        p.setPrecioP(Double.parseDouble(request.getParameter("txtPrecio")));
        p.setImagenP(request.getParameter("txtImagen")); 
        
        boolean resp = ProductoDAO.insertarProducto(p);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha registrado un producto correctamente'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al registrar un producto'"); 
        }
    }
    
    private void ActualizarProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductoDTO p = new ProductoDTO();
        p.setIdProducto(Integer.parseInt(request.getParameter("txtCodigo"))); 
        p.setClase_Producto(request.getParameter("txtNombreCP")); 
        p.setMarca_Producto(request.getParameter("txtNombreMP"));
        p.setDescripcion(request.getParameter("txtDescripcionP"));
        p.setPrecioP(Double.parseDouble(request.getParameter("txtPrecioP")));
        
        String imagen = request.getParameter("selected");
        
        if(imagen.equals("SelectImagenActual")){
            p.setImagenP(request.getParameter("txtImagen")); 
        }else{
            p.setImagenP(request.getParameter("txtModificarImagen")); 
        }
        
        boolean resp = ProductoDAO.actualizarProducto(p);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha modificado el producto "+p.getIdProducto()+"'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al modificar el producto'"); 
        }
    }
    
    private void DarBajaProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductoDTO p = new ProductoDTO();
        p.setIdProducto(Integer.parseInt(request.getParameter("codigoP"))); 
        
        boolean resp = ProductoDAO.eliminarProducto(p);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha eliminado el producto "+p.getIdProducto()+"'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al eliminar el producto'"); 
        }
    }
    
    private void DarAltaProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductoDTO p = new ProductoDTO();
        p.setIdProducto(Integer.parseInt(request.getParameter("idProducto"))); 
        
        boolean resp = ProductoDAO.recuperarProducto(p);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha recuperado el producto "+p.getIdProducto()+"'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al recuperar el producto'"); 
        }
    }
    
    
    private void AgregarCarrito(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        DecimalFormat df = new DecimalFormat("0.00");
        DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
        dfs.setDecimalSeparator('.');
        df.setDecimalFormatSymbols(dfs);
        
        HttpSession session = request.getSession();
        ArrayList<Detalle_VentaDTO> carritoCompra;
        
        if(session.getAttribute("carrito") == null){
            carritoCompra = new ArrayList<Detalle_VentaDTO>();
        }else{
            carritoCompra = (ArrayList<Detalle_VentaDTO>)session.getAttribute("carrito");
        }
        
        ProductoDTO p = ProductoDAO.listarProductoPorId(Integer.parseInt(request.getParameter("txtCodigo"))); 
        
        Detalle_VentaDTO dv = new Detalle_VentaDTO();
        dv.setIdProducto(Integer.parseInt(request.getParameter("txtCodigo"))); 
        dv.setNombreProducto(request.getParameter("txtNombreP")); 
        dv.setPrecio(Double.parseDouble(request.getParameter("txtPrecio")));
        dv.setCantidad(Double.parseDouble(request.getParameter("txtCantidad"))); 
        
        // Realizamos un descuento para el sub total
        double subTotal = p.getPrecioP() * dv.getCantidad();
        if(subTotal > 1000){
            dv.setDescuento(subTotal * 0.25);
        }
        else if(subTotal > 400){
            dv.setDescuento(subTotal * 0.10);
        }
        else{
            dv.setDescuento(0); 
        }
        
        dv.setSubTotal(dv.getPrecio() * dv.getCantidad() - dv.getDescuento());
        
        int indice = -1;
        for(int i=0; i<carritoCompra.size(); i++){
            Detalle_VentaDTO det = carritoCompra.get(i);
            if(det.getIdProducto() == (p.getIdProducto())){
                indice = i;
                break;
            }
        }
        
        if(indice == -1){
            dv.setNumero(String.valueOf(carritoCompra.size() + 1)); 
            carritoCompra.add(dv);
        }else{
            dv.setNumero(String.valueOf(indice + 1));
            carritoCompra.set(indice, dv);
        }
        
        session.setAttribute("carrito", carritoCompra); 
        request.getSession().setAttribute("parametroCliente", request.getParameter("txtCliente"));
        response.sendRedirect("RegistrarVenta.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
