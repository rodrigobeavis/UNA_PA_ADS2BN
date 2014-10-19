<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Contatos
 *
 * @author RODRIGO
 */
class Contatos {
    private $idContatos;
    private $nome;
    private $email;
    private $emailAlternativo;
    private $telComercial;
    private $telCelular;
    private $idEmpresa;
    
    public function getIdContatos() {
        return $this->idContatos;
    }

    public function getNome() {
        return $this->nome;
    }

    public function getEmail() {
        return $this->email;
    }

    public function getEmailAlternativo() {
        return $this->emailAlternativo;
    }

    public function getTelComercial() {
        return $this->telComercial;
    }

    public function getTelCelular() {
        return $this->telCelular;
    }

    public function getIdEmpresa() {
        return $this->idEmpresa;
    }

    public function setIdContatos($idContatos) {
        $this->idContatos = $idContatos;
    }

    public function setNome($nome) {
        $this->nome = $nome;
    }

    public function setEmail($email) {
        $this->email = $email;
    }

    public function setEmailAlternativo($emailAlternativo) {
        $this->emailAlternativo = $emailAlternativo;
    }

    public function setTelComercial($telComercial) {
        $this->telComercial = $telComercial;
    }

    public function setTelCelular($telCelular) {
        $this->telCelular = $telCelular;
    }

    public function setIdEmpresa($idEmpresa) {
        $this->idEmpresa = $idEmpresa;
    }


}
