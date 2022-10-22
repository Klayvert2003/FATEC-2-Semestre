<?php
/*
Importar a função criada em 014_a.php para ser utilizada aqui.
*/

include('media.php');
$nota_1 = 9;
$nota_2 = 4;

echo("As sua nota é: $nota_1" . "<br/>");
echo("As sua nota é: $nota_2" . "<br/>");

echo(calculo_media($nota_1, $nota_2));
echo("<br/>");
// Calcular chamando a função

$nota_1 = 1;
$nota_2 = 5;

echo("As sua nota é: $nota_1 <br/>");
echo("As sua nota é: $nota_2 <br/>");

echo(calculo_media($nota_1, $nota_2));
echo("<br/>");
// Calcular chamando a função

$nota_1 = 5;
$nota_2 = 3;

echo("As sua nota é: $nota_1 <br/>");
echo("As sua nota é: $nota_2 <br/>");

echo(calculo_media($nota_1, $nota_2) . "<br/>");
// Calcular chamando a função
?>