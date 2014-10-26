<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


if (!isset($_SESSION)) {
    session_start();
} 
var_dump($_SESSION);

if ($_SESSION['ID'] && $_SESSION['ID2']) {
    
    if (file_exists('./asstes/Smarty/libs/Smarty.class.php')) {
        require_once('./asstes/Smarty/libs/Smarty.class.php');
    } else {
        require_once('asstes/Smarty/libs/Smarty.class.php');
    }
    if (file_exists('./sistema/classes/User.php')) {
        require_once('./sistema/classes/User.php');
    } else {
        require_once('sistema/classes/User.php');
    }

    $smarty = new Smarty;

    $area_usuario = new AreaUsuario();
    $id_user = $_SESSION['id_Colaboradores'];
   
    $info_empresa = $area_usuario->empresaUser($id_user); 
    
    $inc = 1;
    $info_incidentes = $area_usuario->userServicos($inc);
    var_dump($info_incidentes);
//    $req = 2;
//    $info_requisicoes = $area_usuario->UserServicos($req);
//    var_dump($info_requisicoes);


    $smarty->caching = true;
    $smarty->cache_lifetime = 120;


    $smarty->assign('info_empresa', $info_empresa);

//    $smarty->assign('info_incidentes', $info_incidentes);
//    $smarty->assign('info_requisicoes', $info_requisicoes);


    $smarty->display('area_user.tpl');
    
}  else {
    echo '<script>window.alert("Acesso não autorizado");</script>';
    echo '<script> history.back();</script>';
}