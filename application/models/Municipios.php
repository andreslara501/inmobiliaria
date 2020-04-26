<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Municipios extends CI_Model
{
    function get($departamento)
    {
        $result = $this -> db
                        -> order_by("valor", "asc")
                        -> where("departamento = " . $departamento)
                        -> get('municipio');

        return json_encode($result -> result_array(), JSON_PRETTY_PRINT);
    }
}
?>
