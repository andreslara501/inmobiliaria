<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Departamentos extends CI_Model
{
    function get()
    {
        $result = $this -> db
                        -> order_by("valor", "asc")
                        -> get('departamento');

        return json_encode($result -> result_array(), JSON_PRETTY_PRINT);
    }
}
?>
