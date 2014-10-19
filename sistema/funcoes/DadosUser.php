<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DadosUser
 *
 * @author RODRIGO
 */
if (file_exists('./sistema/DAO/DaoUser.php')) {
    require_once('./sistema/DAO/DaoUser.php');
} else {
    require_once('../DAO/DaoUser.php');
}

class DadosUser {
    
    private $DAO;

    public function DadosUser() {
        $this->DAO = new DaoUser();
    }
    
    public function dadosUserAtual($cod_autenticacao) {
        if ($cod_autenticacao) {
            $dadosUser = $this->DAO->dadosUser($cod_autenticacao);
            
        foreach ($dadosUser as $coluna) {
            $User['idAutenticacao'] = $coluna['idAutenticacao'];
            $User['nome'] = $coluna['nome'];
            $User['login'] = $coluna['login'];
            $User['senha'] = $coluna['senha'];
            $User['tipoDeAcesso'] = $coluna['tipoDeAcesso'];
            $User['regraAcesso'] = $coluna['regraAcesso'];
            $User['areaAcesso'] = $coluna['areaAcesso'];
            $User['id_Colaboradores'] = $coluna['id_Colaboradores'];
            }   
            return $User; 
        }
    }

}
