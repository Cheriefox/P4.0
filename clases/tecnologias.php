<?php
include_once("conexion.php");

//ESTE CODIGO FUE MIGRADO DESDE LA EXTENSION ANTIGUA MYSQL A LA NUEVA MYSQLi
//UTILIZANDO LA INTERFAZ ORIENTADA A OBJETOS (http://php.net/manual/es/mysqli.quickstart.dual-interface.php)

class Tecnologia{
 public $id_tecnologia;
 public $nombre;
 public $abreviatura;
  public $resumen;
 public $logo;
 public $orden;
 public $activo;
 public $definicion;
 
 
 function guardar(){  // crea la Persona
    
   
   $sql="insert into tecnologias(nombre,abreviatura,resumen,logo,orden,activo)
   values('$this->nombre','$this->abreviatura','$this->resumen','$this->logo','$this->orden','$this->activo',
   '$this->activo')";
   //mysql_query($sql);
   $objConn = new Conexion();
   $objConn->enlace->query($sql);
 }
 
 function actualizar($nro=0)	// actualiza la Persona
	{
	        
			$sql="update tecnologias set nombre='$this->nombre', abreviatura='$this->abreviatura'
			,orden='$this->orden',resumen='$this->resumen',logo='$this->logo',activo='$this->activo' 
             where id_seccion=$nro";
			//mysql_query($sql); // ejecuta la consulta para actualizar
			$objConn = new Conexion();
            $objConn->enlace->query($sql);
            			
	}
	
 function borrar($nro=0)	// elimina la Persona
	{
			$sql="delete from tecnologias where id_tecnologia=$nro";
			//mysql_query($sql); // ejecuta la consulta para eliminar
			$objConn = new Conexion();
            $objConn->enlace->query($sql);
			
	
	}	
	
static function traer_datos($nro=0) // declara el constructor, si trae el numero de persona lo busca 
	{
		if ($nro!=0)
		{
			$sql="select * from tecnologias where id_tecnologia = $nro";
			//$result=mysql_query($sql);
			$objConn = new Conexion();
            $result = $objConn->enlace->query($sql);
			$recs=mysqli_num_rows($result);
			$row=mysqli_fetch_array($result,MYSQLI_BOTH);
			$id_tecnologia=$row['ID_tecnologia'];
			return $row;
		}
	}	
 
 
 
 static function buscar(){
    $sql="select * from tecnologias where activo = 1 order by orden";
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