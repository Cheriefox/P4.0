
<?php
$servername = "localhost"; 
$username = "localhost"; 
$password = ""; 
$dbname = "p4.0"; 
// Crear conexión
$conn = new mysqli($id_usuario , $nombre,$gmail, $paswsword, $institucion,$rol_institucion);

// Verificar conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
?>
