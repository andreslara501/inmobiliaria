<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clientes extends CI_Model
{
    function get()
    {
        $result = $this -> db
                        -> order_by("nombre", "asc")
                        -> where('activo', "1")
                        -> get('clientes');

        return json_encode($result -> result_array(), JSON_PRETTY_PRINT);
    }

    function clientes_nombre($data)
    {
        $busqueda = $data["term"];
        $result = $this -> db
                        -> select("id, nombre as label")
                        -> order_by("nombre", "asc")
                        -> like("nombre", $busqueda)
                        //-> like("correo", $busqueda)
                        -> where('activo', "1")
                        -> get('clientes');

        return json_encode($result -> result_array(), JSON_PRETTY_PRINT);
    }

    function cliente($id)
    {
        $result = $this -> db
                        -> where('id', $id)
                        -> get('clientes');

        return json_encode($result -> result_array(), JSON_PRETTY_PRINT);
    }

    function update($data, $id)
    {
        $result = $this -> db -> update("clientes", $data, "id = ".$id);
        $result_array[0] = $id;
        return json_encode($result_array, JSON_PRETTY_PRINT);
    }

    function delete_foto($id)
    {
        $data = array("imagen" => "0");
        $result = $this -> db -> update("clientes", $data, "id = ".$id);
        $result_array[0] = $id;
        return json_encode($result_array, JSON_PRETTY_PRINT);
    }

    function add_foto($id)
    {
        $data = array("imagen" => "1");
        $result = $this -> db -> update("clientes", $data, "id = ".$id);
        $result_array[0] = $id;
        return json_encode($result_array, JSON_PRETTY_PRINT);
    }

    function set($data)
    {
        $result = $this -> db -> insert("clientes", $data);
        $result_array[0] = $this -> db -> insert_id();
        return json_encode($result_array, JSON_PRETTY_PRINT);
    }

    function delete($id)
    {
        $this -> db -> update('clientes', array("activo" => 0), "id = ".$id);
        return "deleted";
    }
}
?>
