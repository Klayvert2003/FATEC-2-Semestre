<?php 
class Pessoa 
{ 
    public $nome;
	public $peso; 
	public $altura; 
	public $idade; 
    public $sexo;


    public function definaSexo($pessoas)
    {
        if(is_bool($pessoas) AND $pessoas = 'F'){ 
            echo('Pessoa do sexo feminino.'); 
        }else{
            echo('Pessoa do sexo masculino.');
        }
    }
} 

$p1 = new Pessoa; 
$p1->nome = 'José';
$p1->peso = 70; 
$p1->altura   = 1.70; 
$p1->idade     = 17;
$p1->sexo = 'M';

$p2 = new Pessoa; 
$p2->nome = 'Marcos';
$p2->peso = 60; 
$p2->altura   = 1.60; 
$p2->idade     = 12; 
$p2->sexo = 'M';

$p3 = new Pessoa; 
$p3->nome = 'Álvaro';
$p3->peso = 80; 
$p3->altura   = 1.80; 
$p3->idade     = 63; 
$p3->sexo = 'M';

$p4 = new Pessoa; 
$p4->nome = 'Juliana';
$p4->peso = 70; 
$p4->altura   = 1.50; 
$p4->idade     = 20; 
$p4->sexo = 'F';

$p5 = new Pessoa; 
$p5->nome = 'Maria';
$p5->peso = 65; 
$p5->altura   = 1.65; 
$p5->idade     = 40; 
$p5->sexo = 'F';

// output objeto inteiro 
var_dump($p1); 
var_dump($p2);
var_dump($p3); 
var_dump($p4);
var_dump($p5);