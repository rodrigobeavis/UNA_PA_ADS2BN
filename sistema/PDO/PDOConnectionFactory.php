<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

abstract class  PDOConnectionFactory {
    //put your code here
    // recebe a conexão
    public $con = null;
    // qual o banco de dados?
    public $dbType 	= "mysql";



    // parâmetros de conexão
    // quando não for necessário deixe em branco apenas com as aspas duplas ""
    /*
    public $host 	= "localhost";
    public $user 	= "root";
    public $senha 	= "";
    public $db		= "teste";
     *
     */

    // seta a persistência da conexão
    public $persistent = false;

    // new PDOConnectionFactory( true ) <--- conexão persistente
    // new PDOConnectionFactory()       <--- conexao não persistente
    public function PDOConnectionFactory( $persistent=false ){
            // verifico a persistência da conexao
            if( $persistent != false){ $this->persistent = true; }
    }

    public function getConnection(){
                    try{

                        if(file_exists("configs/config.ini")){
                            $cfg = parse_ini_file("configs/config.ini");
                        } elseif(file_exists("../configs/config.ini")) {
                            $cfg = parse_ini_file("../configs/config.ini");
							} else {
								$cfg = parse_ini_file("/var/www/htdocs/siao/configs/config.ini");
							}

                            // realiza a conexão
                            $this->con = new PDO($this->dbType.":host=".$cfg['host'].";dbname=".$cfg['db'], $cfg['user'], $cfg['pwd'],
                            array( PDO::ATTR_PERSISTENT => $this->persistent ) );
                            // realizado com sucesso, retorna conectado
                            return $this->con;
                    // caso ocorra um erro, retorna o erro;
                    }catch ( PDOException $ex ){  echo "Erro: ".$ex->getMessage(); }

    }

    // desconecta
    public function Close(){
        if( $this->con != null) {
            $this->con = null;
        }
    }
}
