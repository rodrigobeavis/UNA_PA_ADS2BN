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
class User {

    private $id;
    private $nome;
    private $status_user;
    private $email;
    private $tipo_acesso;
    private $regra_acesso;
    private $area_acesso;
    private $telefone;
    private $celular;
    private $id_colaborador;
    public function getId() {
        return $this->id;
    }

    public function getNome() {
        return $this->nome;
    }

    public function getStatus_user() {
        return $this->status_user;
    }

    public function getEmail() {
        return $this->email;
    }

    public function getTipo_acesso() {
        return $this->tipo_acesso;
    }

    public function getRegra_acesso() {
        return $this->regra_acesso;
    }

    public function getArea_acesso() {
        return $this->area_acesso;
    }

    public function getTelefone() {
        return $this->telefone;
    }

    public function getCelular() {
        return $this->celular;
    }

    public function getId_colaborador() {
        return $this->id_colaborador;
    }

    public function setId($id) {
        $this->id = $id;
    }

    public function setNome($nome) {
        $this->nome = $nome;
    }

    public function setStatus_user($status_user) {
        $this->status_user = $status_user;
    }

    public function setEmail($email) {
        $this->email = $email;
    }

    public function setTipo_acesso($tipo_acesso) {
        $this->tipo_acesso = $tipo_acesso;
    }

    public function setRegra_acesso($regra_acesso) {
        $this->regra_acesso = $regra_acesso;
    }

    public function setArea_acesso($area_acesso) {
        $this->area_acesso = $area_acesso;
    }

    public function setTelefone($telefone) {
        $this->telefone = $telefone;
    }

    public function setCelular($celular) {
        $this->celular = $celular;
    }

    public function setId_colaborador($id_colaborador) {
        $this->id_colaborador = $id_colaborador;
    }



    
}
