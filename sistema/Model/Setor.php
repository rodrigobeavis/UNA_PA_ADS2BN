<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Setor
 *
 * @author RODRIGO
 */
class Setor {
    private $id_setor;
    private $nome;
    private $statusSetor;
    private $comentario;
    private $idEmpresa;
    private $cargos;


    public function getId_setor() {
        return $this->id_setor;
    }

    public function getNome() {
        return $this->nome;
    }

    public function getStatusSetor() {
        return $this->statusSetor;
    }

    public function getComentario() {
        return $this->comentario;
    }

    public function getIdEmpresa() {
        return $this->idEmpresa;
    }

    public function setId_setor($id_setor) {
        $this->id_setor = $id_setor;
    }

    public function setNome($nome) {
        $this->nome = $nome;
    }

    public function setStatusSetor($statusSetor) {
        $this->statusSetor = $statusSetor;
    }

    public function setComentario($comentario) {
        $this->comentario = $comentario;
    }

    public function setIdEmpresa($idEmpresa) {
        $this->idEmpresa = $idEmpresa;
    }


    
}
