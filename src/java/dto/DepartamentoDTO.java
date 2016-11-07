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
public class DepartamentoDTO {
    private int idDepartamento;
    private String NombreDepartamento;

    public DepartamentoDTO() {
    }

    public DepartamentoDTO(int idDepartamento, String NombreDepartamento) {
        this.idDepartamento = idDepartamento;
        this.NombreDepartamento = NombreDepartamento;
    }

    public int getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public String getNombreDepartamento() {
        return NombreDepartamento;
    }

    public void setNombreDepartamento(String NombreDepartamento) {
        this.NombreDepartamento = NombreDepartamento;
    }

   

}
