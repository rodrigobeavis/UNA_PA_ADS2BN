<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if (!isset($_SESSION)) {
    session_start();
    echo 'teste1';
} else {
    echo 'teste0';
    // echo '<script>window.alert("Acesso não autorizado");</script>';
    //echo '<script> history.back();</script>';
}


if ($_SESSION['ID']) {
    if (file_exists('./asstes/Smarty/libs/Smarty.class.php')) {
        require_once('./asstes/Smarty/libs/Smarty.class.php');
    } else {
        require_once('asstes/Smarty/libs/Smarty.class.php');
    }
    if (file_exists('./sistema/classes/AreaUsuario.php')) {
        require_once('./sistema/classes/AreaUsuario.php');
    } else {
        require_once('sistema/classes/AreaUsuario.php');
    }



    $smarty = new Smarty;


    $area_usuario = new AreaUsuario();
    $id_user = $_SESSION['id_Colaboradores'];

    $info_empresa = $area_usuario->empresaUser($id_user);

    $info_incidentes = $area_usuario->UserServicos(1);

    $info_requisicoes = $area_usuario->UserServicos(2);



    $smarty->caching = true;
    $smarty->cache_lifetime = 120;


    $smarty->assign('info_empresa', $info_empresa);

    $smarty->assign('info_incidentes', $info_incidentes);
    $smarty->assign('info_requisicoes', $info_requisicoes);


    $smarty->display('area_user.tpl');
}