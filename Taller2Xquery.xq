for $autor in distinct-values(/biblioteca/libro/autor)
let $total := count(/biblioteca/libro[autor = $autor])
where $total > 1
return
  <resultado>
    {$autor} - Total: {$total} Libros
  </resultado>
