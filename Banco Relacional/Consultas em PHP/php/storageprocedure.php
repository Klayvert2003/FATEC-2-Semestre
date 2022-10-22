<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Procedure</title>
</head>
<body>
    <?php
        //Importando o arquivo da conexao
        include 'conexao.php';

        if(isset($_POST['qtde']))
        {
            $qtde = $_POST['qtde'];

            $sql = "select c.*, r.nome as nomerepr from cliente c, representante r where c.idrepresentante = r.id";
            $result = mysqli_query($conexao, $sql);
            
            //$result = mysqli_query($conexao, "CALL Selecionar_Produtos('". $qtde . "');");
            print "<h2>Resultados</h2>";
            print "<br>";
            while($linha = mysqli_fetch_assoc($result))
            {
                print $linha["id"] . " - " . $linha["nome"] . " - " . $linha["nomerepr"];
                //print $linha["id"] . " - " . $linha["nome"]. " - " . $linha["nome"]. " - " . $linha["nome"]. " - " . $linha["nome"];
                print "<br>";
            }
        }
    ?>
</body>
</html>
