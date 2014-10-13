<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

require_once './sistema/Model/autenticar.class.php';
session_start();

if($_POST['email'] && $_POST['senha']){
    $dadosuser = array('email' => $_POST['email'],'keyU' => $_POST['senha']);

$verificar = new Autenticar();

$verificar->logar($dadosuser);
    
}




