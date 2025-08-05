<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "brbs_shop"; // nome do seu banco

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Erro: " . $conn->connect_error);
}

$sql = "SELECT nome, preco, imagem FROM produtos";
$result = $conn->query($sql);

$produtos = [];
while($row = $result->fetch_assoc()) {
    $produtos[] = $row;
}

header('Content-Type: application/json');
echo json_encode($produtos);

$conn->close();
?>
