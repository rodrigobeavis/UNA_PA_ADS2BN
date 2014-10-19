<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Cargos
 *
 * @author RODRIGO
 */
class Cargos {
    private $id_cargos;
    private $status_cargo;
    private $cargo;
    private $id_Setor;
    public function getId_cargos() {
        return $this->id_cargos;
    }

    public function getStatus_cargo() {
        return $this->status_cargo;
    }

    public function getCargo() {
        return $this->cargo;
    }

    public function getId_Setor() {
        return $this->id_Setor;
    }

    public function setId_cargos($id_cargos) {
        $this->id_cargos = $id_cargos;
    }

    public function setStatus_cargo($status_cargo) {
        $this->status_cargo = $status_cargo;
    }

    public function setCargo($cargo) {
        $this->cargo = $cargo;
    }

    public function setId_Setor($id_Setor) {
        $this->id_Setor = $id_Setor;
    }



}
