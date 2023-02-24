<?php
session_start();

if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}

require_once('dados_banco.php');

// Criar Conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Checar Conexão
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully<br>";

$sql = "SELECT * FROM pessoa";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo"Os Registros são</br>";
    while($row = $result->fetch_assoc()) {
        echo"</br>";
        echo "<tr><td>".$row["nome"]."</td><td>".$row["sobrenome"]." ".$row["cpf"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>