<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

require_once './sistema/funcoes/Autenticar.class.php';
require_once './sistema/funcoes/DadosUser.php';

session_start();

if (filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL)) {
    $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
    $keyU = filter_input(INPUT_POST, 'senha');
    if ($email && $keyU) {
        $dadosuser = array('email' => $email, 'keyU' => $keyU);

        $verificar = new Autenticar();
        $cod_user = $verificar->logar($dadosuser);
        
       
        $info_user = new DadosUser();
        $dados_user = $info_user->dadosUserAtual($cod_user);        
        $_SESSION = $dados_user;
     }
} else {
    echo "O email Inválido";
    header("refresh: 3; url=index.html");
}







