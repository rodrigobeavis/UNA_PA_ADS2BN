<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

require_once './sistema/Model/autenticar.class.php';
session_start();

if (filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL)) {
    $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
    $keyU = filter_input(INPUT_POST, 'senha');
    if ($email && $keyU) {
        $dadosuser = array('email' => $email, 'keyU' => $keyU);

        $verificar = new Autenticar();
        $verificar->logar($dadosuser);
    }
} else {
    echo "E-Mail is invalid";
    header("refresh: 3; url=index.html");
}






