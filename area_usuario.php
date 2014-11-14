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
    if (file_exists('./sistema/classes/Ativos.php')) {
        require_once('./sistema/classes/Ativos.php');
    } else {
        require_once('sistema/classes/Ativos.php');
    }
    if (file_exists('./sistema/classes/Servicos.php')) {
        require_once('./sistema/classes/Servicos.php');
    } else {
        require_once('sistema/classes/Servicos.php');
    }
     if (file_exists('./sistema/classes/User.php')) {
        require_once('./sistema/classes/User.php');
    } else {
        require_once('sistema/classes/User.php');
    }
    
    if(isset($_REQUEST)){
        $dados = $_REQUEST;
    }
     
    $smarty = new Smarty;    
    $area_usuario = new AreaUsuario();
    $ativos = new Ativos();
    $servico = new Servicos();
    $USER = new User();
    $id_user = $_SESSION['id_Colaboradores'];
    
    
    if (isset($dados['titulo'])) {
        
        $dados_OS = array('tipo'=>$dados['tipo'],'ativos'=>$dados['ativos'],'titulo'=>$dados['titulo'],'descricao'=>$dados['descricao'],'solicitante'=>$id_user,'prestador'=>$dados['prestador']);
       
        $OS = $servico->inserirServicos($dados_OS);                
        
        header("Refresh:0"); 
        unset($_REQUEST,$dados,$dados_OS);
        header("Refresh:0"); 
    }
        
    $info_tec = $USER->listarTecnicos();
    $info_empresa = $area_usuario->empresaUser($id_user);
    $info_incidentes = $area_usuario->Servicos(1,$id_user);    
    $info_requisicoes = $area_usuario->Servicos(2,$id_user);
    
    $info_ativos = $ativos->listarAtivos();  
    $smarty->force_compile = true;
    $smarty->caching = true;
    $smarty->cache_lifetime = 120;

    $smarty->assign('info_incidentes', $info_incidentes);
    $smarty->assign('info_requisicoes', $info_requisicoes);
    $smarty->assign('info_empresa', $info_empresa);
    $smarty->assign('info_ativos', $info_ativos);
    $smarty->assign('info_tec', $info_tec);

    $smarty->display('area_user.tpl');
    
}  else {
    echo '<script>window.alert("Acesso não autorizado");</script>';
    echo '<script> history.back();</script>';
}