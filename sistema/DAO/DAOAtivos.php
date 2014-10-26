<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DAOAtivos
 *
 * @author RODRIGO
 */

if (file_exists('./sistema/PDO/PDOConnectionFactory.php')) {
    require_once('./sistema/PDO/PDOConnectionFactory.php');
} else {
    require_once('../PDO/PDOConnectionFactory.php');
}
class DAOAtivos extends PDOConnectionFactory {
    
    
}
