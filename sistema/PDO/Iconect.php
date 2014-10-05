<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author RODRIGO
 */
require_once './PDOConnectionFactory.php';

interface PDO {
    public function getConnection();
    public function Close();
}
