for $libro in /biblioteca/libro
where $libro/@categoria = "programacion"
  and number ($libro/precio)>30
order by $libro/titulo descending
return 

 <Resultado>
     Título: {$libro/titulo/text()}
      - Precio: {$libro/precio/text()}€
 </Resultado>




