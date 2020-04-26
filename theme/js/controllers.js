departamentos = function(){
    return $.ajax('/Api/departamentos/',{
        type: 'GET',
        dataType: 'json'
    })
    .error(function (jqXHR, textStatus, errorThrown){
        alert("No se pudo cargar los datos correctamente: iva");
    });
}
