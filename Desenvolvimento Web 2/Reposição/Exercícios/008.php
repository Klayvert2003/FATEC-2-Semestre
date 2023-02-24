<?php
/*
Descrubra se $numero é :
 - Divisível por 10
 - Divisível por 3
 - Se não é divisível por nenhum destes 
 - Imprimir mensagem na tela do número e as condições acima.
*/
$numero = 150;

$div1 = $numero / 10;
$div2 = $numero / 3;

echo("A divisão entra eles é possível pois apenas retornam números inteiros (resultado abaixo).");
echo("<br/>");
echo("A divisão de $numero por 10 é: $div1");
echo("<br/>");
echo("A divisão de $numero por 3 é: $div2");
?>