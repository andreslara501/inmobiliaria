<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clientes extends CI_Controller
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
		$this -> load -> view('head');
		$this -> load -> view('menu');
		$data = array("nuevo" => "false");
		$this -> load -> vars($data);
		$this -> load -> view('clientes');
		$this -> load -> view('foot');
	}

	public function nuevo()
	{
		$this -> load -> view('head');
		$this -> load -> view('menu');
		$data = array("nuevo" => "true");
		$this -> load -> vars($data);
		$this -> load -> view('clientes');
		$this -> load -> view('foot');
	}

	public function editar($id)
	{
		/* Cargo lista procesos */
		$this -> load -> view('head');
		$this -> load -> view('menu');

		$data = array('id' => $id);
		$this -> load -> vars($data);
		$this -> load -> view('inventario_elemento_editar');
		$this -> load -> view('foot');
	}
}
