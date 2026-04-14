for $autor in distinct-values(/biblioteca/libro/autor)
let $total := count(/biblioteca/libro[autor = $autor]) (:sacamos el autor de los libros de la biblioteca:)
where $total > 1 (:para aclarar los autores que han escrito mas de un libro:)
return
  <resultado>
    {$autor} - Total: {$total} Libros (:muestra el total de libros escritos por el autor en concreto mostrando su nombre:)
  </resultado>
