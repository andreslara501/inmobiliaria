date_time = Date.now();

function generar_inmueble(data, k){
    result = "\
    <li>\
        <a class=\"inmueble\" id-inmueble=\""+data[k].id+"\">\
            <div class=\"photo\">\
                <img src=\"/uploads/propiedades/1/1.jpg\">\
            </div>\
            <div class=\"info\">\
                <h2>"+tipo_propiedad[data[k].tipo_propiedad]+"</h2>\
                <p class=\"descripcion\">"+data[k].descripcion+"</p>\
                <p class=\"valor\">$ "+unit_point(data[k].precio)+"</p>\
                <div class=\"columns small-4 icons\">\
                    <div class=\"columns small-6\">\
                        <img src=\"/img/1.png\">\
                    </div>\
                    <div class=\"columns small-6\">\
                        <span id=\"ajax_banos\">"+data[k].banos+"</span>\
                    </div>\
                    <div style=\"clear:both\"></div>\
                </div>\
                <div class=\"columns small-4 icons\">\
                    <div class=\"columns small-6\">\
                        <img src=\"/img/3.png\">\
                    </div>\
                    <div class=\"columns small-6\">\
                        <span id=\"ajax_cuartos\">"+data[k].habitaciones+"</span>\
                    </div>\
                    <div style=\"clear:both\"></div>\
                </div>\
                <div class=\"columns small-4 icons\">\
                    <div class=\"columns small-6\">\
                        <img src=\"/img/4.png\">\
                    </div>\
                    <div class=\"columns small-6\">\
                        <span id=\"ajax_area\">"+data[k].area+"</span>\
                    </div>\
                    <div style=\"clear:both\"></div>\
                </div>\
                <div style=\"clear:both\"></div>\
            </div>\
        </a>\
    </li>\
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
        $("#ajax_content #propiedades").html("");
        $.each(data, function(k,v){
            $("#ajax_content #propiedades").append(generar_inmueble(data, k));
        });
    });

    /* Envío formulario busqueda */
    $("#busqueda_inmuebles").submit(function(e){
        /*Envio datos y espero respuesta de inmuebles*/
        var data_object = new FormData(this);
        $.ajax({
            url: $(this).attr("action"),
            type: 'POST',
            dataType: 'json',
            data:$("form").serialize(),
        })
        .done(function(data){
            $("#ajax_content #propiedades").html("");
            $.each(data, function(k,v){
                /*Genero inmuebles*/
                $("#ajax_content #propiedades").append(generar_inmueble(data, k));
            });
        });

        /*Oculto perfil y muestro propiedades*/
        $("#perfil_inmueble").hide();
                type: 'POST',
        $("#propiedades").fadeIn();
        $(document).scrollTop(0);
        e.preventDefault();
    });

    /* Click en inmueble */
    $("body").delegate('.inmueble','click',function(e){
        var this_copia = $(this);

        /* Consulta de un solo inmueble */
        $("#propiedades").hide(function(){
            $.ajax({
                url: "/api/inmueble/"+this_copia.attr("id-inmueble"),
                dataType: 'json',
                data:$("form").serialize(),
            })
            .done(function(data){
                /* Cargo datos en el perfil inmueble */
                $("#perfil_inmueble").fadeIn();
                $("#ajax_titulo").text("Se " + venta_alquiler[data[0].venta_alquiler] + " " + tipo_propiedad[data[0].tipo_propiedad]);
                $("#ajax_precio").text(unit_point(data[0].precio));
                $("#ajax_direccions").text(data[0].direccion);
                $("#ajax_id").text(data[0].id);
                $("#ajax_descripcion").text(data[0].descripcion);
                $("#ajax_banos_perfil").text(data[0].banos);
                $("#ajax_habitaciones").text(data[0].habitaciones);
                $("#ajax_area_perfil").text(data[0].area);
                $("#ajax_gas").text(si_no[data[0].gas]);
                $("#ajax_residencial").text(si_no[data[0].residencial]);
                $("#ajax_cocina_integral").text(si_no[data[0].cocina_integral]);
                $("#ajax_piscina").text(si_no[data[0].piscina]);
                $("#ajax_parqueadero").text(si_no[data[0].parqueadero]);
                $("#ajax_transporte_cerca").text(si_no[data[0].transporte_cerca]);
                $("#ajax_supermercados_cerca").text(si_no[data[0].supermercados_cerca]);
                $("#ajax_colegios_cerca").text(si_no[data[0].colegios_cerca]);
                $("#ajax_zona_comercial_cerca").text(si_no[data[0].zona_comercial_cerca]);
                $("#ajax_zona_rosa_cerca").text(si_no[data[0].zona_rosa_cerca]);

                /* Mapa */
                map = new GMaps({
                  el: '#map',
                  lat: 4.5979934,
                  lng: -74.2006029
                });

                /* Recorrer departamentos */
                $.each(departamentos.responseJSON, function(k,v){
                    if(departamentos.responseJSON[k].id==data[0].departamento){
                        departamento_valor = departamentos.responseJSON[k].valor;
                        departamento_id = departamentos.responseJSON[k].id;
                    }
                });

                /* Recorrer municipios */
                $.ajax('/Api/municipios/'+departamento_id,{
                    type: 'GET',
                    dataType: 'json'
                })
                .error(function (jqXHR, textStatus, errorThrown){
                    alert("No se pudo cargar los datos correctamente: iva");
                })
                .done(function(data_municipios){
                    $.each(data_municipios, function(k,v){
                        if(data_municipios[k].id==data[0].municipio){
                            municipio_valor = data_municipios[k].valor;
                        }
                    });
                    GMaps.geocode({
                        address: data[0].direccion + " " + municipio_valor + " " + departamento_valor,
                        callback: function(results, status){
                            var latlng = results[0].geometry.location;
                            map.setCenter(latlng.lat(), latlng.lng());
                            map.addMarker({
                                lat: latlng.lat(),
                                lng: latlng.lng()
                            });
                        }
                    });
                });
                $("#map").css("width","100%").css("height","300px");

            });
        });
        e.preventDefault();
    });

    /* Click en el titulo con + del form de búsqueda */
    $(".more").click(function(){
        if($(this).find("i").hasClass("fi-plus")){
            $(this).find("i").removeClass("fi-plus").addClass("fi-minus");
        }
        else{
            $(this).find("i").removeClass("fi-minus").addClass("fi-plus");
        }
        $(this).next().toggle("fast");
    });

    /* Click en botón volver a resultados */
    $("#atras").click(function(){
        $("#perfil_inmueble").hide();
        $("#propiedades").fadeIn();
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
