<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DAOServicos
 *
 * @author RODRIGO
 */
if (file_exists('./sistema/PDO/PDOConnectionFactory.php')) {
    require_once('./sistema/PDO/PDOConnectionFactory.php');
} else {
    require_once('../PDO/PDOConnectionFactory.php');
}
class DAOServicos extends PDOConnectionFactory{
    private $conex = null;

    public function DAOServicos() {
        $this->conex = PDOConnectionFactory::getConnection();
    }
    public function consultarServicos($tipo) {
        try {
            $sql = "SELECT 
                    t1.id_servico,
                    t1.tipo,
                    t1.solicitacao,
                    t1.dataHoraInicial,
                    t1.dataHoraFinal,
                    t1.idAtivos,
                    t1.prestador
                FROM
                    tbl_serviços AS t1
                WHERE
                    t1.tipo = ? AND 
                    t1.dataHoraFinal = NULL";   
            $stmt = $this->conex->prepare($sql);
            $stmt->bindValue(1, $tipo);
            $stmt->execute();
            return $stmt;
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
        parent::Close();
    }
    
    
    
}
