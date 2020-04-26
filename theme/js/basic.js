jQuery.fn.sortElements = (function(){
    var sort = [].sort;
    return function(comparator, getSortable) {
        getSortable = getSortable || function(){return this;};
        var placements = this.map(function(){
            var sortElement = getSortable.call(this),
                parentNode = sortElement.parentNode,
                nextSibling = parentNode.insertBefore(
                    document.createTextNode(''),
                    sortElement.nextSibling
                );
            return function() {
                if (parentNode === this) {
                    throw new Error(
                        "You can't sort elements if any one is a descendant of another."
                    );
                }
                // Insert before flag:
                parentNode.insertBefore(this, nextSibling);
                // Remove flag:
                parentNode.removeChild(nextSibling);
            };
        });
        return sort.call(this, comparator).each(function(i){
            placements[i].call(getSortable.call(this));
        });
    };
})();

$(document).ready(function(){
    $("body").delegate('.unavailable','click',function(e) {
        e.preventDefault();
    });

    $('.close_button').click(function() {
      $('#myModal').foundation('reveal', 'close');
    });
});

function valida(e){
    tecla = (document.all) ? e.keyCode : e.which;

    //Tecla de retroceso para borrar, siempre la permite
    if (tecla==2){
        return true;
    }

    // Patron de entrada, en este caso solo acepta numeros
    patron =/[0-9]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}

function unit_point(num_simple){
    num = num_simple.split(".");
    num = num[0];
    num = num.split(",");
    num = num[0];

    num = num.replace(/[^0-9]/gi,'');

    long = num.length;
    long_start = long -3;
    long_end = long;
    j=0;
    result = "";
    for(i=0;i<=long;i++){

            if(i>0)
            {
                result = num.substring(long_start, long_end) + "." + result;
            }
            else{
                result = num.substring(long_start, long_end);
            }
        long_start = long_start-3;
        long_end = long_end-3;
        i=i+2;
    }
    if(result.length%4){
        return result;
    }
    else{
        return result.substring(1, result.length);
    }
}

function url_existe(url)
{
    var http = new XMLHttpRequest();
    http.open('HEAD', url, false);
    http.send();
    return http.status!=404;
}

function sin_puntos(cadena)
{
    return cadena.replace(/\./g,'');
}

function array_fecha(timestamp){
    var mes = [];
    mes["01"] = "ene";
    mes["02"] = "feb";
    mes["03"] = "mar";
    mes["04"] = "abr";
    mes["05"] = "may";
    mes["06"] = "jun";
    mes["07"] = "jul";
    mes["08"] = "ago";
    mes["09"] = "sep";
    mes["10"] = "oct";
    mes["11"] = "nov";
    mes["12"] = "dic";

    var fecha = timestamp.split(" ");
    var fecha = fecha[0].split("-");
	return fecha[2]+" "+mes[fecha[1]]+" "+fecha[0];
}

/* Funcion formatear tabla colores */
function formatear_tabla(){
    var alternar = 1;
    $('tbody tr:visible').each(function(){
        alternar = alternar * -1;
        if(alternar>0){
            $(this).css("background","#F2F2F2");
        }
        else{
            $(this).css("background","#FFFFFF");
        }
    });
}

/* Quitar acentos*/
var quitar_acentos = (function(){
    var from = "ÃÀÁÄÂÈÉËÊÌÍÏÎÒÓÖÔÙÚÜÛãàáäâèéëêìíïîòóöôùúüûÑñÇç",
    to = "AAAAAEEEEIIIIOOOOUUUUaaaaaeeeeiiiioooouuuunncc",
    mapping = {};

    for(var i = 0, j = from.length; i < j; i++ ){
        mapping[ from.charAt( i ) ] = to.charAt( i );
    }

    return function(str){
        var ret = [];
        for(var i = 0, j = str.length; i < j; i++){
            var c = str.charAt( i );
            if(mapping.hasOwnProperty(str.charAt(i))){
                ret.push( mapping[ c ] );
            }
            else{
                ret.push( c );
            }
        }
        return ret.join( '' );
    }
})();


/*Time Stamp*/
function timeStamp() {
// Create a date object with the current time
  var now = new Date();

// Create an array with the current month, day and time
  var date = [now.getFullYear(), now.getMonth()+1, now.getDate()];

// Create an array with the current hour, minute and second
  var time = [ now.getHours(), now.getMinutes(), now.getSeconds() ];

// Determine AM or PM suffix based on the hour
  //var suffix = ( time[0] < 12 ) ? "AM" : "PM";

// Convert hour from military time
  time[0] = ( time[0] < 12 ) ? time[0] : time[0] - 12;

// If hour is 0, set it to 12
  time[0] = time[0] || 12;

// If seconds and minutes are less than 10, add a zero
  for ( var i = 1; i < 3; i++ ) {
    if ( time[i] < 10 ) {
      time[i] = "0" + time[i];
    }
  }

// Return the formatted string
  return date.join("-") + " " + time.join(":");
}

/* Agregar archivo */
$(document).ready(function(){
    $("#file").change(function(){
        var file = this.files[0];
        var imagefile = file.type;
        var match= ["image/jpeg","image/png","image/jpg"];
        if(!((imagefile==match[0]) || (imagefile==match[1]) || (imagefile==match[2]))){
            $("#previewing").attr("src","/theme/img/no-image.png");
            alert("La imagen no es válida");
            return false;
        }
        else{
            var reader = new FileReader();
            reader.onload = imageIsLoaded;
            reader.readAsDataURL(this.files[0]);
            $("#delete_photo").show();
        }
    });
    function imageIsLoaded(e){
        $("#file").css("color","green");
        $('#previewing').attr('src', e.target.result);
    };

    /* eliminar foto */
    $("body").delegate("#delete_photo","click",function(e){
        e.preventDefault();
        $("#previewing").attr("src", "/theme/img/no-image.png");
        $("[type=file]").val("").css("color","black");
        $("#delete_photo").hide();
    })
});

function MaysPrimera(string){
    return string.charAt(0).toUpperCase() + string.slice(1);
}
