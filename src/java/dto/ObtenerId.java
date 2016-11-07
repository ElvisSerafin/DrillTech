/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;
import conexion.Conexion;
import java.sql.*;
/**
 *
 * @author Daniel
 */
public class ObtenerId {
    public static int idProducto(){
        int Id = 0;
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_ID_PRODUCTO");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                Id = rs.getInt("idProducto");
            }
        }catch(Exception e){
           System.out.println(e);
        }
        return Id;
    }
    
    public static int idMarca_Producto(){
        int Codigo = 0;
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_ID_MARCA_PRODUCTO");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                Codigo = rs.getInt("idMarca_Producto");
            }
        }catch(Exception e){
           System.out.println(e);
        }
        return Codigo;
    }
    
    public static int idClase_Producto(){
        int Codigo = 0;
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_ID_CLASE_PRODUCTO");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                Codigo = rs.getInt("idClase_Producto");
            }
        }catch(Exception e){
           System.out.println(e);
        }
        return Codigo;
    }
    
    public static int idVenta(){
        int Codigo = 0;
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_ID_VENTA");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                Codigo = rs.getInt("idVenta");
            }
        }catch(Exception e){
           System.out.println(e);
        }
        return Codigo;
    }
}
