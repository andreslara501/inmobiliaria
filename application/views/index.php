    <script src="/theme/js/index.js"></script>
    <div class="row">
        <div class="small-12 medium-4 large-3 columns panel">
            <form id="busqueda_inmuebles" action="/api/busqueda_inmuebles/" method="post" enctype="multipart/form-data" nuevo="true">
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
                <div class="small-6 columns" style="padding-left:0px; padding-right: 5px;">
                    <span class="radius secondary label"><strong>Mínimo</strong></span>
                    <select name="precio_min">
                        <option value="0">No aplica</option>
                        <option value="5000000">5.000.000</option>
                        <option value="6000000">6.000.000</option>
                        <option value="7000000">7.000.000</option>
                        <option value="7500000">7.500.000</option>
                        <option value="8000000">8.000.000</option>
                        <option value="9000000">9.000.000</option>
                        <option value="10000000">10.000.000</option>
                        <option value="12500000">12.500.000</option>
                        <option value="15000000">15.000.000</option>
                        <option value="17500000">17.500.000</option>
                        <option value="20000000">20.000.000</option>
                        <option value="25000000">25.000.000</option>
                        <option value="30000000">30.000.000</option>
                        <option value="35000000">35.000.000</option>
                        <option value="40000000">40.000.000</option>
                        <option value="45000000">45.000.000</option>
                        <option value="50000000">50.000.000</option>
                        <option value="60000000">60.000.000</option>
                        <option value="70000000">70.000.000</option>
                        <option value="75000000">75.000.000</option>
                        <option value="80000000">80.000.000</option>
                        <option value="90000000">90.000.000</option>
                        <option value="100000000">100.000.000</option>
                        <option value="200000000">200.000.000</option>
                        <option value="250000000">250.000.000</option>
                        <option value="300000000">300.000.000</option>
                        <option value="350000000">350.000.000</option>
                        <option value="400000000">400.000.000</option>
                        <option value="450000000">450.000.000</option>
                        <option value="500000000">500.000.000</option>
                        <option value="750000000">750.000.000</option>
                        <option value="1000000000">1.000.000.000</option>
                        <option value="2000000000">2.000.000.000</option>
                        <option value="2500000000">2.500.000.000</option>
                        <option value="3000000000">3.000.000.000</option>
                        <option value="4000000000">4.000.000.000</option>
                        <option value="5000000000">5.000.000.000</option>
                    </select>
                </div>
                <div class="small-6 columns" style="padding-right:0px; padding-left: 5px;">
                    <span class="radius secondary label"><strong>Máximo</strong></span>
                    <select name="precio_max">
                        <option value="0">No aplica</option>
                        <option value="5000000">5.000.000</option>
                        <option value="6000000">6.000.000</option>
                        <option value="7000000">7.000.000</option>
                        <option value="7500000">7.500.000</option>
                        <option value="8000000">8.000.000</option>
                        <option value="9000000">9.000.000</option>
                        <option value="10000000">10.000.000</option>
                        <option value="12500000">12.500.000</option>
                        <option value="15000000">15.000.000</option>
                        <option value="17500000">17.500.000</option>
                        <option value="20000000">20.000.000</option>
                        <option value="25000000">25.000.000</option>
                        <option value="30000000">30.000.000</option>
                        <option value="35000000">35.000.000</option>
                        <option value="40000000">40.000.000</option>
                        <option value="45000000">45.000.000</option>
                        <option value="50000000">50.000.000</option>
                        <option value="60000000">60.000.000</option>
                        <option value="70000000">70.000.000</option>
                        <option value="75000000">75.000.000</option>
                        <option value="80000000">80.000.000</option>
                        <option value="90000000">90.000.000</option>
                        <option value="100000000">100.000.000</option>
                        <option value="200000000">200.000.000</option>
                        <option value="250000000">250.000.000</option>
                        <option value="300000000">300.000.000</option>
                        <option value="350000000">350.000.000</option>
                        <option value="400000000">400.000.000</option>
                        <option value="450000000">450.000.000</option>
                        <option value="500000000">500.000.000</option>
                        <option value="750000000">750.000.000</option>
                        <option value="1000000000">1.000.000.000</option>
                        <option value="2000000000">2.000.000.000</option>
                        <option value="2500000000">2.500.000.000</option>
                        <option value="3000000000">3.000.000.000</option>
                        <option value="4000000000">4.000.000.000</option>
                        <option value="5000000000">5.000.000.000</option>
                    </select>
                </div>

                <h2>Area</h2>
                <div class="small-6 columns" style="padding-left:0px; padding-right: 5px;">
                    <span class="radius secondary label"><strong>Mínima</strong></span>
                    <select name="area_min">
                        <option value="0">No aplica</option>
                        <option value="30">30&sup2;</option>
                        <option value="40">40&sup2;</option>
                        <option value="50">50&sup2;</option>
                        <option value="60">60&sup2;</option>
                        <option value="70">70&sup2;</option>
                        <option value="80">80&sup2;</option>
                        <option value="90">90&sup2;</option>
                        <option value="100">100&sup2;</option>
                        <option value="110">110&sup2;</option>
                        <option value="120">120&sup2;</option>
                        <option value="130">130&sup2;</option>
                        <option value="140">140&sup2;</option>
                        <option value="150">150&sup2;</option>
                        <option value="160">160&sup2;</option>
                        <option value="170">170&sup2;</option>
                        <option value="180">180&sup2;</option>
                        <option value="190">190&sup2;</option>
                        <option value="200">200&sup2;</option>
                        <option value="210">210&sup2;</option>
                        <option value="220">220&sup2;</option>
                        <option value="230">230&sup2;</option>
                        <option value="240">240&sup2;</option>
                        <option value="250">250&sup2;</option>
                        <option value="260">260&sup2;</option>
                        <option value="270">270&sup2;</option>
                        <option value="280">280&sup2;</option>
                        <option value="290">290&sup2;</option>
                        <option value="300">300&sup2;</option>
                        <option value="310">310&sup2;</option>
                        <option value="320">320&sup2;</option>
                        <option value="330">330&sup2;</option>
                        <option value="340">340&sup2;</option>
                        <option value="350">350&sup2;</option>
                        <option value="360">360&sup2;</option>
                        <option value="370">370&sup2;</option>
                        <option value="380">380&sup2;</option>
                        <option value="390">390&sup2;</option>
                        <option value="400">400&sup2;</option>
                    </select>
                </div>
                <div class="small-6 columns" style="padding-right:0px; padding-left: 5px;">
                    <span class="radius secondary label"><strong>Máxima</strong></span>
                    <select name="area_max">
                        <option value="0">No aplica</option>
                        <option value="30">30&sup2;</option>
                        <option value="40">40&sup2;</option>
                        <option value="50">50&sup2;</option>
                        <option value="60">60&sup2;</option>
                        <option value="70">70&sup2;</option>
                        <option value="80">80&sup2;</option>
                        <option value="90">90&sup2;</option>
                        <option value="100">100&sup2;</option>
                        <option value="110">110&sup2;</option>
                        <option value="120">120&sup2;</option>
                        <option value="130">130&sup2;</option>
                        <option value="140">140&sup2;</option>
                        <option value="150">150&sup2;</option>
                        <option value="160">160&sup2;</option>
                        <option value="170">170&sup2;</option>
                        <option value="180">180&sup2;</option>
                        <option value="190">190&sup2;</option>
                        <option value="200">200&sup2;</option>
                        <option value="210">210&sup2;</option>
                        <option value="220">220&sup2;</option>
                        <option value="230">230&sup2;</option>
                        <option value="240">240&sup2;</option>
                        <option value="250">250&sup2;</option>
                        <option value="260">260&sup2;</option>
                        <option value="270">270&sup2;</option>
                        <option value="280">280&sup2;</option>
                        <option value="290">290&sup2;</option>
                        <option value="300">300&sup2;</option>
                        <option value="310">310&sup2;</option>
                        <option value="320">320&sup2;</option>
                        <option value="330">330&sup2;</option>
                        <option value="340">340&sup2;</option>
                        <option value="350">350&sup2;</option>
                        <option value="360">360&sup2;</option>
                        <option value="370">370&sup2;</option>
                        <option value="380">380&sup2;</option>
                        <option value="390">390&sup2;</option>
                        <option value="400">400&sup2;</option>
                    </select>
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

                <h2 class="more"><i class="fi-plus"></i> Extra</h2>
                <div>
                    <input id="gas" name="gas" type="checkbox" value="1"><label for="gas">Instalación gas</label><br>
                    <input id="residencial" name="residencial" type="checkbox" value="1"><label for="residencial">Zona residencial</label><br>
                    <input id="cocina_integral" name="cocina_integral" type="checkbox" value="1"><label for="cocina_integral">Cocina integral</label><br>
                </div>

                <h2 class="more"><i class="fi-plus"></i> Conjunto</h2>
                <div>
                    <input id="piscina" name="piscina" type="checkbox" value="1"><label for="piscina">Piscina</label><br>
                    <input id="parqueadero" name="parqueadero" type="checkbox" value="1"><label for="parqueadero">Parqueadero</label><br>
                </div>

                <h2 class="more"><i class="fi-plus"></i> Cerca a</h2>
                <div>
                    <input id="transporte_cerca" name="transporte_cerca" type="checkbox" value="1"><label for="transporte_cerca">Transporte público</label><br>
                    <input id="supermercados_cerca" name="supermercados_cerca" type="checkbox" value="1"><label for="supermercados_cerca">Supermercados</label><br>
                    <input id="colegios_cerca" name="colegios_cerca" type="checkbox" value="1"><label for="colegios_cerca">Colegios</label><br>
                    <input id="zona_comercial_cerca" name="zona_comercial_cerca" type="checkbox" value="1"><label for="zona_comercial_cerca">Zona comercial</label><br>
                    <input id="zona_rosa_cerca" name="zona_rosa_cerca" type="checkbox" value="1"><label for="zona_rosa_cerca">Zona rosa</label><br>
                </div>
                <button id="buscar" type="submit" class="radius">Buscar</button>
            </form>
        </div>
        <div id="ajax_content" class="small-12 medium-8 large-9 columns">
            <ul id="propiedades" class="clearing-thumbs small-block-grid-1 medium-block-grid-2 large-block-grid-3">
            </ul>
            <div id="perfil_inmueble" class="panel clearfix">
                <a id="atras" href="#" class="button tiny success radius">« Volver a resultados</a>
                <h2 id="ajax_titulo">Arrienda inmueble</h2>
                <ul class="example-orbit" data-orbit>
                    <li>
                        <div class="img_content">
                            <img src="/uploads/propiedades/1/2.jpg" alt="slide 1"/>
                        </div>
                        <div class="orbit-caption">Caption One.</div>
                    </li>
                    <li class="active">
                        <div class="img_content">
                            <img src="/uploads/propiedades/1/3.jpg" alt="slide 2" />
                        </div>
                        <div class="orbit-caption">Caption One.</div>
                    </li>
                    <li>
                        <div class="img_content">
                            <img src="/uploads/propiedades/1/4.jpg" alt="slide 3" />
                        </div>
                        <div class="orbit-caption">Caption One.</div>
                    </li>
                </ul>
                <div class="small-12 medium-6 columns">
                    <div id="precio">$ <span id="ajax_precio">300.000</span></div>
                    <div id="direccion"><span id="ajax_direccions">cl.3 7E139 Norte De Santander, Cúcuta</span></div>
                    <div id="id_consulta">ID: <span id="ajax_id"> 660281012-5 </span></div>
                    <br>
                    <h3>Descripcion</h3>
                    <p id="descripcion"><span id="ajax_descripcion"> jandjhah nsjhdb ajhfba hsbd uhabs</span></p>
                </div>
                <div class="small-12 medium-6 columns">
                    <div id="map" style="width:100%; height:200px;"></div>
                    <br>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/1.png">
                        </div>
                        <div class="small-7 columns">Baños</div>
                        <div class="small-4 columns text-right" id="ajax_banos_perfil">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/3.png">
                        </div>
                        <div class="small-7 columns">Habitaciones</div>
                        <div class="small-4 columns text-right" id="ajax_habitaciones">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/4.png">
                        </div>
                        <div class="small-7 columns">Area</div>
                        <div class="small-4 columns text-right" id="ajax_area_perfil">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/x.png">
                        </div>
                        <div class="small-7 columns">Instalación gas</div>
                        <div class="small-4 columns text-right" id="ajax_gas">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/x.png">
                        </div>
                        <div class="small-7 columns">Zona residencial</div>
                        <div class="small-4 columns text-right" id="ajax_residencial">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/x.png">
                        </div>
                        <div class="small-7 columns">Cocina integral</div>
                        <div class="small-4 columns text-right" id="ajax_cocina_integral">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/x.png">
                        </div>
                        <div class="small-7 columns">Piscina</div>
                        <div class="small-4 columns text-right" id="ajax_piscina">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/x.png">
                        </div>
                        <div class="small-7 columns">Parqueadero</div>
                        <div class="small-4 columns text-right" id="ajax_parqueadero">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/x.png">
                        </div>
                        <div class="small-7 columns">Transporte</div>
                        <div class="small-4 columns text-right" id="ajax_transporte_cerca">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/x.png">
                        </div>
                        <div class="small-7 columns">Supermercados</div>
                        <div class="small-4 columns text-right" id="ajax_supermercados_cerca">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/x.png">
                        </div>
                        <div class="small-7 columns">Colegios</div>
                        <div class="small-4 columns text-right" id="ajax_colegios_cerca">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/x.png">
                        </div>
                        <div class="small-7 columns">Zona comercial</div>
                        <div class="small-4 columns text-right" id="ajax_zona_comercial_cerca">30</div>
                    </div>
                    <div class="caracteristica">
                        <div class="small-1 columns">
                            <img src="/img/x.png">
                        </div>
                        <div class="small-7 columns">Zona rosa</div>
                        <div class="small-4 columns text-right" id="ajax_zona_rosa_cerca">30</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
