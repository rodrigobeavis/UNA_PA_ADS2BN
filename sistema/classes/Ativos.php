<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of User
 *
 * @author RODRIGO
 */
if (file_exists('./sistema/DAO/DAOAtivos.php')) {
    require_once('./sistema/DAO/DAOAtivos.php');
} else {
    require_once('../DAO/DAOAtivos.php');
}

class Ativos {

    private $DAO;

    public function Ativos() {

        $this->DAO = new DAOAtivos();
    }

    public function listarAtivos() {
       
        $lista = $this->DAO->consultarAtivos();
        
        $i=0;
         foreach ($lista as $row) {
                $infoAtivo[$i]['idAtivos'] = $row['idAtivos'];
                $infoAtivo[$i]['patrimonio'] = $row['patrimonio'];
                $infoAtivo[$i]['modelo'] = $row['modelo'];
                $infoAtivo[$i]['tipo'] = $row['tipo'];
                $infoAtivo[$i]['idEmpresa'] = $row['idEmpresa'];
                $infoAtivo[$i]['status_ativos'] = $row['status_ativos'];            
             $i++;   
         }
        
         return $infoAtivo;
    }

    public function inserirAtivos($param) {
        
        
    }

    public function updateAtivos($param) {
        
    }

    public function identificarAtivos($id) {
        if ($id) {

            $ativo = $this->DAO->identificarAtivo($id);

            foreach ($ativo as $row) {

                $infoAtivo['patrimonio'] = $row['patrimonio'];
                $infoAtivo['modelo'] = $row['modelo'];
                $infoAtivo['tipo'] = $row['tipo'];
                $infoAtivo['idEmpresa'] = $row['idEmpresa'];
                $infoAtivo['status_ativos'] = $row['status_ativos'];
            }
            return $infoAtivo;
        }
    }

}
