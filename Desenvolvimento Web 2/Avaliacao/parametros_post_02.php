<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passagem de Parâmetros via POST</title>
</head>
<body>

<?php

$nome = $_POST['nome'];
$sobrenome = $_POST['sobrenome'];
$cpf = $_POST['cpf'];

function validar_post($dado_enviado){
    if(isset($dado_enviado) and $dado_enviado <> ""){
        return TRUE;
    }
    return FALSE;
}

if(validar_post($_POST['nome']) and validar_post($_POST['sobrenome']) and validar_post($_POST['cpf'])){
    echo '<br><br>';
    echo 'Nome: '.$_POST['nome'];
    echo '<br><br>';
    echo 'Sobrenome: '.$_POST['sobrenome'];
    echo '<br><br>';
    echo 'CPF: '.$_POST['cpf'];
    echo '<br><br>';
    /*
    Inserir os dados no banco de dados MySQL
    */
}

require_once('dados_banco.php');

// Criar Conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Checar Conexão
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully<br>";

$sql = "INSERT INTO pessoa (nome, sobrenome, cpf) VALUES ('$nome', '$sobrenome', $cpf)";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>

</body>
</html>