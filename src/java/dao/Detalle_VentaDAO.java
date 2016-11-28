/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.Detalle_VentaDTO;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Elvis
 */
public class Detalle_VentaDAO {
    public static ArrayList<Detalle_VentaDTO> obtenerDetalleVenta(int idVenta){
        ArrayList<Detalle_VentaDTO> lista = new ArrayList<Detalle_VentaDTO>();
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        try{
            CallableStatement cs = cn.prepareCall("{CALL MOSTRAR_DETALLE_VENTA_POR_ID (?)}");
            cs.setInt(1, idVenta);
            ResultSet rs = cs.executeQuery();
            
            while(rs.next()){
                Detalle_VentaDTO dv = new Detalle_VentaDTO();
                dv.setIdVenta(Integer.parseInt(rs.getString("idVenta")));
                dv.setNombreProducto(rs.getString("Producto"));
                dv.setPrecio(rs.getDouble("Precio"));
                dv.setCantidad(rs.getDouble("Cantidad"));
                dv.setDescuento(rs.getDouble("Descuento"));
                dv.setSubTotal(rs.getDouble("SubTotal")); 
                lista.add(dv);
            }
        }catch(Exception e){System.out.println(e);}
        return lista;
    }
}
