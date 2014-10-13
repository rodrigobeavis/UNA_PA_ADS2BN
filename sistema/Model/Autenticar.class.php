<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


if (file_exists('./sistema/DAO/DaoAutenticacao.php')) {
    require_once('./sistema/DAO/DaoAutenticacao.php');
} else {
    require_once('../DAO/DaoAutenticacao.php');
}

class Autenticar {
    
    private $DAO;

    public function Autenticar() {
        $this->DAO = new DaoAutenticacao();
    }

    public function logar($dadosuser) {
        
         $verificar = $this->DAO->localizarUser($dadosuser);
         foreach ($verificar as $value) {
             $identifica = $value[0];
         }
         var_dump($identifica);
         $this->direcionar($identifica);
    }
    private function direcionar($identifica) {
        
        if($identifica == 1 && $identifica < 2){
            
            header("refresh: 3; url=areauser.html");
             
        }  else {
            echo "Verifique seus dados e tente novamente ";
            header("refresh: 3; url=index.html");
        }
    
    }
//   
//if (mysql_num_rows($verifica)>0) {
//    
//    $recebe = mysql_fetch_assoc($verifica);
//
//    //var_dump($recebe);
//    
//    echo "Logado";
//
//    $_SESSION['email'] = $email;
//    $_SESSION['cpf'] = $recebe['cpf'];
//    
//    header('location: areausuario.html');
//
//    }else{
//
//            echo "<br>";
//            echo "erro";
//            echo "<br>";
//            echo "Verifique seus dados e tente novamente ";
//            header("refresh: 5; url=index.html");
//    }
//
}
