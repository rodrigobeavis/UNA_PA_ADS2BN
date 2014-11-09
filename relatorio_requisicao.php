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
     if (file_exists('./sistema/classes/Requisicoes.php')) {
        require_once('./sistema/classes/Requisicoes.php');
    } else {
        require_once('sistema/classes/Requisicoes.php');
    }

    $smarty = new Smarty;
    $empresa = new Empresa();
    $area_usuario = new AreaUsuario();
    $requisicoes = new Requisicoes();

    $id_user = $_SESSION['id_Colaboradores'];
    
    $info_requisicoes = $requisicoes->relatorioRequisicao();
    $total_req = $requisicoes->totalrequisicoes();
    $info_empresa = $area_usuario->empresaUser($id_user);
    

    $page = "Relatório Requisições";
    
    
    $smarty->assign('total_req', $total_req);
    $smarty->assign('info_requisicoes', $info_requisicoes);
    $smarty->assign('info_empresa', $info_empresa);
    $smarty->assign('page', $page);

    $smarty->display('relatorio_requisicao.tpl');
} else {
    echo '<script>window.alert("Acesso não autorizado");</script>';
    echo '<script> history.back();</script>';
}