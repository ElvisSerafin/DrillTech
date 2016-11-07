/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.UsuarioDTO;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Elvis
 */
public class UsuarioDAO {
    public static UsuarioDTO VerificarUsuario(String id_usuario){
        UsuarioDTO usu = new UsuarioDTO();
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("{CALL LOGEAR_USUARIO (?)}");
            cs.setString(1, id_usuario);
            ResultSet rs = cs.executeQuery();
            
            while(rs.next()){
                usu.setIdUsuario(rs.getInt("idUsuario"));
                usu.setUsuario(rs.getString("Usuario_U"));
                usu.setClave(rs.getString("Clave_U"));
                usu.setEstado(rs.getString("Estado_U")); 
            }
        }catch(Exception e){System.out.println(e);}
        return usu;
    }
    
    public static ArrayList<UsuarioDTO> MostrarUsuarioHabilitado(){
        ArrayList<UsuarioDTO> lista = new ArrayList<UsuarioDTO>();
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_USUARIOS_CLIENTES_HABILITADOS()");
            ResultSet rs = cs.executeQuery();
            
            while(rs.next()){
                UsuarioDTO usu = new UsuarioDTO();
                usu.setIdUsuario(rs.getInt("idUsuario"));
                usu.setNombre(rs.getString("Nombres_U"));
                usu.setApellidos(rs.getString("Apellidos_U"));
                usu.setDni(rs.getString("Dni_U"));
                usu.setEmail(rs.getString("Email_U")); 
                usu.setTelefonoUsuario(rs.getString("Telefono_U"));
                usu.setUsuario(rs.getString("Usuario_U"));
                usu.setTipo(rs.getString("Tipo_U"));
                usu.setEstado(rs.getString("Estado_U")); 
                lista.add(usu);
            }
        }catch(Exception e){System.out.println(e);}
        return lista;
    }
    
    public static ArrayList<UsuarioDTO> MostrarUsuarioInhabilitado(){
        ArrayList<UsuarioDTO> lista = new ArrayList<UsuarioDTO>();
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("{CALL MOSTRAR_USUARIOS_CLIENTES_INHABILITADOS()}");
            ResultSet rs = cs.executeQuery();
            
            while(rs.next()){
                UsuarioDTO usu = new UsuarioDTO();
                usu.setIdUsuario(rs.getInt("idUsuario"));
                usu.setNombre(rs.getString("Nombres_U"));
                usu.setApellidos(rs.getString("Apellidos_U"));
                usu.setDni(rs.getString("Dni_U"));
                usu.setEmail(rs.getString("Email_U")); 
                usu.setTelefonoUsuario(rs.getString("Telefono_U"));
                usu.setUsuario(rs.getString("Usuario_U"));
                usu.setTipo(rs.getString("Tipo_U"));
                usu.setEstado(rs.getString("Estado_U"));  
                lista.add(usu);
            }
        }catch(Exception e){System.out.println(e);}
        return lista;
    }
    
    
    public static boolean RegistrarUsuario(UsuarioDTO usu){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL REGISTRAR_USUARIO_CLIENTE (?,?,?,?,?,?,?,?,?,?,?,?)");
            cs.setString(1, usu.getNombre());
            cs.setString(2, usu.getApellidos());
            cs.setString(3, usu.getDni());
            cs.setString(4, usu.getEmail());
            cs.setString(5, usu.getDepartamento());
            cs.setString(6, usu.getProvincia());
            cs.setString(7, usu.getDistrito());
            cs.setString(9, usu.getDireccion());
            cs.setString(10, usu.getTelefonoUsuario());
            cs.setInt(11, usu.getIdUsuario());
            cs.setString(12, usu.getClave());
            int i = cs.executeUpdate();
            
            if(i == 1){
                resp = true;
            }else{
                resp = false;
            }
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean ModificarUsuario(UsuarioDTO usu){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MODIFICAR_USUARIO (?,?,?,?,?,?,?,?,?,?)");
            cs.setInt(1, usu.getIdUsuario());
            cs.setString(2, usu.getNombre());
            cs.setString(3, usu.getApellidos());
            cs.setString(4, usu.getDni());
            cs.setString(5, usu.getDepartamento());
            cs.setString(6, usu.getProvincia());
            cs.setString(7, usu.getDistrito());
            cs.setString(9, usu.getDireccion());
            cs.setString(10, usu.getTelefonoUsuario());
            int i = cs.executeUpdate();
            
            if(i == 1){
                resp = true;
            }else{
                resp = false;
            }
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean ModificarClaveUsuario(UsuarioDTO usu){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MODIFICAR_CLAVE_USUARIO (?,?)");
            cs.setInt(1, usu.getIdUsuario());
            cs.setString(2, usu.getClave()); 
            int i = cs.executeUpdate();
            
            if(i == 1){
                resp = true;
            }else{
                resp = false;
            }
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean ModificarEmailUsuario(UsuarioDTO usu){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MODIFICAR_EMAIL_USUARIO (?,?)");
            cs.setInt(1, usu.getIdUsuario());
            cs.setString(2, usu.getEmail()); 
            int i = cs.executeUpdate();
            
            if(i == 1){
                resp = true;
            }else{
                resp = false;
            }
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    
    public static boolean DarDeBajaUsuario(UsuarioDTO usu){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL ELIMINAR_USUARIO (?)");
            cs.setInt(1, usu.getIdUsuario());
            int i = cs.executeUpdate();
            
            if(i == 1){
                resp = true;
            }else{
                resp = false;
            }
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean DarDeAltaUsuario(UsuarioDTO usu){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL RECUPERAR_USUARIO (?)");
            cs.setInt(1, usu.getIdUsuario());
            int i = cs.executeUpdate();
            
            if(i == 1){
                resp = true;
            }else{
                resp = false;
            }
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static UsuarioDTO listarUsuarioPorId(int codigo){
        UsuarioDTO usu = new UsuarioDTO();
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_USUARIO_POR_ID (?)");
            cs.setInt(1, codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                usu.setIdUsuario(rs.getInt("idUsuario"));
                usu.setNombre(rs.getString("Nombres_U"));
                usu.setApellidos(rs.getString("Apellidos_U"));
                usu.setDni(rs.getString("Dni_U"));
                usu.setEmail(rs.getString("Email_U"));
                usu.setDepartamento(rs.getString("Departamento_U"));
                usu.setProvincia(rs.getString("Provincia_U"));
                usu.setDistrito(rs.getString("Distrito_U"));
                usu.setDireccion(rs.getString("Direccion_U"));
                usu.setTelefonoUsuario(rs.getString("Telefono_U")); 
                usu.setUsuario(rs.getString("Usuario_U"));
                usu.setClave(rs.getString("Clave_U"));
                usu.setTipo(rs.getString("Tipo_U")); 
                usu.setEstado(rs.getString("Estado_U")); 
            }
        }catch(Exception e){System.out.println(e);}
        return usu;
    }
}
