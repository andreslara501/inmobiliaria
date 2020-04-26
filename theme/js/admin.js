date_time = Date.now();

function generar_inmueble(data, k){
    result = "\
    <a class=\"row inmuebles_lista\" target=\"blank\" href=\"/admin_editar/" + data[k].id + "\">\
        <div class=\"medium-12 columns\" id=\"inmueble_"+data[k].id+"\">" + data[k].id + " - Se " + venta_alquiler[data[0].venta_alquiler] + " " + tipo_propiedad[data[0].tipo_propiedad] + "</div>\
    </a>\
    ";
    return result;
}

/*Generar municipios*/
var departamentos = departamentos();
function municipios(departamento, id_selected){
    return $.ajax('/Api/municipios/'+departamento,{
        type: 'GET',
        dataType: 'json'
    })
    .error(function (jqXHR, textStatus, errorThrown){
        alert("No se pudo cargar los datos correctamente: iva");
    })
    .done(function(municipios){
        $("select[name=municipio] option").remove();
        $.each(municipios, function(k,v){
            valor = municipios[k].valor;
            if(municipios[k].id==id_selected){
                $("select[name=municipio]").append("\
                    <option selected value="+municipios[k].id+">"+MaysPrimera(valor.toLowerCase())+"</option>\
                ");
            }else{
                $("select[name=municipio]").append("\
                    <option value="+municipios[k].id+">"+MaysPrimera(valor.toLowerCase())+"</option>\
                ");
            }
        });
    });
}

function municipios_all(departamento){
    return $.ajax('/Api/municipios/'+departamento,{
        type: 'GET',
        dataType: 'json'
    })
    .error(function (jqXHR, textStatus, errorThrown){
        alert("No se pudo cargar los datos correctamente: iva");
    });
}

/*Cargando todo*/
var checker_universal = setInterval(function(ready){
    c_departamentos = false;

    departamentos = departamentos.done(function(){
        c_departamentos = true;
    });

    if(c_departamentos){
        clearInterval(checker_universal);

        /* Generando departamentos formulario */
        $.each(departamentos.responseJSON, function(k,v){
            valor = departamentos.responseJSON[k].valor;
            if(departamentos.responseJSON[k].id=="10"){
                $("select[name=departamento]").append("\
                    <option selected value="+departamentos.responseJSON[k].id+">"+MaysPrimera(valor.toLowerCase())+"</option>\
                ");
            }else{
                $("select[name=departamento]").append("\
                    <option value="+departamentos.responseJSON[k].id+">"+MaysPrimera(valor.toLowerCase())+"</option>\
                ");
            }
        });

        municipios(10, 418);
    }
},1);

/* Cuando inicia */
$(document).ready(function(){
    /* Primera carga inmuebles */
    $.ajax({
        url: "/api/inmuebles/",
        type: 'POST',
        dataType: 'json',
        data:$("form").serialize(),
    })
    .done(function(data){
        $("#ajax_inmuebles_otros").html("");
        $.each(data, function(k,v){
            $("#ajax_inmuebles_otros").append(generar_inmueble(data, k));
        });
    });

    /* Cuando Departamento cambioa */
    $("select[name=departamento]").change(function(){
        id_departamento = $(this).val();
        municipios(id_departamento, 418);
    });

/*Nuevo inmueble*/

    $("#boton_imagenes").click(function(){
        //$("#iframe_imagenes").attr("src", "/upload_image/" + date_time);
    });

    /* Envío formulario busqueda */
    $("#crear_inmueble").submit(function(e){
        /*Envio datos y espero respuesta de inmuebles*/
        var data_object = new FormData(this);
        $.ajax({
            url: $(this).attr("action"),
            type: 'POST',
            dataType: 'json',
            data:$("form").serialize(),
        })
        .done(function(data){
            console.log("oko");
            window.location="/admin/";
        });

        /*Oculto perfil y muestro propiedades*/
        $("#perfil_inmueble").hide();
                type: 'POST',
        $("#propiedades").fadeIn();
        $(document).scrollTop(0);
        e.preventDefault();
    });


});

/*Arrays ayuda*/
tipo_propiedad = [];
tipo_propiedad.push("apartamento");
tipo_propiedad.push("casa");
tipo_propiedad.push("edificio");
tipo_propiedad.push("estudio");
tipo_propiedad.push("finca de recreo");
tipo_propiedad.push("garaje");
tipo_propiedad.push("habitación");
tipo_propiedad.push("lote / casa lote");
tipo_propiedad.push("penhouse");
tipo_propiedad.push("tiempo");

venta_alquiler = [];
venta_alquiler.push("vende");
venta_alquiler.push("alquila");

si_no = [];
si_no.push("si");
si_no.push("no");
