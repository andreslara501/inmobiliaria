    <div class="row">
        <a href="/admin" class="button">« Volver</a>
    </div>

    <div id="firstModal" class="reveal-modal" data-reveal aria-labelledby="secondModalTitle" aria-hidden="true" role="dialog">
        <h2 id="secondModalTitle">Imágenes </h2>
        <iframe id="iframe_imagenes" width="100%" height="300" src="/upload_image/" frameborder="0" allowfullscreen></iframe>
        <a class="close-reveal-modal" aria-label="Close">&#215;</a>
    </div>
    <div class="row">
        <div class="small-12 columns panel">
            <form id="crear_inmueble" action="/api/crear_inmueble/" method="post" enctype="multipart/form-data" nuevo="true">
                <div class="button-group round toggle small-12" data-toggle="buttons-radio">
                    <div class="small-6 columns">
                        <input type="radio" id="venta_alquiler1" name="venta_alquiler" data-toggle="button" checked value="0">
                        <label class="button tiny" for="venta_alquiler1">Venta</label>
                    </div>
                    <div class="small-6 columns">
                        <input type="radio" id="venta_alquiler2" name="venta_alquiler" data-toggle="button" value="1">
                        <label class="button tiny" for="venta_alquiler2">Alquiler</label>
                    </div>
                </div>

                <br>

                <h2>Ubicación</h2>
                <select name="departamento"></select>
                <select name="municipio"></select>

                <h2>Sector</h2>
                <select name="sector">
                    <option value="0">No aplica</option>
                    <option value="1">Sur</option>
                    <option value="2">Norte</option>
                    <option value="3">Oeste</option>
                    <option value="4">Oriente</option>
                    <option value="5">Centro</option>
                </select>

                <h2>Tipo propiedad</h2>
                <select name="tipo_propiedad">
                    <option value="0">No aplica</option>
                    <option value="1">Apartamento</option>
                    <option value="2">Casa</option>
                    <option value="3">Edificio</option>
                    <option value="4">Estudio</option>
                    <option value="5">Finca de Recreo</option>
                    <option value="6">Garaje</option>
                    <option value="7">Habitaci&#243;n</option>
                    <option value="8">Lote/Casa Lote</option>
                    <option value="9">Penthouse</option>
                    <option value="10">Tiempo Compartido</option>
                </select>

                <h2>Precio</h2>
                <div class="small-12 columns" style="padding-left:0px; padding-right: 5px;">
                    <input type="text" id="precio" name ="precio">
                </div>

                <h2>Area</h2>
                <div class="small-12 columns" style="padding-left:0px; padding-right: 5px;">
                    <input type="text" id="precio" name ="precio">
                </div>

                <h2>Habitaciones o espacios</h2>
                <select name="habitaciones">
                    <option value="0">No aplica</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                </select>

                <h2>Baños</h2>
                <select name="banos">
                    <option value="0">No aplica</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                </select>

                <h2>Fotografía</h2>

                <div class="button-group round toggle small-12" data-toggle="buttons-radio">
                    <div class="small-6 columns">
                        <input type="radio" id="foto1" name="fotografia" data-toggle="button" value="1" checked>
                        <label class="button tiny" for="foto1">Sí</label>
                    </div>
                    <div class="small-6 columns">
                        <input type="radio" id="foto2" name="fotografia" data-toggle="button" value="0">
                        <label class="button tiny" for="foto2">No</label>
                    </div>
                </div>

                <br>

                <h2>Extra</h2>
                <div>
                    <input id="gas" name="gas" type="checkbox" value="1"><label for="gas">Instalación gas</label><br>
                    <input id="residencial" name="residencial" type="checkbox" value="1"><label for="residencial">Zona residencial</label><br>
                    <input id="cocina_integral" name="cocina_integral" type="checkbox" value="1"><label for="cocina_integral">Cocina integral</label><br>
                </div>

                <h2>Conjunto</h2>
                <div>
                    <input id="piscina" name="piscina" type="checkbox" value="1"><label for="piscina">Piscina</label><br>
                    <input id="parqueadero" name="parqueadero" type="checkbox" value="1"><label for="parqueadero">Parqueadero</label><br>
                </div>

                <h2>Cerca a</h2>
                <div>
                    <input id="transporte_cerca" name="transporte_cerca" type="checkbox" value="1"><label for="transporte_cerca">Transporte público</label><br>
                    <input id="supermercados_cerca" name="supermercados_cerca" type="checkbox" value="1"><label for="supermercados_cerca">Supermercados</label><br>
                    <input id="colegios_cerca" name="colegios_cerca" type="checkbox" value="1"><label for="colegios_cerca">Colegios</label><br>
                    <input id="zona_comercial_cerca" name="zona_comercial_cerca" type="checkbox" value="1"><label for="zona_comercial_cerca">Zona comercial</label><br>
                    <input id="zona_rosa_cerca" name="zona_rosa_cerca" type="checkbox" value="1"><label for="zona_rosa_cerca">Zona rosa</label><br>
                </div>

                <button id="boton_imagenes" type="button" class="radius success" data-reveal-id="firstModal">Imágenes</button>

                <button id="buscar" type="submit" class="radius">Crear inmueble</button>
                <button id="buscar" type="submit" class="radius">Cancelar</button>
            </form>
        </div>
    </div>
<script src="/theme/js/admin.js"></script>
