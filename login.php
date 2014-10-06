<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

session_start();

if($_POST['senha'] && $_POST['senha']){
    $email = $_POST['email'];
    $senha = $_POST['senha'];    
}

mysql_connect('localhost', 'root', 'una123') or
    die("Não foi possível conectar: " . mysql_error());
    mysql_select_db("bdleitura_social");

$verifica=mysql_query("select * from bdleitura_social.tblusuario where email = '$email' AND senha = '$senha'");


if (mysql_num_rows($verifica)>0) {
    
    $recebe = mysql_fetch_assoc($verifica);

    //var_dump($recebe);
    
    echo "Logado";

    $_SESSION['email'] = $email;
    $_SESSION['cpf'] = $recebe['cpf'];
    
    header('location: areausuario.html');

    }else{

            echo "<br>";
            echo "erro";
            echo "<br>";
            echo "Verifique seus dados e tente novamente ";
            header("refresh: 5; url=index.html");
    }
