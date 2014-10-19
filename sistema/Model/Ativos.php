<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Ativos
 *
 * @author RODRIGO
 */
class Ativos {
    private $idAtivos;
    private $patrimonio;
    private $modelo;
    private $tipo;
    private $idEmpresa;
    public function getIdAtivos() {
        return $this->idAtivos;
    }

    public function getPatrimonio() {
        return $this->patrimonio;
    }

    public function getModelo() {
        return $this->modelo;
    }

    public function getTipo() {
        return $this->tipo;
    }

    public function getIdEmpresa() {
        return $this->idEmpresa;
    }

    public function setIdAtivos($idAtivos) {
        $this->idAtivos = $idAtivos;
    }

    public function setPatrimonio($patrimonio) {
        $this->patrimonio = $patrimonio;
    }

    public function setModelo($modelo) {
        $this->modelo = $modelo;
    }

    public function setTipo($tipo) {
        $this->tipo = $tipo;
    }

    public function setIdEmpresa($idEmpresa) {
        $this->idEmpresa = $idEmpresa;
    }


}
