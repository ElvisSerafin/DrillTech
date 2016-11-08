/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.VentaDTO;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Elvis
 */
public class VentaDAO {
    public static boolean insertarVenta(VentaDTO v){
        boolean resp = false;
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL REGISTRAR_VENTA (?,?)");
            cs.setString(1, v.getUsuario());
            cs.setDouble(2, v.getTotal());
            int i = cs.executeUpdate();
            
            if(i == 1){
                resp = true;
            }else{
                resp = false;
            }
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static ArrayList<VentaDTO> ObtenerVentas(){
        ArrayList<VentaDTO> lista = new ArrayList<VentaDTO>();
        Connection cn;
        Conexion con = new Conexion();
        cn=con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_VENTA");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                VentaDTO v = new VentaDTO();
                v.setIdVenta(Integer.parseInt(rs.getString("idVenta")));
                v.setIdUsuario(Integer.parseInt(rs.getString("idUsuario"))); 
                v.setUsuario(rs.getString("Cliente"));
                v.setTotal(rs.getDouble("Total")); 
                v.setFecha(rs.getString("Fecha")); 
                lista.add(v);
            } 
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }
    
    public static boolean eliminarVenta(VentaDTO v){
        boolean resp = false;
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL ELIMINAR_VENTA (?)");
            cs.setInt(1, v.getIdVenta());
            int i = cs.executeUpdate();
            
            if(i == 1){
                resp = true;
            }else{
                resp = false;
            }
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
}
