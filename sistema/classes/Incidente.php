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

class Incidente {

    private $DAOr;
    private $total_inc;
    private $grafico;

    public function Incidente() {

        $this->DAOi = new DAORelatorios();
    }
    
    public function relatorioIncidentes() {
        $tipo = 1;
        $list_incidentes = $this->DAOi->relatorioModelo($tipo);
        $k = 0; 
        $this->total_inc = 0;
        foreach ($list_incidentes as $row) {
            
            $info_relatorio_inc[$k]['modelo'] = $row['modelo'];
            $info_relatorio_inc[$k]['patrimonio'] = $row['patrimonio'];
            $info_relatorio_inc[$k]['quantOS'] = $row['quantOS'];
            $this->total_inc += $info_relatorio_inc[$k]['quantOS'];
           
            $grafico[] = "{value: ".$info_relatorio_inc[$k]['quantOS'].", label: "."'".$info_relatorio_inc[$k]['modelo']." - ".$info_relatorio_inc[$k]['patrimonio']."'"."}";
           
            $k++; 
        }        
        $this->grafico = $grafico;        
        return $info_relatorio_inc;
    }
    public function totalIncidentes() {
       
        return $this->total_inc;
    }   
      public function graficoInc() {
       
        return $this->grafico;
    }   

}
