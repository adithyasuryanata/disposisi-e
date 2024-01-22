<?php defined('BASEPATH') or exit('No direct script access allowed');
class Templatesurat extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Template_model");
        cek_login();
        $this->load->library('form_validation');
    }
    public function index()
    {
        $data = array(
            'title' => 'View Data Template Surat',
            'userlog' => infoLogin(),
            'template' => $this->Template_model->getAll(),
            'content' => 'Template_surat/index'
        );
        $this->load->view('admin/template/main', $data);
    }
    public function add()
    {
        $data = array(
            'title' => 'Tambah Data Template Surat',
            'content' => 'template_surat/add_form'
        );
        $this->load->view('admin/template/main', $data);
    }
    public function save()
    {
        $this->Template_model->Save();
        if ($this->db->affected_rows() > 0) {
            $this->session->set_flashdata("success", "Data user Berhasil DiSimpan");
        }
        redirect('templatesurat');
    }
    public function getedit($id)
    {
        $data = array(
            'title' => 'Update Data Template Surat',
            'suratdata' => $this->Template_model->getById($id),
            'content' => 'template_surat/edit_form'
        );
        $this->load->view('admin/template/main', $data);
    }
    public function edit()
    {
        $this->Template_model->editDatatemplate();
        if ($this->db->affected_rows() > 0) {
            $this->session->set_flashdata("success", "Data user Berhasil DiUpdate");
        }
        redirect('templatesurat');
    }
    function delete($id)
    {
        $this->Template_model->delete($id);
        redirect('templatesurat');
    }
    public function surat_ajuan($id)
    {
        $surat = $this->Template_model->getById($id);
        $nama = $surat->nama;
        $perihal = $surat->perihal;
        $date = $surat->tgl_kirim;
        $kepada = $surat->tujuan_surat;

        // memanggil dan membaca template dokumen 
        $alamat_file = base_url('assets/lap/contoh_surat.rtf');
        $document = file_get_contents($alamat_file);

        // isi dokumen dinyatakan dalam bentuk string 
        $document = str_replace("#NAMA", $nama, $document);
        $document = str_replace("#PER", $perihal, $document);
        $document = str_replace("#SURAT_TO", $kepada, $document);
        $document = str_replace("#DATE", $date, $document);

        // header untuk membuka file output RTF dengan MS. Word 
        header("Content-type: application/msword");
        header("Content-disposition: inline; filename=Laporan_contoh.doc");
        header("Content-length: " . strlen($document));
        echo $document;
    }
}