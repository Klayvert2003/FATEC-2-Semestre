<?php
session_start();

if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}

?>

<!DOCTYPE html>
<html lang="pt_BR">
<head>
    <meta charset="UTF-8">
    <title>Cadastro</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; }
        .wrapper{ width: 350px; padding: 20px; }
    </style>
</head>
<body>
    <div class="wrapper">
        <h2>Cadastro de Pessoas</h2>
        <p>Favor inserir seu Nome, Sobrenome e CPF.</p>
        <form action="arquivos.php" method="post">
            <div class="form-group">
                <label>Nome</label>
                <input type="text" name="nome" class="form-control" >
                <span class="help-block"></span>
            </div>    
            <div class="form-group">
                <label>Sobrenome</label>
                <input type="text" name="sobrenome" class="form-control">
                <span class="help-block"></span>
            </div>
            <div class="form-group">
                <label>CPF</label>
                <input type="text" name="CPF" class="form-control">
                <span class="help-block"></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Cadastrar">
                <a href="logout.php" class="btn btn-primary">Sair da conta</a>
                <a href="ler.php" class="btn btn-primary">Mostrar Registros</a>
            </div>
        </form>
    </div>   


    
</body>
</html>