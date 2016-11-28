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
public class ProductoDTO {
    private int idProducto;
    private int idClase_Producto;
    private String Clase_Producto;
    private int idMarca_Producto;   
    private String Marca_Producto;
    private String Descripcion;
    private double PrecioP;
    private double StockP;
    private String ImagenP;
    private String EstadoP;

    public ProductoDTO() {
    }

    public ProductoDTO(int idProducto, int idClase_Producto, String Clase_Producto, int idMarca_Producto, String Marca_Producto, String Descripcion, double PrecioP, double StockP, String ImagenP, String EstadoP) {
        this.idProducto = idProducto;
        this.idClase_Producto = idClase_Producto;
        this.Clase_Producto = Clase_Producto;
        this.idMarca_Producto = idMarca_Producto;
        this.Marca_Producto = Marca_Producto;
        this.Descripcion = Descripcion;
        this.PrecioP = PrecioP;
        this.StockP = StockP;
        this.ImagenP = ImagenP;
        this.EstadoP = EstadoP;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getIdClase_Producto() {
        return idClase_Producto;
    }

    public void setIdClase_Producto(int idClase_Producto) {
        this.idClase_Producto = idClase_Producto;
    }

    public String getClase_Producto() {
        return Clase_Producto;
    }

    public void setClase_Producto(String Clase_Producto) {
        this.Clase_Producto = Clase_Producto;
    }

    public int getIdMarca_Producto() {
        return idMarca_Producto;
    }

    public void setIdMarca_Producto(int idMarca_Producto) {
        this.idMarca_Producto = idMarca_Producto;
    }

    public String getMarca_Producto() {
        return Marca_Producto;
    }

    public void setMarca_Producto(String Marca_Producto) {
        this.Marca_Producto = Marca_Producto;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public double getPrecioP() {
        return PrecioP;
    }

    public void setPrecioP(double PrecioP) {
        this.PrecioP = PrecioP;
    }

    public double getStockP() {
        return StockP;
    }

    public void setStockP(double StockP) {
        this.StockP = StockP;
    }

    public String getImagenP() {
        return ImagenP;
    }

    public void setImagenP(String ImagenP) {
        this.ImagenP = ImagenP;
    }

    public String getEstadoP() {
        return EstadoP;
    }

    public void setEstadoP(String EstadoP) {
        this.EstadoP = EstadoP;
    }

   
    
}