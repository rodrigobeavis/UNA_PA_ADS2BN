<?php
/**
 * Description of DaoUser
 *
 * @author RODRIGO
 */
if (file_exists('./sistema/PDO/PDOConnectionFactory.php')) {
    require_once('./sistema/PDO/PDOConnectionFactory.php');
} else {
    require_once('../PDO/PDOConnectionFactory.php');
}

class DaoUser extends PDOConnectionFactory {

    private $conex = null;

    public function DaoUser() {
        $this->conex = PDOConnectionFactory::getConnection();
    }

    public function dadosUser($cod_autenticacao) {
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
                        t1.StatusAcesso = 0 and
                        t1.idAutenticacao = ?";
            $stmt = $this->conex->prepare($sql);
            $stmt->bindValue(1, $cod_autenticacao);
            $stmt->execute();
            return $stmt;
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
        parent::Close();
    }
   
}
