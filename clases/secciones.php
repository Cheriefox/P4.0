<?php
include_once("conexion.php");

//ESTE CODIGO FUE MIGRADO DESDE LA EXTENSION ANTIGUA MYSQL A LA NUEVA MYSQLi
//UTILIZANDO LA INTERFAZ ORIENTADA A OBJETOS (http://php.net/manual/es/mysqli.quickstart.dual-interface.php)

class Seccion{
 public $id_seccion;
 public $nombre;
 public $id_tecnologia;
 public $orden;
 public $enlace;
 public $activo;
 
 
 function guardar(){  // crea la Persona
    
   
   $sql="insert into secciones(nombre,id_tecnologia,orden,enlace,activo)
   values('$this->nombre','$this->id_tecnologia','$this->orden','$this->enlace','$this->activo',
   '$this->activo')";
   //mysql_query($sql);
   $objConn = new Conexion();
   $objConn->enlace->query($sql);
 }
 
 function actualizar($nro=0)	// actualiza la Persona
	{
	        
			$sql="update secciones set nombre='$this->nombre', id_tecnologia='$this->id_tecnologia'
			,orden='$this->orden',enlace='$this->enlace',activo='$this->activo' 
             where id_seccion=$nro";
			//mysql_query($sql); // ejecuta la consulta para actualizar
			$objConn = new Conexion();
            $objConn->enlace->query($sql);
            			
	}
	
 function borrar($nro=0)	// elimina la Persona
	{
			$sql="delete from secciones where id_seccion=$nro";
			//mysql_query($sql); // ejecuta la consulta para eliminar
			$objConn = new Conexion();
            $objConn->enlace->query($sql);
			
	
	}	
	
function traer_datos($nro=0) // declara el constructor, si trae el numero de persona lo busca 
	{
		if ($nro!=0)
		{
			$sql="select * from secciones where id_seccion = $nro";
			//$result=mysql_query($sql);
			$objConn = new Conexion();
            $result = $objConn->enlace->query($sql);
			$recs=mysqli_num_rows($result);
			$row=mysqli_fetch_array($result);
			$id_seccion=$row['id_seccion'];
			return $row;
		}
	}	
 
 
 
 static function buscar(){
    $sql="select * from secciones where activo = 1 order by orden";
    //$rs=mysql_query($sql);
	$objConn = new Conexion();
	$rs=$objConn->enlace->query($sql);
	$est=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysqli_fetch_assoc($rs)){
	  $est[]=$fila;
	}return $est;
 
 }
 
 }