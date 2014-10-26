<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//function trancar_pagina($nome){
//if (basename("$nome", $_SERVER['SCRIPT_NAME'])){
//die ("<script>alert('Sem permição de acesso !')</script>");
// header("Refresh: 2; url=./index.html");
// header("Refresh: 2; url=../../index.html");
// 
//}
//}

function trancar_pagina($nome){
if(basename($_SERVER["PHP_SELF"]) == basename($nome) ){
exit("<script>alert('Nao permitido')</script>\n<script>window.location=('http://www.google.com.br')</script>");
 }
}

