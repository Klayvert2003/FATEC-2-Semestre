
<!DOCTYPE html>
<html lang="pt_BR">
<head>
    <meta charset="UTF-8">
    <title>Cadastro</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; }
        .wrapper{ width: 350px; padding: 20px; }
    </style>
</head>
<body>
    <div class="wrapper">
        <h2>Cadastro de Funcionários</h2>
        <p>Favor inserir Nome e CPF.</p>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="form-group">
                <label>Nome</label>
                <input type="text" name="nome" class="form-control" >
                <span class="help-block"></span>
            </div>    
            <div class="form-group">
                <label>CPF</label>
                <input type="text" name="CPF" class="form-control">
                <span class="help-block"></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Acessar">
            </div>
        </form>
    </div>   

    
    <?php

    include('arquivos.php')

    /*
    $filename = "cadastroFunc.txt";
    if(!file_exists($filename)){
        $handle = fopen($filename, "w");
    } else {
        $handle = fopen($filename, "a");
        fwrite($handle, $_POST['nome']);
        fwrite($handle, $_POST['CPF']);
        fflush($handle);
        fclose($handle);
    }
    */
    ?>
    
</body>
</html>