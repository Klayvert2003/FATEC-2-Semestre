<?php
/*
Importar a função criada em 014_a.php para ser utilizada aqui.
// Calcular todas as médias chamando a função
*/

include('media.php');

for($i=0; $i < 1; $i++)
{

    $nota_1 = 9;
    $nota_2 = 4;

    echo(calculo_media($nota_1, $nota_2));
    echo("<br/>");

    $nota_1 = 1;
    $nota_2 = 5;

    echo(calculo_media($nota_1, $nota_2));
    echo("<br/>");

    $nota_1 = 5;
    $nota_2 = 3;

    echo(calculo_media($nota_1, $nota_2));
}


?>