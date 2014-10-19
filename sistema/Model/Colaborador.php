<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Colaborador
 *
 * @author RODRIGO
 */
class Colaborador {
    private $idColaboradores;  
    private $Nome; 
    private $CPF; 
    private $idCargos;
    public function getIdColaboradores() {
        return $this->idColaboradores;
    }

    public function getNome() {
        return $this->Nome;
    }

    public function getCPF() {
        return $this->CPF;
    }

    public function getIdCargos() {
        return $this->idCargos;
    }

    public function setIdColaboradores($idColaboradores) {
        $this->idColaboradores = $idColaboradores;
    }

    public function setNome($Nome) {
        $this->Nome = $Nome;
    }

    public function setCPF($CPF) {
        $this->CPF = $CPF;
    }

    public function setIdCargos($idCargos) {
        $this->idCargos = $idCargos;
    }




}
