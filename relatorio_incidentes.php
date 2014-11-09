<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


if (!isset($_SESSION)) {
    session_start();
}
if ($_SESSION['ID'] && $_SESSION['ID2']) {
    if (!isset($_REQUEST)) {
        $dados = $_REQUEST;
    }

    var_dump($_REQUEST);


    if (file_exists('./asstes/Smarty/libs/Smarty.class.php')) {
        require_once('./asstes/Smarty/libs/Smarty.class.php');
    } else {
        require_once('asstes/Smarty/libs/Smarty.class.php');
    }
    if (file_exists('./sistema/classes/Empresa.php')) {
        require_once('./sistema/classes/Empresa.php');
    } else {
        require_once('sistema/classes/Empresa.php');
    }
    if (file_exists('./sistema/classes/AreaUsuario.php')) {
        require_once('./sistema/classes/AreaUsuario.php');
    } else {
        require_once('sistema/classes/AreaUsuario.php');
    }

    $smarty = new Smarty;
    $empresa = new Empresa();
    $area_usuario = new AreaUsuario();

    $id_user = $_SESSION['id_Colaboradores'];

    $info_empresa = $area_usuario->empresaUser($id_user);

    $page = "Relatório de incidentes";



    $smarty->assign('info_empresa', $info_empresa);
    $smarty->assign('page', $page);

    $smarty->display('relatorio_incidentes.tpl');
} else {
    echo '<script>window.alert("Acesso não autorizado");</script>';
    echo '<script> history.back();</script>';
}