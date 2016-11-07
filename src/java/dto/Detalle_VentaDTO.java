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
public class Detalle_VentaDTO {
    private String numero;
    private int idDetalle_Venta;
    private int idVenta;
    private int idProducto;
    private String NombreProducto;
    private double Precio;
    private double Cantidad;
    private double Descuento;
    private double SubTotal;
    private ProductoDTO Producto;
    private VentaDTO Venta;

    public Detalle_VentaDTO() {
    }

    public Detalle_VentaDTO(String numero, int idDetalle_Venta, int idVenta, int idProducto, String NombreProducto, double Precio, double Cantidad, double Descuento, double SubTotal, ProductoDTO Producto, VentaDTO Venta) {
        this.numero = numero;
        this.idDetalle_Venta = idDetalle_Venta;
        this.idVenta = idVenta;
        this.idProducto = idProducto;
        this.NombreProducto = NombreProducto;
        this.Precio = Precio;
        this.Cantidad = Cantidad;
        this.Descuento = Descuento;
        this.SubTotal = SubTotal;
        this.Producto = Producto;
        this.Venta = Venta;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public int getIdDetalle_Venta() {
        return idDetalle_Venta;
    }

    public void setIdDetalle_Venta(int idDetalle_Venta) {
        this.idDetalle_Venta = idDetalle_Venta;
    }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombreProducto() {
        return NombreProducto;
    }

    public void setNombreProducto(String NombreProducto) {
        this.NombreProducto = NombreProducto;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }

    public double getCantidad() {
        return Cantidad;
    }

    public void setCantidad(double Cantidad) {
        this.Cantidad = Cantidad;
    }

    public double getDescuento() {
        return Descuento;
    }

    public void setDescuento(double Descuento) {
        this.Descuento = Descuento;
    }

    public double getSubTotal() {
        return SubTotal;
    }

    public void setSubTotal(double SubTotal) {
        this.SubTotal = SubTotal;
    }

    public ProductoDTO getProducto() {
        return Producto;
    }

    public void setProducto(ProductoDTO Producto) {
        this.Producto = Producto;
    }

    public VentaDTO getVenta() {
        return Venta;
    }

    public void setVenta(VentaDTO Venta) {
        this.Venta = Venta;
    }
    
    
}
