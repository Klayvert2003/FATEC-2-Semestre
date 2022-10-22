<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title></title>
    </head>
        <body>

        <form action="016.php" method="post">
            <label for="wanted_number">Enter a Number:</label>
            <h1></h1> <input type="text" id="wanted_number" name="wanted_number"><br>
            <input type="submit">
        </form>

        <?php
            /*
            Ler um número inteiro entre 1 e 12 e escrever o mês correspondente. Caso o número seja 
            Se estiver fora do intervalo, informar que não existe o mês
            Utilize array.
            */

            $all_month = [
                1 => "Janeiro",
                2 => "Fevereiro",
                3 => "Março",
                4 => "Abril",
                5 => "Maio",
                6 => "Junho",
                7 => "Julho",
                8 => "Agosto",
                9 => "Setembro",
                10 => "Outubro",
                11 => "Novembro",
                12 => "Dezembro"
            ];

            
            if(isset($_POST['wanted_number']))
            {
                $number = $_POST['wanted_number'];
            } else
            {
                $number = NULL;
            }

            if($number >= 1 and $number <= 12 or $number == NULL)
            {
            	foreach ($all_month as $key => $value)
            	{
            		if($key == $number)
            		{
            			echo "The number " . $number . " is equal to month " . $all_month[$key];
                        break;
            		}
            	}
            } else
            {
            	echo "The number " . $number . " do not match a valid month!";
            }
        ?>

    </body>
</html>
