<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of servicos
 *
 * @author RODRIGO
 */
if (file_exists('./sistema/DAO/DAOServicos.php')) {
    require_once('./sistema/DAO/DAOServicos.php');
} else {
    require_once('../DAO/DAOServicos.php');
}
class Servicos {
    private $DAO;

    public function Servicos() {
        $this->DAO = new DAOServicos();
    }

    public function listarServicos() {
        $lista_servicos = $this->DAO->consultarServicos();        
        
        var_dump($lista_servicos);
        return $lista_servicos;
    
    }
    public function inserirServicos($dados_OS) {
        if ($dados_OS) {
         
            
            
            
            
        }       
        
    }

    public function updateServicos($param) {
        
        
        
    }
}
