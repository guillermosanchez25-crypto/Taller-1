for $libro in /biblioteca/libro
where $libro/@categoria = "programacion" (:aqui pedimos la categoria preogramacion :)
  and number ($libro/precio)>30 (:aqui pedimos el precio mayor a 30:)
order by $libro/titulo descending (:aqui aclaramos que queremos un orden descendente:)
return (:return devuelve el resultado:)

 <Resultado>
     Título: {$libro/titulo/text()} (:devuelve el titulo del libro seguido del precio con number y un simbolo €:)
      - Precio: {$libro/precio/text()}€
 </Resultado>


