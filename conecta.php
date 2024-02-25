<?php
    $servername = "localhost";
    $database = "cabeleleilaleila_correto";
    $username = "root";
    $password = "";

    $mysqli = new mysqli($servername, $username, $password, $database);
    $conn = mysqli_connect($servername, $username, $password, $database);

    if ($mysqli->connect_error) {
        die("Falha ao conectar ao banco de dados: " . $mysqli->connect_error); 
    }

    if (!$conn) {
        die("Conexão falhou. Erro: " . mysqli_connect_error());
    }
?>
