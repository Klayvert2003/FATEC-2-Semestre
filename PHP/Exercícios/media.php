<?php
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
?>