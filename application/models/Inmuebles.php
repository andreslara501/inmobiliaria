<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inmuebles extends CI_Model
{
    function get()
    {
        $result = $this -> db
                        -> order_by("fecha", "asc")
                        -> where("activo = 1")
                        -> get("inmuebles");

        return json_encode($result -> result_array(), JSON_PRETTY_PRINT);
    }

    function inmueble($id)
    {
        $result = $this -> db
                        -> order_by("fecha", "asc")
                        -> where("activo = 1")
                        -> where("id = ".$id)
                        -> get("inmuebles");

        return json_encode($result -> result_array(), JSON_PRETTY_PRINT);
    }

    function crear_inmueble($data)
    {
        $result = $this -> db -> insert("inmuebles", $data);
        $result_array[0] = $this -> db -> insert_id();
        return json_encode($result_array, JSON_PRETTY_PRINT);
    }

    function busqueda($data)
    {
        $consulta_sql = "";

        $consulta_sql = $consulta_sql . "activo = 1";

        if($data["venta_alquiler"]!=0){
            $consulta_sql = $consulta_sql . " AND venta_alquiler = '" . $data["venta_alquiler"] . "'";
        }
        if($data["fotografia"]!=0){
            $consulta_sql = $consulta_sql . " AND fotografia = '" . $data["fotografia"] . "'";
        }

        $consulta_sql = $consulta_sql . " AND departamento = '" . $data["departamento"] . "'";
        $consulta_sql = $consulta_sql . " AND municipio = '" . $data["municipio"] . "'";

        if($data["sector"]!=0){
            $consulta_sql = $consulta_sql . " AND sector = '" . $data["sector"] . "'";
        }
        if($data["tipo_propiedad"]!=0){
            $consulta_sql = $consulta_sql . " AND tipo_propiedad = '" . $data["tipo_propiedad"] . "'";
        }
        if($data["precio_min"]!=0){
            $consulta_sql = $consulta_sql . " AND precio >= '" . $data["precio_min"] . "' AND precio <= '" . $data["precio_max"] . "'";
        }
        if($data["area_min"]!=0){
            $consulta_sql = $consulta_sql . " AND area >= '" . $data["area_min"] . "' AND area <= '" . $data["area_max"] . "'";
        }
        if($data["habitaciones"]!=0){
            $consulta_sql = $consulta_sql . " AND habitaciones = '" . $data["habitaciones"] . "'";
        }
        if($data["banos"]!=0){
            $consulta_sql = $consulta_sql . " AND banos = '" . $data["banos"] . "'";
        }
        if($data["fotografia"]!=0){
            $consulta_sql = $consulta_sql . " AND fotografia = '" . $data["fotografia"] . "'";
        }



        if(isset($data["gas"])){
            $consulta_sql = $consulta_sql . " AND gas = '" . $data["gas"] . "'";
        }
        if(isset($data["residencial"])){
            $consulta_sql = $consulta_sql . " AND residencial = '" . $data["residencial"] . "'";
        }
        if(isset($data["cocina_integral"])){
            $consulta_sql = $consulta_sql . " AND cocina_integral = '" . $data["cocina_integral"] . "'";
        }
        if(isset($data["piscina"])){
            $consulta_sql = $consulta_sql . " AND piscina = '" . $data["piscina"] . "'";
        }
        if(isset($data["parqueadero"])){
            $consulta_sql = $consulta_sql . " AND parqueadero = '" . $data["parqueadero"] . "'";
        }
        if(isset($data["transporte_cerca"])){
            $consulta_sql = $consulta_sql . " AND transporte_cerca = '" . $data["transporte_cerca"] . "'";
        }
        if(isset($data["supermercados_cerca"])){
            $consulta_sql = $consulta_sql . " AND supermercados_cerca = '" . $data["supermercados_cerca"] . "'";
        }
        if(isset($data["colegios_cerca"])){
            $consulta_sql = $consulta_sql . " AND colegios_cerca = '" . $data["colegios_cerca"] . "'";
        }
        if(isset($data["zona_comercial_cerca"])){
            $consulta_sql = $consulta_sql . " AND zona_comercial_cerca = '" . $data["zona_comercial_cerca"] . "'";
        }
        if(isset($data["zona_rosa_cerca"])){
            $consulta_sql = $consulta_sql . " AND zona_rosa_cerca = '" . $data["zona_rosa_cerca"] . "'";
        }

        $result = $this -> db
                        -> order_by("fecha", "asc")
                        -> where($consulta_sql)
                        -> get("inmuebles");

        return json_encode($result -> result_array(), JSON_PRETTY_PRINT);
    }
}
?>
