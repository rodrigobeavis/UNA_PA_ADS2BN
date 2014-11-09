<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Requisicoes
 * @author RODRIGO
 */
if (file_exists('./sistema/DAO/DAORelatorios.php')) {
    require_once('./sistema/DAO/DAORelatorios.php');
} else {
    require_once('../DAO/DAORelatorios.php');
}

class Requisicoes {

    private $DAOr;
    private $totalReq;

    public function Requisicoes() {

        $this->DAOr = new DAORelatorios();
    }
    
    public function relatorioRequisicao() {
        $tipo = 1;
        $listrequisicao =  $this->DAOr->relatorioModelo($tipo);
        $k = 0; 
        $this->totalReq = 0;
        foreach ($listrequisicao as $row) {
            
            $info_relatorio_req[$k]['modelo'] = $row['modelo'];
            $info_relatorio_req[$k]['patrimonio'] = $row['patrimonio'];
            $info_relatorio_req[$k]['quantOS'] = $row['quantOS'];
            $this->totalReq += $info_relatorio_req[$k]['quantOS'];
            $k++; 
        }
       
        return $info_relatorio_req;
    }
    public function totalrequisicoes() {
        return $this->totalReq;
    }   

}
