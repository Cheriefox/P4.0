<?php
include_once("conexion.php");


class Curso{
 public $id_cursos;
 public $id_tecnologia;
 public $nombre_curso;
 public $contenido;
 public $link_referencia;
 public $activo;

  public $ordenamiento;

 
 function guardar(){  // creae cartel
    
  
   $sql="insert into cursos(id_tecnologia,id_cursos,contenido,ordenamiento,activo,link_referencia,nombre_curso)
   values('$this->id_tecnologia','$this->nombre_curso','$this->contenido','$this->ordenamiento',
  '$this->activo','$this->link_referencia')";
   //mysql_query($sql);
   $objConn = new Conexion();
   $objConn->enlace->query($sql);
 }
 
 function actualizar($nro=0)	// actualiza cartel
	{
	        
			$sql="update cursos set id_tecnologia='$this->id_tecnologia', nombre_cursos='$this->nombre_cursos',contenido='$this->contenido'
			,ordenamiento='$this->orden',activo='$this->activo',link_referencia='$this->link_referencia'  
			 where id_recurso = $nro";
			//mysql_query($sql); // ejecuta la consulta para actualizar
			$objConn = new Conexion();
            $objConn->enlace->query($sql);
            			
	}
	
 
 function borrar($nro=0)	
	{
	        echo $nro;
			$sql="delete from cursos where id_cursos = $nro";
			$objConn = new Conexion();
            $objConn->enlace->query($sql);
			
	
	}	
	
function traer_datos($nro=0) // declara el constructor, si trae el numero de persona lo busca 
	{
		if ($nro!=0)
		{
			$sql="select * from cursos where id_cursos = $nro";
			//$result=mysql_query($sql);
			$objConn = new Conexion();
            $result = $objConn->enlace->query($sql);
			$recs=mysqli_num_rows($result);
			$row=mysqli_fetch_array($result);
			$id=$row['id_cursos'];
			
			return $row;
		}
	}	
 
 
 
 static function buscar($str){
    $sql="select * from cursos where nombre like '%$str%' or contenido like '%$str%' or link like '%$str%' or id_recurso='$str' ";
    //$rs=mysql_query($sql);
	$objConn = new Conexion();
	$rs=$objConn->enlace->query($sql);
	$est=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysqli_fetch_assoc($rs)){
	  $est[]=$fila;
	}return $est;
 
 }
 
 static function seleccionar($str){
    $sql="select * from cursos where id_tecnologia = '$str' AND activo = 1 ";

	/*
    if(is_numeric($str)){
	 $sql="select * from recursos where id_recurso = '$str' ";
	}
	 */
	//echo $sql;
    
    //$rs=mysql_query($sql);
	$objConn = new Conexion();
	$rs=$objConn->enlace->query($sql);
	$est=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysqli_fetch_assoc($rs)){
	  $est[]=$fila;
	}return $est;
 
 }
 
 static function id_tecnologias(){
    $sql="select id_tecnologia,count(id_cursos) from recursos where activo=1 group by id_tecnologia";
    
	//echo $sql;
    
    $objConn = new Conexion();
	$rs=$objConn->enlace->query($sql);
	$est=array();
	//while($fila=mysql_fetch_assoc($rs) > 0){
	while($fila=mysqli_fetch_assoc($rs)){
	  $est[]=$fila;
	}return $est;
 
 }
 
 
 
 }