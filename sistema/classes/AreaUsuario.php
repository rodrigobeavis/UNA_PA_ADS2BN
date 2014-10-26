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

//if (file_exists('./sistema/Model/Empresa.php')) {
//    require_once('./sistema/Model/Empresa.php');
//} else {
//    require_once('../Model/Empresa.php');
//}
class AreaUsuario {

    private $DAOe;
    private $DAOs;

    public function AreaUsuario() {
        $this->DAOe = new DAOEmpresa();
        $this->DAOs = new DAOServicos();
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

    public function UserServicos($tipo) {

        $result = $this->DAOs->consultarServicos($tipo);

        foreach ($result as $row) {
            $info_servico['id_servico'] = $row['id_servico'];
            $info_servico['tipo'] = $row['tipo'];
            $info_servico['solicitacao'] = $row['solicitacao'];
            $info_servico['dataHoraInicial'] =  date_format($row['dataHoraInicial'],"d/m/Y H:i:s");
            $info_servico['dataHoraFinal'] = ($row['dataHoraFinal'])? date_format($row['dataHoraFinal'],"d/m/Y H:i:s") : "Em aberto";
            $info_servico['idAtivos'] = $row['idAtivos'];
            $info_servico['prestador'] = $row['prestador'];
        }
        return $info_servico;
    }

    
    
    
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
