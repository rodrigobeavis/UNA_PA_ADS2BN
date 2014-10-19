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
   
   function getId_empresa() {
       return $this->id_empresa;
   }

   function getCNPJ() {
       return $this->CNPJ;
   }

   function getRazao_social() {
       return $this->razao_social;
   }

   function getInsc_municipal() {
       return $this->insc_municipal;
   }

   function getStatus_empresa() {
       return $this->status_empresa;
   }

   function setId_empresa($id_empresa) {
       $this->id_empresa = $id_empresa;
   }

   function setCNPJ($CNPJ) {
       $this->CNPJ = $CNPJ;
   }

   function setRazao_social($razao_social) {
       $this->razao_social = $razao_social;
   }

   function setInsc_municipal($insc_municipal) {
       $this->insc_municipal = $insc_municipal;
   }

   function setStatus_empresa($status_empresa) {
       $this->status_empresa = $status_empresa;
   }


}
