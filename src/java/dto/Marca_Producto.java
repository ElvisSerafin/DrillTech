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
public class Marca_Producto {
    private int idMarca_Producto;
    private String NombreMP;
    private String EstadoMP;

    public Marca_Producto() {
    }

    public Marca_Producto(int idMarca_Producto, String NombreMP, String EstadoMP) {
        this.idMarca_Producto = idMarca_Producto;
        this.NombreMP = NombreMP;
        this.EstadoMP = EstadoMP;
    }

    public int getIdMarca_Producto() {
        return idMarca_Producto;
    }

    public void setIdMarca_Producto(int idMarca_Producto) {
        this.idMarca_Producto = idMarca_Producto;
    }

    public String getNombreMP() {
        return NombreMP;
    }

    public void setNombreMP(String NombreMP) {
        this.NombreMP = NombreMP;
    }

    public String getEstadoMP() {
        return EstadoMP;
    }

    public void setEstadoMP(String EstadoMP) {
        this.EstadoMP = EstadoMP;
    }
    
    
}
