<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class FuncionariosEdit extends CI_Controller {
  function __construct(){
    parent:: __construct();
    $this->load->model('funcionarios/funcionarioModel');
    $this->load->helper('form');

    }

	public function index()
	{
     $id = $this->input->get('id');
     $this->load->helper('url');
     $this->load->helper('form');
     $this->load->library('form_validation');
     $this->form_validation->set_rules('name','Nombre','required|min_length[3]|max_length[12]');
     $this->form_validation->set_rules('lastnameP','Apellido Paterno','trim|required|min_length[3]|max_length[15]');
     $this->form_validation->set_rules('lastnameM','Apellido Materno','trim|max_length[15]|min_length[3]');
     $this->form_validation->set_rules('rut','RUN','trim|required|max_length[12]|min_length[12]|is_unique[funcionario.rut]',array(
                  'required'      => 'El campo %s es obligatorio.',
                  'is_unique'     => 'Este %s Ya existe.'
          ));
     $this->form_validation->set_rules('selCargo','Cargo','trim|required');
     $this->form_validation->set_rules('selUnidades','Unidad','trim|required');
     $this->form_validation->set_rules('email','Correo','trim|valid_email|required');
     $this->form_validation->set_rules('anexo','Anexo','trim|required|max_length[15]|min_length[8]');
     $this->form_validation->set_rules('jefe','Jefe','trim|max_lenght[15]|min_lengtth[8]');
     if (!$this->form_validation->run())
     {

       $data['funcionario'] = $this->funcionarioModel->getFuncionario($id);
       $data['arrCargos'] = $this->funcionarioModel->getCargos();
       $data['arrUnidades'] = $this->funcionarioModel->getUnidades();
       $data['arrJefe'] = $this->funcionarioModel->getJefe();
       $this->load->view('sidebar');
       $this->load->view('headerMain');
       $this->load->view('funcionarios/modalEdit',$data);
       $this->load->view('footer');
	}else{
    if (empty($_FILES['userfile']['name'])){
      // $error = array('error' => $this->upload->display_errors());
            // $id = $this->uri->segment(4);
            $data = array(
            'nombre' => $this->input->post('name'),
            'apellidoP'=> $this->input->post('lastnameP'),
            'apellidoM'=> $this->input->post('lastnameM'),
            'rut'=> $this->input->post('rut'),
            'anexo'=> $this->input->post('anexo'),
            'email'=> $this->input->post('email'),
            'jefe'=> $this->input->post('selJefe'),
            'unidad_idunidad'=> $this->input->post('selUnidades'),
            'cargo_idcargo'=> $this->input->post('selCargo')
            // 'imagen' => 'default.jpg'

          );

          $this->funcionarioModel->funcionarioUpdate($data,$id);
  } else{
    $config['upload_path']          = FCPATH.'uploads/';
    $config['allowed_types']        = 'gif|jpg|png';
    $this->load->library('upload', $config);
    $this->upload->initialize($config);
    // $data = array('upload_data' => $this->upload->data());
    if ( !$this->upload->do_upload('userfile',FALSE)) {
      $error = array('error' => $this->upload->display_errors());
    }else{

    $dataf = $this->upload->data();
    $nombre_archivo=$dataf['file_name'];
    $data = array(
    'nombre' => $this->input->post('name'),
    'apellidoP'=> $this->input->post('lastnameP'),
    'apellidoM'=> $this->input->post('lastnameM'),
    'rut'=> $this->input->post('rut'),
    'email'=> $this->input->post('email'),
    'anexo'=> $this->input->post('anexo'),
    'imagen' => $this->input->post('image'),
    'jefe'=> $this->input->post('selJefe'),
    'unidad_idunidad'=> $this->input->post('selUnidades'),
    'cargo_idcargo'=> $this->input->post('selUnidades'),
    'imagen' => $nombre_archivo
    );

    $this->funcionarioModel->funcionarioUpdate($data,$id);
  }}
redirect('/index.php/funcionarios/funcionariosDashboard', 'refresh');
  }


}}
?>
