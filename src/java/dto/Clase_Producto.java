/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Elvis
 */
public class Clase_Producto {
    private int idClase_Producto;
    private String NombreCP;
    private String EstadoCP;

    public Clase_Producto() {
    }

    public Clase_Producto(int idClase_Producto, String NombreCP, String EstadoCP) {
        this.idClase_Producto = idClase_Producto;
        this.NombreCP = NombreCP;
        this.EstadoCP = EstadoCP;
    }

    public int getIdClase_Producto() {
        return idClase_Producto;
    }

    public void setIdClase_Producto(int idClase_Producto) {
        this.idClase_Producto = idClase_Producto;
    }

    public String getNombreCP() {
        return NombreCP;
    }

    public void setNombreCP(String NombreCP) {
        this.NombreCP = NombreCP;
    }

    public String getEstadoCP() {
        return EstadoCP;
    }

    public void setEstadoCP(String EstadoCP) {
        this.EstadoCP = EstadoCP;
    }
    
    
}
