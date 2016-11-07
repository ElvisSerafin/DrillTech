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
public class UsuarioDTO {
     private int idUsuario;
    private String Nombre;
    private String Apellidos;
    private String Dni;
    private String Email;
    private String Departamento;
    private String Provincia;
    private String Distrito;
    private String Direccion;
    private String TelefonoUsuario;
    private String Usuario;
    private String Clave;
    private String Tipo;
    private String Estado;

    public UsuarioDTO() {
    }

    public UsuarioDTO(int idUsuario, String Nombre, String Apellidos, String Dni, String Email, String Departamento, String Provincia, String Distrito, String Direccion, String TelefonoUsuario, String Usuario, String Clave, String Tipo, String Estado) {
        this.idUsuario = idUsuario;
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.Dni = Dni;
        this.Email = Email;
        this.Departamento = Departamento;
        this.Provincia = Provincia;
        this.Distrito = Distrito;
        this.Direccion = Direccion;
        this.TelefonoUsuario = TelefonoUsuario;
        this.Usuario = Usuario;
        this.Clave = Clave;
        this.Tipo = Tipo;
        this.Estado = Estado;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getDni() {
        return Dni;
    }

    public void setDni(String Dni) {
        this.Dni = Dni;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getDepartamento() {
        return Departamento;
    }

    public void setDepartamento(String Departamento) {
        this.Departamento = Departamento;
    }

    public String getProvincia() {
        return Provincia;
    }

    public void setProvincia(String Provincia) {
        this.Provincia = Provincia;
    }

    public String getDistrito() {
        return Distrito;
    }

    public void setDistrito(String Distrito) {
        this.Distrito = Distrito;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getTelefonoUsuario() {
        return TelefonoUsuario;
    }

    public void setTelefonoUsuario(String TelefonoUsuario) {
        this.TelefonoUsuario = TelefonoUsuario;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getClave() {
        return Clave;
    }

    public void setClave(String Clave) {
        this.Clave = Clave;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    
    
}
