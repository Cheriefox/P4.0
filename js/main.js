  let categorias = [         ];
    let secciones = [         ];

 
 
         function poner_colores(div,color,bkg_color)
         {
           $(div).css('color', color);
           $(div).css('background-color',bkg_color);
         }

       function cargar(div,desde)
        {
        $(div).load(desde);
        } 
 
        function poner_nombre(div,nombre)
        {
        $(div).text(nombre);
        } 
  
        function poner_imagen(div,imagen)
        {
       
       alert(imagen);
        $(div).attr("src",imagen); 
        } 
     
        function poner_menu(div,nombre)
        {
        let ix=div.slice(1);
        $(div).text(nombre);
        //$(div).attr.bk_color(categorias[ix-1].bk_color);
        //document.getElementById(div).style.backgroundColor =categorias[ix-1].bk_color;
     
        } 
     
        function poner_cat(div)
        {
        let ix=div.slice(1);
        
        let nombre=document.getElementById(div).innerHTML;
        document.getElementById("hdr_cat").innerHTML='<H4>'+categorias[ix-1].nombre+'</H4>';
        document.getElementById("abreviatura").innerHTML='<H4>'+categorias[ix-1].abreviatura+'</H4>';
        document.getElementById("resumen").innerHTML='<H5>'+categorias[ix-1].resumen+'</H5>';
        document.getElementById("id_cat").innerHTML=categorias[ix-1].ID_tecnologia;
        poner_colores("#hdr_cat",categorias[ix-1].color,categorias[ix-1].bkg_color);
        poner_colores("#abreviatura",categorias[ix-1].color,categorias[ix-1].bkg_color);
        poner_colores("#resumen",categorias[ix-1].color,categorias[ix-1].bkg_color);
        //document.getElementById("Hdr_Contenido").innerHTML='<H4>'+categorias[ix-1].nombre+'</H4>';
        document.getElementById("Contenido").innerHTML='<H4>'+categorias[ix-1].nombre+'</H4>'+'<H5>'+categorias[ix-1].definicion+'</H5>';
        poner_secciones();
        } 
     
        function poner_p40()
        {
           document.getElementById("hdr_cat").innerHTML='<H3>Plataforma 4.0</H3>';
           document.getElementById("abreviatura").innerHTML='<H4>P40</H4>';
           document.getElementById("resumen").innerHTML='<H5>Viejas y nuevas tecnologias que se integran y se potencian</H5>';
           document.getElementById("id_cat").innerHTML=0;
           poner_colores("#hdr_cat","white","blue");
           poner_colores("#abreviatura","white","blue");
           poner_colores("#resumen","white","blue");
           cargar('#Contenido','fondo.html');
      
        } 
     
     
      
        function poner_secciones()
        {
         let enlace; 
         let id;
         let tecno='1';
         let id_s;
         
         tecno=document.getElementById("id_cat").innerText;
           //alert(secciones.length);
         for(i=0;i<secciones.length;i++){ 
           id="S"+(i+1);
           //enlace='<a href="#" onclick="cargar(\'#contenido\',\''+secciones[i].enlace +'?str_b='+tecno+'\');">'+secciones[i].nombre+'</a>';
           enlace='<div onclick="cargar(\'#Contenido\',\''+secciones[i].enlace +'?str_b='+tecno+'\');">'+secciones[i].nombre+'</div>';
           
           //$(id).text(secciones[i].nombre);
           //document.getElementById(id).innerHTML=secciones[i].nombre;
           if(tecno!='0')
              document.getElementById(id).innerHTML=enlace;
           else
              document.getElementById(id).innerHTML=secciones[i].nombre;

              id_s="#"+id;
              poner_colores(id_s,categorias[tecno].color,categorias[tecno].bkg_color);
         }
        
        } 
     
         function toggleVis(div) {
             const elemento = document.getElementById(div);
             if (elemento.style.visibility === 'hidden') {
                 elemento.style.visibility = 'visible';
             } else {
                 elemento.style.visibility = 'hidden';
             }
         }
    
     