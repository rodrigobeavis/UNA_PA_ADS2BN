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
if (file_exists('./sistema/DAO/DAOAtivos.php')) {
    require_once('./sistema/DAO/DAOAtivos.php');
} else {
    require_once('../DAO/DAOAtivos.php');
}
class Empresa {
 
    private $DAOa;

    public function Ativos() {

        $this->DAOa = new DAOAtivos();
    }

    public function listarAtivos() {
        
    }

    public function inserirAtivos($param) {
        
    }

    public function updateAtivos($param) {
        
    }

}
