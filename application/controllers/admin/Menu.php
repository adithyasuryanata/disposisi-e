<?php defined('BASEPATH') or exit('No direct script access allowed');
class Menu extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // $this->load->model("product_model");
        cek_login();
        $this->load->library('form_validation');
    }
    public function index()
    {
        $data = array('title' => 'Dashboard', 'content' => "admin/dashboard/index");
        $this->load->view('admin/template/main', $data);
    }
}