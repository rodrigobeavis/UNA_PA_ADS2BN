<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ImportarCSV
 *
 * @author RODRIGO
 */
class ImportarCSV {

}
//// faça a conexão com seu
////servidor local, caso você tenha startado pelo XAMPP a senha
////deixe em branco.
////// Os argumentos são “localhost” destino que
////você ta dando pra estabelecer conexão.
////// “root” nome de usuário que você precisa
////para ter acesso ao banco de dados mysql.
////// “pass” a senha.
////
////mysql_connect("localhost", "root", "pass");
////
////
////// Crie um banco de dados qualquer pode
////usar o www.mysql-front.com
////pra criar teu banco de dados.
////// Use a seleção do banco que você precisa
////na linha abaixo usei myexemplo
////mysql_select_db("myexemplo");
//////Usando $abraArq para abrir arquivos com
////r você apenas vai lê-lo com w ou w+ você pode
////alterar e caso queira ler e depois alterar só usar as duas
////rw ou rw+.
////// Selecione o destino que você vai usar como coloquei esse
////script no mesmo local do arquivo csv apenas escrevi o nome do
////arquivo com sua extensão. 
//    
//$abraArq = fopen("arquivo.csv", "r");
//
//
//////Apenas para ficar com mais controle melhor
////colocar um tratamento de erros caso o arquivo são seja
////aberto ai use as condições if e else. E imprima
////na tela com um echo()
//
//
////if (!$abraArq){
////echo (“<p>Arquivo não encontrado</p>”);
////}else{
//    
//    
//// Caso abra faça isso agora
//// usando a nova função do php 5 fgetcsv() o 2048
////é apenas para colocar o número máximo de
////caracteres por linha.
////// crie uma variável chamada $valores o que vai corresponder
////pelos valores das colunas para serem inseridas.
//
//while ($valores = fgetcsv ($abraArq, 2048, ";")) {
//    
//// Só criar agora o construtor que pegou os valores das colunas do arquivo csv. E começar a inserir dentro da base de dados.
//
//$result = mysql_query("insert into tabelaUm (id,nome,sobrenome,telefone,
//apelido) values (“”,”" . $valores[0] . "”,”" .
//$valores[1] . "”,”".$valores[2]."”,”".$valores[3]."”,”".$valores[4]."”,”".$valores[5]."”)");
//
////// Ai no caso do id se você criou
////como auto incremento use uma função do mySQL para
////isso que é inserir em outra tabela os últimos id
////inseridos. O que não entraria em ambigüidade.
//
//
//$ultimo_id = mysql_insert_id();
//
//
//$result = mysql_query("insert into tabelaDois (id,endereco,msn)
//values(“”,”" . $ultimo_id. "”,”" .$data[0]."”,”".$data[1]."”)");
//
//
//
//// Só fechar agora o arquivo
//fclose($abraArq);