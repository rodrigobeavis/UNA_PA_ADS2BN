<?php
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
    public function consultarServicos() {
        try {
            $sql = "SELECT 
                        t1.id_servico,
                        t1.tipo,
                        t1.solicitacao,
                        t1.dataHoraInicial,
                        t1.dataHoraFinal,
                        t1.idAtivos,
                        t1.solicitante,
                        t1.prestador,
                        t1.status
                    FROM
                        tbl_servicos AS t1
                    ORDER BY t1.dataHoraInicial";            
            $stmt = $this->conex->prepare($sql);
            $stmt->execute();
            return $stmt;
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
        parent::Close();
    }
    
    
}