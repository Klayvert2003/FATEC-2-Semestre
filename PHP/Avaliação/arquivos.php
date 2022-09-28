<?php

$filename = "CadastroPessoas.txt";


    $handle = fopen($filename, "a");
    fwrite($handle, $_POST['nome'].PHP_EOL);
    fwrite($handle, $_POST['sobrenome'].PHP_EOL);
    fwrite($handle, $_POST['CPF'].PHP_EOL);
    fflush($handle);
    fclose($handle);
    echo("</br>");

header("location: cadastro.php");
exit;
?>