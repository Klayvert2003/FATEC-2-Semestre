<?php 
class SalaVirtual 
{ 
    public $nome;
	public $peso; 
	public $altura; 
	public $idade; 
    public $sexo;

    public function aumentarPessoa($pessoas)
    {
        if(is_numeric($pessoas) AND $pessoas >= 0){ 
            $this->estoque += $pessoas; 
        }
    }

    public function diminuirPessoa( $pessoas ) 
    {
        if(is_numeric($pessoas) AND $pessoas >= 0) {
            $this->estoque -= $pessoas; 
        }
    }
} 
?>