/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.Marca_ProductoDAO;
import dto.Marca_Producto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Elvis
 */
public class ServletMarca_Producto extends HttpServlet {

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
                this.RegistrarMarcaProducto(request, response);
            }
            if(accion.equals("actualizar")){
                this.ActualizarMarcaProducto(request, response);
            }
            if(accion.equals("eliminar")){
                this.darBajaMarcaProducto(request, response);
            }
            if(accion.equals("recuperar")){
                this.darAltarMarcaProducto(request, response);
            }
        }
    }
    
    private void RegistrarMarcaProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Marca_Producto mp = new Marca_Producto();
        mp.setNombreMP(request.getParameter("txtNombre"));
        
        boolean resp = Marca_ProductoDAO.insertarMarcaProducto(mp);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha registrado una marca de producto correctamente'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al registrar en la marca producto'"); 
        }
    }
    
    private void ActualizarMarcaProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Marca_Producto mp = new Marca_Producto();
        mp.setIdMarca_Producto(Integer.parseInt(request.getParameter("txtCodigo")));
        mp.setNombreMP(request.getParameter("txtNombre")); 
        
        boolean resp = Marca_ProductoDAO.actualizarMarcaProducto(mp);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha modificado la marca producto "+mp.getIdMarca_Producto()+"'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al modificar la marca producto'"); 
        }
    }
    
    private void darBajaMarcaProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Marca_Producto mp = new Marca_Producto();
        mp.setIdMarca_Producto(Integer.parseInt(request.getParameter("idMarca_Producto")));
        
        boolean resp = Marca_ProductoDAO.eliminarMarcaProducto(mp);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha eliminado la marca producto "+mp.getIdMarca_Producto()+"'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al eliminar la marca producto'"); 
        }
    }
    
    private void darAltarMarcaProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Marca_Producto mp = new Marca_Producto();
        mp.setIdMarca_Producto(Integer.parseInt(request.getParameter("idMarca_Producto")));
        
        boolean resp = Marca_ProductoDAO.recuperarMarcaProducto(mp);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha recuperado la marca producto "+mp.getIdMarca_Producto()+"'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al recuperar la marca producto'"); 
        }
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
