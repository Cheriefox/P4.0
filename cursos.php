<?php
include_once("clases/conexion.php");
include_once("clases/cursos.php");

// Obtener la lista de cursos
$cursos = Curso::buscar(""); // Puedes filtrar aquí si lo deseas

// Habilitar el reporte de errores
error_reporting(E_ALL);
ini_set('display_errors', 1);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Cursos</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <h1>Lista de Cursos</h1>
    <a href="crear.php">Crear Curso</a>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Contenido</th>
                <th>Link</th>
                <th>Activo</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($cursos): ?>
                <?php foreach ($cursos as $curso): ?>
                <tr>
                    <td><?php echo $curso['id_cursos']; ?></td>
                    <td><?php echo $curso['nombre_curso']; ?></td>
                    <td><?php echo $curso['contenido']; ?></td>
                    <td><a href="<?php echo $curso['link_referencia']; ?>" target="_blank">Ver</a></td>
                    <td><?php echo $curso['activo'] ? 'Sí' : 'No'; ?></td>
                    <td>
                        <a href="editar.php?id=<?php echo $curso['id_cursos']; ?>">Editar</a>
                        <a href="eliminar.php?id=<?php echo $curso['id_cursos']; ?>">Eliminar</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr>
                    <td colspan="6">No hay cursos disponibles.</td>
                </tr>
            <?php endif; ?>
        </tbody>
    </table>
</body>
</html>
