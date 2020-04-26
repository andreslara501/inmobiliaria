<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set('America/Bogota');
class Api extends CI_Controller
{

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this -> load -> model('personas');
		$this -> load -> view('head');
		$this -> load -> view('index');
		$this -> load -> view('foot');
	}

	/*Inmuebles*/
	public function inmuebles(){
		$this -> load -> model('inmuebles');
		echo $this -> inmuebles -> get();
	}

	public function inmueble($id){
		$this -> load -> model('inmuebles');
		echo $this -> inmuebles -> inmueble($id);
	}

	public function crear_inmueble(){
		$data = $this->input->post();
		$this -> load -> model('inmuebles');
		echo $this -> inmuebles -> crear_inmueble($data);
	}

	public function busqueda_inmuebles(){
		$data = $this->input->post();
		$this -> load -> model('inmuebles');
		echo $this -> inmuebles -> busqueda($data);
	}

	/* Departamentos y municipios */
	public function departamentos(){
		$this -> load -> model('departamentos');
		echo $this -> departamentos -> get();
	}

	public function municipios($departamento){
		$this -> load -> model('municipios');
		echo $this -> municipios -> get($departamento);
	}

	public function upload($id){
		if (!empty($_FILES)) {
			$tempFile = $_FILES['file']['tmp_name'];
		    $targetPath = dirname( __FILE__ ). "/../../uploads/propiedades/" . $id . "/";
		    $targetFile =  $targetPath. $_FILES['file']['name'];
	    	move_uploaded_file($tempFile,$targetFile);
		}else{
		    $result  = array();
		    $files = scandir(dirname( __FILE__ ). "/../../uploads/propiedades/" . $id . "/");
		    if(false!==$files){
		        foreach ($files as $file){
		            if('.'!=$file && '..'!=$file){
		                $obj['name'] = $file;
		                $obj['size'] = filesize(dirname( __FILE__ ). "/../../uploads/propiedades/" . $id . "/" . $file);
		                $result[] = $obj;
		            }
		        }
		    }

		    header('Content-type: text/json');              //3
		    header('Content-type: application/json');
		    echo json_encode($result);
		}
	}
}
