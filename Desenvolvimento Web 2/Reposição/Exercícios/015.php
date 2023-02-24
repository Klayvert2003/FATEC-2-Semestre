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
Crie validações na função, para que os parâmetros aceitos estejam 
entre 0 e 10.
Crie constantes para os limites ( 0 e 10 )
*/

function calculo_media(float $nota_1, $nota_2)
{

    $media = ($nota_1 + $nota_2) / 2;

    define('min', 0);
    define('max', 10);

    if(($media > max) || ($media < min))
    {
        echo("Média Inválida!");
    }
    else
    {
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
}

$nota_1 = -9;
$nota_2 = -4;


echo("A sua primeira nota é: $nota_1");
echo("<br/>");

echo("A sua segunda nota é: $nota_2");
echo("<br/>");

echo(calculo_media($nota_1, $nota_2));


?>