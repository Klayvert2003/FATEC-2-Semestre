<?php
/*
Faça o cálculo da média simples de 
$nota_1 e $nota_2.
Imprima a média simples.
Imprima a condição:
    Se a média menor ou igual a 4.9, reprovado.
    Se a média entre 5 e 7, recuperação.
    Se a média acima de 7, aprovado.
Crie uma função com o nome calculo_media.
Use tipagem estrita e limite os parâmetros a receber float.
*/


function calculo_media(float $nota_1, $nota_2)
{
    $media = ($nota_1 + $nota_2) / 2;
    echo('A média é: ' . $media);

    if($media <= 4.9)
    {
        echo("<br/>");
        echo("Você foi reprovado");
        echo("<br/>");
    }
    elseif(($media >= 5) && ($media <= 7))
    {
        echo("<br/>");
        echo("Você está de recuperação");
        echo("<br/>");
    }
    else
    {
        echo("<br/>");
        echo("Você foi aprovado");
        echo("<br/>");
    }
}

$nota_1 = 9;
$nota_2 = 4;

echo("A sua primeira nota é: $nota_1");
echo("<br/>");

echo("A sua segunda nota é: $nota_2");
echo("<br/>");

echo(calculo_media($nota_1, $nota_2));


?>