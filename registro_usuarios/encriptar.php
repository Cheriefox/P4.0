<?php
// Contraseña a encriptar
$password = 'tu_contraseña';


$hashedPassword = hash('sha256', $password);

// Conexión a la base de datos
$host = 'localhost';
$db = 'nombre_base_datos';
$user = 'usuario';
$pass = 'contraseña';

$conn = new mysqli($host, $user, $pass, $db);

// Comprobar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$username = 'usuario1';
$sql = "INSERT INTO usuarios (username, password) VALUES ('$username', '$hashedPassword')";

if ($conn->query($sql) === TRUE) {
    echo "Usuario creado exitosamente.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
