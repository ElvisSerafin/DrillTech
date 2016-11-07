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
public class VentaDTO {
    private int idVenta;
    private int idUsuario;
    private String Usuario;
    private double Total;
    private String Fecha;

    public VentaDTO() {
    }

    public VentaDTO(int idVenta, int idUsuario, String Usuario, double Total, String Fecha) {
        this.idVenta = idVenta;
        this.idUsuario = idUsuario;
        this.Usuario = Usuario;
        this.Total = Total;
        this.Fecha = Fecha;
    }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public double getTotal() {
        return Total;
    }

    public void setTotal(double Total) {
        this.Total = Total;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }
    
}
