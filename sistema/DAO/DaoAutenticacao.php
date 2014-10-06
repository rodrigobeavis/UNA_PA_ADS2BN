<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DaoAutenticacao
 *
 * @author RODRIGO
 */
class DaoAutenticacao {
    
//extends PDOConnectionFactory {
//
//    public $conex = null;
//
//    public function DAOPosVendas() {
//        $this->conex = PDOConnectionFactory::getConnection();
//    }
    

    public function localizarUser($codUser) {
        try {
            $sql = "SELECT 
                    idAutenticacao,
                    nome,
                    login,
                    senha,
                    tipoDeAcesso,
                    regraAcesso,
                    areaAcesso,
                    id_Colaboradores
                FROM
                    tbl_autenticacao AS t1
                WHERE
                    StatusAcesso != ''
                        AND StatusAcesso != NULL
                        AND email = ?";
        $stmt = $this->conex->prepare($sql);
        $stmt->bindValue(1, $codUser);

        $stmt->execute();
        return $stmt;
            
            
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

}
