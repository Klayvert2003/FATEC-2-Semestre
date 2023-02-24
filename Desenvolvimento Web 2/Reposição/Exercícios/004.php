<?php
/*
Escreva um script que imprima qual o maior número.
Use IF
*/
$a = 10;
$b = 1;
$c = 40;
    
    if($a > $b){
        $maior = $a;
    if($a > $c){
        $maior = $a;

    if($b > $a){
        $maior = $b;
    if($b > $c)
        $maior = $b;
	
	if($c > $a){
        $maior = $c;
	if($c > $b){
        $maior = $c;	

    echo('o maior número é = ' . $maior);
	}}}}}

?>