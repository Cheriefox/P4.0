<?php
define ('DB_HOST','localhost');
define ('DB_USER','root');
define ('DB_PASS','lp4458');
define ('DB_NAME','p40');
class Conexion extends mysqli{

 public $enlace;
 
 function __construct(){
     $this->enlace=mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);
 }
 function __destruct(){
     mysqli_close($this->enlace);
 }
}


$objConexion = new Conexion();
