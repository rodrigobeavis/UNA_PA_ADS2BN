﻿<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class  PDOConnectionFactory extends PDO {

    public $con = null;
    public $dbType = "mysql";
    public $persistent = false;

    public function PDOConnectionFactory( $persistent = false ){
            if( $persistent != false){ $this->persistent = true; }
    }

    public function getConnection(){
                    try{                       
                        if(file_exists("./sistema/configs/config.ini")){
                            $cfg = parse_ini_file("./sistema/configs/config.ini");
                        } elseif(file_exists("sistema/configs/config.ini")) {
                            $cfg = parse_ini_file("sistema/configs/config.ini");
				} else {
				$cfg = parse_ini_file("/var/www/htdocs/PA/sistema/configs/config.ini");
				}
                            $this->con = new PDO($this->dbType.":host=".$cfg['host'].";dbname=".$cfg['dbname'], $cfg['user'], $cfg['password'],
                            array( PDO::ATTR_PERSISTENT => $this->persistent ) );
                            return $this->con;
                    }catch ( PDOException $ErroMysql ){  echo "Erro: ".$ErroMysql->getMessage(); }

    }

    public function Close(){
        if( $this->con != null) {
            $this->con = null;
        }
    }
}
