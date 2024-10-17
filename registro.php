<?php
include 'clases/conexion.php';

$objConexion = new Conexion;


$correo = $_POST['email'];
$pass = $_POST['password'];
$repetirpass = $_POST['repeatPassword'];
$nombreusuario = $_POST['username'];
$telefono = $_POST['phone'];
$institucion = $_POST['school'];

// Verificar si las contraseñas coinciden
if ($pass !== $repetirpass) {
    echo "Las contraseñas no coinciden.";
    exit;
}

// Encriptar la contraseña
$pass_encriptada = password_hash($pass, PASSWORD_DEFAULT);

// SQL para insertar los datos en la tabla de usuarios
$sql = "INSERT INTO usuarios (gmail, password, nombre, telefono, institucion)
VALUES ('$correo', '$pass_encriptada', '$nombreusuario', '$telefono', '$institucion')";

if ($conn->query($sql) === TRUE) {
    echo "Registro exitoso.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Cerrar la conexión
$conn->close();

