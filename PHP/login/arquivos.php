<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adivinhando a senha</title>
</head>
<body>
<?php

$filename = "cadastroFunc.txt";
if(!file_exists($filename)){
    $handle = fopen($filename, "w");
} else {
    $handle = fopen($filename, "a");
    fwrite($handle, $_POST['nome']);
    fwrite($handle, $_POST['CPF']);
    fflush($handle);
    fclose($handle);
}

?>  
</body>
</html>