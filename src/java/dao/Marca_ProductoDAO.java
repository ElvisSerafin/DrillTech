/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.Marca_Producto;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Elvis
 */
public class Marca_ProductoDAO {
    public static ArrayList<Marca_Producto> obtenerMPHabilitados(){
        ArrayList<Marca_Producto> lista = new ArrayList<Marca_Producto>();
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_MARCA_PRODUCTO_HABILITADOS");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                Marca_Producto MP = new Marca_Producto(rs.getInt("idMarca_Producto"), rs.getString("Nombre_MP"), rs.getString("Estado_MP"));
                lista.add(MP);
            }
            
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }
    
    public static ArrayList<Marca_Producto> obtenerMPInhabilitados(){
        ArrayList<Marca_Producto> lista = new ArrayList<Marca_Producto>();
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_MARCA_PRODUCTO_INHABILITADOS");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                Marca_Producto MP = new Marca_Producto(rs.getInt("idMarca_Producto"), rs.getString("Nombre_MP"), rs.getString("Estado_MP"));
                lista.add(MP);
            }
            
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }
    
    public static boolean insertarMarcaProducto(Marca_Producto mp){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL REGISTRAR_MARCA_PRODUCTO (?)");
            cs.setString(1, mp.getNombreMP());
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean actualizarMarcaProducto(Marca_Producto mp){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MODIFICAR_MARCA_PRODUCTO (?,?)");
            cs.setInt(1, mp.getIdMarca_Producto());
            cs.setString(2, mp.getNombreMP()); 
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean eliminarMarcaProducto(Marca_Producto mp){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL ELIMINAR_MARCA_PRODUCTO (?)");
            cs.setInt(1, mp.getIdMarca_Producto());
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean recuperarMarcaProducto(Marca_Producto mp){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL RECUPERAR_MARCA_PRODUCTO (?)");
            cs.setInt(1, mp.getIdMarca_Producto());
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
}
