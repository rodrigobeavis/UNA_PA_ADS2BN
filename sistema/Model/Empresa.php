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
class Empresa {
   private $id_empresa;
   private $CNPJ;
   private $razao_social;
   private $insc_municipal;
   private $status_empresa;
   private $endereco;
   private $contatos;
   private $setor;
   private $cargo;
   public function getId_empresa() {
       return $this->id_empresa;
   }

   public function getCNPJ() {
       return $this->CNPJ;
   }

   public function getRazao_social() {
       return $this->razao_social;
   }

   public function getInsc_municipal() {
       return $this->insc_municipal;
   }

   public function getStatus_empresa() {
       return $this->status_empresa;
   }

   public function getEndereco() {
       return $this->endereco;
   }

   public function getContatos() {
       return $this->contatos;
   }

   public function getSetor() {
       return $this->setor;
   }

   public function getCargo() {
       return $this->cargo;
   }

   public function setId_empresa($id_empresa) {
       $this->id_empresa = $id_empresa;
   }

   public function setCNPJ($CNPJ) {
       $this->CNPJ = $CNPJ;
   }

   public function setRazao_social($razao_social) {
       $this->razao_social = $razao_social;
   }

   public function setInsc_municipal($insc_municipal) {
       $this->insc_municipal = $insc_municipal;
   }

   public function setStatus_empresa($status_empresa) {
       $this->status_empresa = $status_empresa;
   }

   public function setEndereco($endereco) {
       $this->endereco = $endereco;
   }

   public function setContatos($contatos) {
       $this->contatos = $contatos;
   }

   public function setSetor($setor) {
       $this->setor = $setor;
   }

   public function setCargo($cargo) {
       $this->cargo = $cargo;
   }




}
