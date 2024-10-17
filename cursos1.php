<?php

include_once("clases/cursos.php");
include_once("clases/tecnologias.php");

$str_b =  $_GET['str_b'];
//echo "QUE".$_GET['str_b'];
$cursos=curso::seleccionar($str_b);

$tec=Tecnologia::traer_datos($str_b);

echo '<H3>'.$tec['nombre'].'-CURSOS</H3>';


if (isset($recursos)){
echo '<link rel="stylesheet" href="css/cursos.css">';

	  
  
	foreach($recursos as $recurso){
		  
		   echo '<div class="plantilla">';		   
		   echo "<header>
               <h1>$cursos[nombre]</h1>
               </header>";
		    
			   
			if($recurso['link_referencia']<>""){   
			echo "<nav><a href='$recurso[link_referencia]' target='_blank'>$recurso[nombre]</a></nav>";
			}   
		 
        	echo "<article>$recurso[Contenido]</article>";
	}
}	  
		  