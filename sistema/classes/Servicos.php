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
if (file_exists('./sistema/funcoes/Utilitaria.php')) {
    require_once('./sistema/funcoes/Utilitaria.php');
} else {
    require_once('../funcoes/Utilitaria.php');
}
class Servicos {
    private $DAO;    

    public function Servicos() {
        $this->DAO = new DAOServicos();       
    }

    public function listarServicos() {
        $lista_servicos = $this->DAO->consultarServicos();        
        
        return $lista_servicos;
    
    }
    public function inserirServicos($dados_OS) {
        if ($dados_OS) {

            $this->DAO->inserirServicos($dados_OS);
            
        }       
        
    }

    public function atualizarStatus($dados_status) {
       
        if ($dados_status) {
             $this->DAO->updateStatus($dados_status);
        }
        
       
    }
    public function atualizarTempo($dados_data) {
        if ($dados_data) {            
//         
            $funcao = new Utilitaria();            
            $dados_data['data_estimada'] = $funcao->inverterDateTime($dados_data['data_estimada']);
            $this->DAO->updateTempo($dados_data);
        }
        
        
    }
    public function functionSolucao($dados_solucao) {
        if ($dados_solucao) {
             $this->DAO->updateSolucao($dados_solucao);
        }
    }
}
