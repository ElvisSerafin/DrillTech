$(document).ready(function(){
    $('#btnCancelar').click(function(){
        $(location).attr('href',"MostrarMarca_Producto.jsp");
    });
    
    $('#btnGuardar').click(function(){
        validarDatos();
    });
});

function validarDatos(){
    var nombre = $('#txtNombre').val();
    
    if(nombre == ""){
        alert("El campo marca producto no puede estar vacio");
        $('#txtNombre').focus();
    }
    else{
        $('#frmModificarMP').submit();
    }
}