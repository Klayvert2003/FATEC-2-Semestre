<?php

//conectando com o MySql (localhost)

$conexao = mysqli_connect('localhost','root','');
mysqli_set_charset($conexao, 'utf8');

if(!$conexao)
die("Erro de conexao com o banco de dados, o seguinte erro corrompeu ->".mysqli_error());


// conectando com o banco de dados
$banco = mysqli_select_db($conexao,'empresa2');
if(!$banco)
die("Erro de conexao com o banco de dados, o seguinte erro corrompeu ->".mysqli_error());


?>