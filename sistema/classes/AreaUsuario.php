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
//if (file_exists('./sistema/Model/Empresa.php')) {
//    require_once('./sistema/Model/Empresa.php');
//} else {
//    require_once('../Model/Empresa.php');
//}
class AreaUsuario {
    private $DAO;

    public function AreaUsuario() {
        $this->DAO = new DAOEmpresa();
    }
    
     public function empresaUser($id_user) {
        
         $empresa = $this->DAO->dadosEmpresa($id_user);
         foreach ($empresa as $row) {
       
             $infoEmpresa['idEmpresa'] = $row['idEmpresa'];
             $infoEmpresa['CNPJ'] = $row['CNPJ'];
             $infoEmpresa['RazaoSocial'] = $row['RazaoSocial'];
             $infoEmpresa['nome_setor'] = $row['nome_setor'];
             $infoEmpresa['Cargo'] = $row['Cargo'];
             $infoEmpresa['idColaboradores'] = $row['idColaboradores'];
             $infoEmpresa['Nome'] = $row['Nome'];
         }
         return $infoEmpresa;       
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
