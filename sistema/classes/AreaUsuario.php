<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 * Description of Empresa
 *
 * @author RODRIGO
 */
if (file_exists('./sistema/DAO/DAOEmpresa.php')) {
    require_once('./sistema/DAO/DAOEmpresa.php');
} else {
    require_once('../DAO/DAOEmpresa.php');
}
if (file_exists('./sistema/DAO/DAOServicos.php')) {
    require_once('./sistema/DAO/DAOServicos.php');
} else {
    require_once('../DAO/DAOServicos.php');
}
if (file_exists('./sistema/Classes/User.php')) {
    require_once('./sistema/Classes/User.php');
} else {
    require_once('./User.php');
}
if (file_exists('./sistema/Classes/Ativos.php')) {
    require_once('./sistema/Classes/Ativos.php');
} else {
    require_once('./Ativos.php');
}
class AreaUsuario {

    private $DAOe;    
    private $DAOs;
    
    public function AreaUsuario() {
        $this->DAOe = new DAOEmpresa();
        $this->DAOs = new DAOServicos();
        $this->USER = new User();
        $this->ATIVOS = new Ativos();
        }

    public function empresaUser($id_user) {

        $empresa = $this->DAOe->dadosEmpresa($id_user);

        foreach ($empresa as $row) {
            $info_empresa['idEmpresa'] = $row['idEmpresa'];
            $info_empresa['CNPJ'] = $row['CNPJ'];
            $info_empresa['RazaoSocial'] = $row['RazaoSocial'];
            $info_empresa['nome_setor'] = $row['nome_setor'];
            $info_empresa['Cargo'] = $row['Cargo'];
            $info_empresa['idColaboradores'] = $row['idColaboradores'];
            $info_empresa['Nome'] = $row['Nome'];
        }
        return $info_empresa;
    }    
    public function Servicos($tipo) {
   
    $Lista = $this->DAOs->consultarServicos();
    $i = 0;
    foreach ($Lista as $row) {
        
        if ($row['tipo'] == $tipo) {       
        $info_serv[$i]['id_servico'] = $row['id_servico'];
        $info_serv[$i]['tipo'] = $row['tipo'];
        $info_serv[$i]['titulo'] = utf8_encode ($row['titulo'] );
        $info_serv[$i]['solicitacao'] = $row['solicitacao'];
        $info_serv[$i]['dataHoraInicial'] = (isset($row['dataHoraInicial']))? date('d/m/Y - H:m', strtotime($row['dataHoraInicial'])): "";
        $info_serv[$i]['data_estimada'] = (isset($row['data_estimada']))? date('d/m/Y - H:m', strtotime($row['data_estimada'])):"Aguardando";
        $info_serv[$i]['dataHoraFinal'] = (isset($row['dataHoraFinal']))? date('d/m/Y - H:m', strtotime($row['dataHoraFinal'])):"Aguardando";
        $info_serv[$i]['idAtivos'] = $row['idAtivos'];
        $info_serv[$i]['infoAtivo'] = $this->ATIVOS->identificarAtivos($row['idAtivos']);
        $info_serv[$i]['solicitante'] = $this->USER->exibirNome($row['solicitante']);
        $info_serv[$i]['prestador'] = utf8_encode($this->USER->exibirNome($row['prestador']));
        $info_serv[$i]['status'] = $this->localizarStatus($row['status']); 
        }
        $i++;    
    }  
    sort($info_serv);
    return $info_serv;
    }
        
    public function definirStatus() { 
        $option_status =  array("Aguardando","Analisando","Verificando","Testando","Concluído");
      return $option_status;
    }
    
    private function localizarStatus($id_status) {
       $lista_status = $this->definirStatus();       
          $status_atual = $lista_status[$id_status];   
          
          return $status_atual;
       
        
       
       
    }
    
    
    
    
    
    
    
//            $info_servico[$i]['dataHoraInicial'] = date_format($row['dataHoraInicial'], "d/m/Y H:i:s");
//            $info_servico[$i]['dataHoraFinal'] = (!isset($row['dataHoraFinal'])) ? "Em aberto" : date_format($row['dataHoraFinal'], "d/m/Y H:i:s");


//    public function empresaUser($cod_empresa) {
//        
//         $empresa = $this->DAO->dadosEmpresa($cod_empresa);
//         foreach ($empresa as $row) {
//             
//             $objEmpresa = new Empresa();
//             $objEmpresa->setId_empresa($row['idEmpresa']);
//             $objEmpresa->getCNPJ($row['CNPJ']);
//             $objEmpresa->getRazao_social($row['RazaoSocial']);
//             $objEmpresa->getSetor($row['nome_setor']);
//             $objEmpresa->getCargo($row['Cargo']);
//             
//             $objEmpresa->getStatus_empresa();
//             
//             $identifica = $value[0];
//         }
//         $this->direcionar($identifica);
//         return $identifica;       
//    }
}
