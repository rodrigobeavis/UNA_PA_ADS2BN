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

class Empresa {

    private $DAOe;

    public function Ativos() {

        $this->DAOe = new DAOEmpresa();
    }

    public function inserirEmpresa() {
        
        
        
        
    }

    public function inserirAtivos($param) {
        
    }

    public function updateAtivos($param) {
        
    }

}
