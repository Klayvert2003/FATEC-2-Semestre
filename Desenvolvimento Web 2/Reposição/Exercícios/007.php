<?php
/*
Crie um script que percorra toda a $array, apresentando os valores.
Utilize foreach.
Adapte o código para exibir somente os valores inteiros.
Realize a soma dos números inteiros
Dica: https://www.php.net/manual/en/control-structures.foreach.php
*/ 
$array = 
[
    "n1" => 10,
    "n2" => 20,
    "n3" => 30,
    "n4" => 'oi mundo'
];


echo("Os valores do array são: ");
echo("</br>");
unset($array["n4"]);

foreach($array as $p => $recebe)
{
    if($p = "n1" && "n2" && "n3")
    {
        echo("\$a[$p] => $recebe.\n");
        echo("</br>");
    }
}

    $total =  $array["n1"] + $array["n2"] + $array["n3"];
    echo("A soma de todos os valores é: ". $total);


?>


