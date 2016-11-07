/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Daniel
 */
public class Provincia {
    private int idDepartamento;
    private int idProvincia;
    private String NombreProvincia;

    public Provincia() {
    }

    public Provincia(int idDepartamento, int idProvincia, String NombreProvincia) {
        this.idDepartamento = idDepartamento;
        this.idProvincia = idProvincia;
        this.NombreProvincia = NombreProvincia;
    }

    public int getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public int getIdProvincia() {
        return idProvincia;
    }

    public void setIdProvincia(int idProvincia) {
        this.idProvincia = idProvincia;
    }

    public String getNombreProvincia() {
        return NombreProvincia;
    }

    public void setNombreProvincia(String NombreProvincia) {
        this.NombreProvincia = NombreProvincia;
    }

    

}
