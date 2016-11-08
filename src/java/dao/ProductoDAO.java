/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.ProductoDTO;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Elvis
 */
public class ProductoDAO {

    // Traer todo los productos

    public static ArrayList<ProductoDTO> obtenerProductosHabilitados() {
        ArrayList<ProductoDTO> lista = new ArrayList<ProductoDTO>();
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();

        CallableStatement cs = null;
        ResultSet rs = null;

        try {
            cs = cn.prepareCall("{CALL MOSTRAR_PRODUCTOS_HABILITADOS()}");
            rs = cs.executeQuery();
            while (rs.next()) {
                ProductoDTO p = new ProductoDTO(rs.getInt("idProducto"), rs.getInt("idClase_Producto"), rs.getString("Clase_P"), rs.getInt("idMarca_Producto"),rs.getString("Marca_P"), rs.getString("Descripcion_P"), rs.getDouble("Precio_P"), rs.getString("Imagen_P"), rs.getString("Estado_P"));
                lista.add(p);
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return lista;
    }

    public static ArrayList<ProductoDTO> obtenerProductosInhabilitados() {
        ArrayList<ProductoDTO> lista = new ArrayList<ProductoDTO>();
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();

        CallableStatement cs = null;
        ResultSet rs = null;

        try {
            cs = cn.prepareCall("{CALL MOSTRAR_PRODUCTOS_ELIMINADOS()}");
            rs = cs.executeQuery();
            while (rs.next()) {
                ProductoDTO p = new ProductoDTO(rs.getInt("idProducto"), rs.getInt("idClase_Producto"), rs.getString("Clase_P"), rs.getInt("idMarca_Producto"), rs.getString("Marca_P"), rs.getString("Descripcion_P"), rs.getDouble("Precio_P"), rs.getString("Imagen_P"), rs.getString("Estado_P"));
                lista.add(p);
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return lista;
    }

    public static boolean insertarProducto(ProductoDTO p) {
        boolean resp = false;

        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();

        try {
            CallableStatement cs = cn.prepareCall("CALL REGISTRAR_PRODUCTO (?,?,?,?,?)");
            cs.setInt(1, p.getIdClase_Producto());
            cs.setInt(2, p.getIdMarca_Producto());
            cs.setString(3, p.getDescripcion());
            cs.setDouble(4, p.getPrecioP());
            cs.setString(5, p.getImagenP());
            int i = cs.executeUpdate();

            if (i == 1) {
                resp = true;
            } else {
                resp = false;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return resp;
    }

    public static boolean actualizarProducto(ProductoDTO p) {
        boolean resp = false;

        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();

        try {
            CallableStatement cs = cn.prepareCall("CALL MODIFICAR_PRODUCTO (?,?,?,?,?,?)");
            cs.setInt(1, p.getIdProducto());
            cs.setInt(2, p.getIdClase_Producto());
            cs.setInt(3, p.getIdMarca_Producto());
            cs.setString(4, p.getDescripcion());
            cs.setDouble(5, p.getPrecioP());
            cs.setString(6, p.getImagenP());
            cs.executeUpdate();

            int i = cs.executeUpdate();

            if (i == 1) {
                resp = true;
            } else {
                resp = false;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return resp;
    }

    public static boolean eliminarProducto(ProductoDTO p) {
        boolean resp = false;

        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();

        try {
            CallableStatement cs = cn.prepareCall("CALL ELIMINAR_PRODUCTO (?)");
            cs.setInt(1, p.getIdProducto());

            int i = cs.executeUpdate();

            if (i == 1) {
                resp = true;
            } else {
                resp = false;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return resp;
    }

    public static boolean recuperarProducto(ProductoDTO p) {
        boolean resp = false;

        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();

        try {
            CallableStatement cs = cn.prepareCall("CALL RECUPERAR_PRODUCTO (?)");
            cs.setInt(1, p.getIdProducto());

            int i = cs.executeUpdate();

            if (i == 1) {
                resp = true;
            } else {
                resp = false;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return resp;
    }

    public static ProductoDTO listarProductoPorId(int id) {
        ProductoDTO p = new ProductoDTO();

        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();

        try {
            CallableStatement cs = cn.prepareCall("CALL BUSCAR_PRODUCTO_ID (?)");
            cs.setInt(1, id);
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                p.setIdProducto(rs.getInt("idProducto"));
                p.setClase_Producto(rs.getString("Nombre_CP"));
                p.setMarca_Producto(rs.getString("Nombre_MP"));
                p.setDescripcion(rs.getString("Descripcion_P"));
                p.setPrecioP(rs.getDouble("Precio_P"));
                p.setImagenP(rs.getString("Imagen_P"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return p;
    }
}
