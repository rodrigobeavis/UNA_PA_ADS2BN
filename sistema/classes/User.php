<?php

/**
 * Description of User
 *
 * @author RODRIGO
 */
if (file_exists('./sistema/DAO/DAOUser.php')) {
    require_once('./sistema/DAO/DAOUser.php');
} else {
    require_once('../DAO/DAOUser.php');
}

class User {

    private $DAOu;

    public function User() {

        $this->DAOu = new DAOUser();
    }

    public function exibirNome($id_colaborador) {
        $nome = $this->DAOu->nomeUser($id_colaborador);
        foreach ($nome as $row) {
            $user = $row;
        }
        $nome = $user['nome'];
        return $nome;
    }

    public function listarTecnicos() {
        $tec = $this->DAOu->prestadorOS();
        $j = 0;
        foreach ($tec as $row) {
            $nomeTec[$j]['idColaboradores'] = $row['idColaboradores'];
            $nomeTec[$j]['nome'] = $row['nome'];
            $nomeTec[$j]['Cargo'] = $row['Cargo'];
            $nomeTec[$j]['nomeSetor'] = $row['nomeSetor'];
            $j++;
        }
        return $nomeTec;
    }

    public function listarAtivos() {
        
    }

    public function inserirAtivos($param) {
        
    }

    public function updateAtivos($param) {
        
    }

}
