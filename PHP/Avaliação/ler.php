<?php

echo("Os registro são: </br>");

$handle = fopen("CadastroPessoas.txt", "r");
while (!feof($handle)) {
        $line = fgets($handle);
        echo $line ."<br>";
    }
fclose($handle);
?>