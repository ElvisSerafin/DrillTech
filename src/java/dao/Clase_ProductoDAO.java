/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.Clase_Producto;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Elvis
 */
public class Clase_ProductoDAO {
    public static ArrayList<Clase_Producto> ObtenerCPHabilitados(){
        ArrayList<Clase_Producto> lista = new ArrayList<Clase_Producto>();
        Connection cn;
        Conexion con = new Conexion();
        cn=con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_CLASE_PRODUCTO_HABILITADOS");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                Clase_Producto cp = new Clase_Producto(rs.getInt("idClase_Producto"), rs.getString("Nombre_CP"), rs.getString("Estado_CP"));
                lista.add(cp);
            }
        }catch(Exception e){ 
            System.out.println(e);
        }
        System.out.println(lista.size());
        return lista;
    }
    
    public static ArrayList<Clase_Producto> obtenerCPInhabilitados(){
        ArrayList<Clase_Producto> lista = new ArrayList<Clase_Producto>();
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_CLASE_PRODUCTO_INHABILITADOS");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                Clase_Producto CP = new Clase_Producto(rs.getInt("idClase_Producto"), rs.getString("Nombre_CP"), rs.getString("Estado_CP"));
                lista.add(CP);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    } 
    
    public static boolean insertarClaseProducto(Clase_Producto cp){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL REGISTRAR_CLASE_PRODUCTO (?)");
            cs.setString(1, cp.getNombreCP());
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean actualizarClaseProducto(Clase_Producto cp){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MODIFICAR_CLASE_PRODUCTO (?,?)");
            cs.setInt(1, cp.getIdClase_Producto());
            cs.setString(2, cp.getNombreCP()); 
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean darBajaClaseProducto(Clase_Producto cp){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL ELIMINAR_CLASE_PRODUCTO (?)");
            cs.setInt(1, cp.getIdClase_Producto()); 
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean darAltaClaseProducto(Clase_Producto cp){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL RECUPERAR_CLASE_PRODUCTO (?)");
            cs.setInt(1, cp.getIdClase_Producto()); 
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
}
