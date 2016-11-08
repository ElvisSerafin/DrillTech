/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import conexion.Conexion;
import dao.UsuarioDAO;
import dto.UsuarioDTO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Elvis
 */
public class ServletUsuario extends HttpServlet {

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
            
            if(accion.equals("login")){
                Login(request, response); 
            }
            if(accion.equals("registrar")){
                RegistrarUsuario(request, response); 
            }
            if(accion.equals("modificarUsuario")){
                ModificarUsuario(request, response); 
            }
            if(accion.equals("modificarClave")){
                ModificarClaveUsuario(request, response); 
            }
            if(accion.equals("modificarEmail")){
                ModificarEmailUsuario(request, response); 
            }
            if(accion.equals("eliminar")){
                DarBajaUsuario(request, response); 
            }
            if(accion.equals("recuperar")){
                DarAltaUsuario(request, response); 
            }
            if(accion.equals("logout")){
                Logout(request, response); 
            }
        }
    }
    private void Login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
            
        String usuario = request.getParameter("txtUsuario");
        String clave = request.getParameter("txtClave");
            
        try{
            UsuarioDTO usu = UsuarioDAO.VerificarUsuario(usuario);
            
            if(usuario.equals(usu.getUsuario())){
                if(clave.equals(usu.getClave())){
                    if("HAB".equals(usu.getEstado())){
                        request.getSession().setAttribute("parametroId", usu.getIdUsuario());
                        response.sendRedirect("Catalogo.jsp");
                    }else{
                        response.sendRedirect("respuesta.jsp?mens='Usted ha sido inhabilitado del sistema"); 
                    }
                }else{
                    response.sendRedirect("respuesta.jsp?mens='Su clave es incorrecto'"); 
                }
            }else{
                response.sendRedirect("respuesta.jsp?mens='Su id de usuario es incorrecto'"); 
            }
            
        }catch(Exception ex){out.println(ex);}
    }
    
    private void RegistrarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Nombre = request.getParameter("txtNombres");
        String Apellidos = request.getParameter("txtApellidos");
        String Dni = request.getParameter("txtDni");
        String Email = request.getParameter("txtEmail");
        String Departamento = request.getParameter("txtDepartamento");
        String Provincia = request.getParameter("txtProvincia");
        String Distrito = request.getParameter("txtDistrito");
        String Direccion = request.getParameter("txtDireccion");
        String Telefono = request.getParameter("txtTelefono");
        String Usuario = request.getParameter("txtUsuario");
        String Clave = request.getParameter("txtClave");
        
        UsuarioDTO usu = new UsuarioDTO();
        usu.setNombre(Nombre);
        usu.setApellidos(Apellidos);
        usu.setDni(Dni);
        usu.setEmail(Email);
        usu.setDepartamento(Departamento);
        usu.setProvincia(Provincia);
        usu.setDistrito(Distrito);
        usu.setDireccion(Direccion);
        usu.setTelefonoUsuario(Telefono);
        usu.setUsuario(Usuario);
        usu.setClave(Clave);
         
        boolean resp = UsuarioDAO.RegistrarUsuario(usu);
        if(resp){
            response.sendRedirect("respuesta.jsp?mens='Se ha registrado correctamente'");
        }else{
            response.sendRedirect("respuesta.jsp?mens='Error: Estamos solucionando un problema'"); 
        }
    }
    
    private void ModificarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UsuarioDTO usu = new UsuarioDTO();
        usu.setIdUsuario(Integer.parseInt(request.getParameter("txtCodigo")));
        usu.setNombre(request.getParameter("txtNombre"));
        usu.setApellidos(request.getParameter("txtApellidos"));
        usu.setDni(request.getParameter("txtDni"));
        usu.setDepartamento(request.getParameter("txtDepartamento"));
        usu.setProvincia(request.getParameter("txtProvincia"));
        usu.setDistrito(request.getParameter("txtDistrito"));
        usu.setDireccion(request.getParameter("txtDireccion"));
        usu.setTelefonoUsuario(request.getParameter("txtTelefono"));
        
        boolean resp = UsuarioDAO.ModificarUsuario(usu);
        if(resp){
            response.sendRedirect("mensaje2.jsp?mens='Sus datos se han modificado correctamente'");
        }else{
            response.sendRedirect("mensaje2.jsp?mens='Error al modificar uno de sus datos'");
        }
    }
    
    private void ModificarClaveUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pass1 = request.getParameter("txtCaracter");
        String pass2 = request.getParameter("txtClaveActual");
        
        UsuarioDTO usu = new UsuarioDTO();
        usu.setIdUsuario(Integer.parseInt(request.getParameter("txtCodigo")));
        usu.setClave(request.getParameter("txtClave")); 
        
        if(pass1.equals(pass2)){
            boolean resp = UsuarioDAO.ModificarClaveUsuario(usu);
            if(resp){
                response.sendRedirect("mensaje2.jsp?mens='Su password ha sido cambiado correctamente'");
            }else{
                response.sendRedirect("mensaje2.jsp?mens='Error al cambiar su contrase&ntildea'");
            }
        }else{
            response.sendRedirect("mensaje2.jsp?mens='Error el password actual no es correcta'");
        }
    }
    
    private void ModificarEmailUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        String pass1 = request.getParameter("txtCaracter");
        String pass2 = request.getParameter("txtPass");
        
        UsuarioDTO usu = new UsuarioDTO();
        usu.setIdUsuario(Integer.parseInt(request.getParameter("txtCodigo")));
        usu.setEmail(request.getParameter("txtEmail")); 
        
        if(pass1.equals(pass2)){
            boolean resp = UsuarioDAO.ModificarEmailUsuario(usu);
            if(resp){
                response.sendRedirect("mensaje2.jsp?mens='Su correo ha sido cambiado correctamente'");
            }else{
                response.sendRedirect("mensaje2.jsp?mens='Error al cambiar su correo electronico'");
            }
        }else{
            response.sendRedirect("mensaje2.jsp?mens='Error el password no es correcta'");
        }
    }
    
    private void DarBajaUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        UsuarioDTO usu = new UsuarioDTO();
        usu.setIdUsuario(Integer.parseInt(request.getParameter("idU")));
        
        boolean resp = UsuarioDAO.DarDeBajaUsuario(usu);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='El usuario "+usu.getIdUsuario()+" ha sido inhabilitado correctamente'");
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al eliminar el usuario'");
        }
    }
    
    private void DarAltaUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        UsuarioDTO usu = new UsuarioDTO();
        usu.setIdUsuario(Integer.parseInt(request.getParameter("idU")));
        
        boolean resp = UsuarioDAO.DarDeAltaUsuario(usu);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='El usuario "+usu.getIdUsuario()+" acaba de ser habilitado satisfactoriamente'");
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al recuperar el usuario'");
        }
    }
    
    
    private void Logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("Catalogo.jsp");
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
