function busquedapokedex() {
    // Obtiene el valor del campo de entrada, lo convierte a minúsculas para facilitar la búsqueda
    let input = document.getElementById("botonbusqueda").value.toLowerCase();

    // Obtiene la tabla del pokedex por su ID
    let table = document.getElementById("pokedex");

    // Obtiene todas las filas de la tabla
    let rows = table.getElementsByTagName("tr");

    // Obtiene las celdas de encabezado de la primera fila
    let headers = rows[0].getElementsByTagName("th");
    
    // Inicializa el índice de la columna que contiene los nombres como -1 (sin encontrar)
    let nombreIndex = -1;

    // Busca la columna con la clase "nombre" en los encabezados para identificar su índice
    for (let i = 0; i < headers.length; i++) {
        if (headers[i].classList.contains("nombre")) {
            nombreIndex = i; // Asigna el índice de la columna "nombre"
        }
    }

    // Si no se encontró la columna "nombre", termina la función
    if (nombreIndex === -1) return;

    // Itera sobre las filas comenzando desde la segunda (i = 2) para omitir el encabezado
    for (let i = 2; i < rows.length; i++) {
        // Obtiene todas las celdas de la fila actual
        let cells = rows[i].getElementsByTagName("td");

        // Si la fila tiene celdas
        if (cells.length > 0) {
            // Obtiene el texto de la celda en la columna "nombre", en minúsculas (si existe)
            let nombreText = cells[nombreIndex]?.textContent.toLowerCase() || "";

            // Si el texto de la celda incluye el texto de entrada, muestra la fila; si no, ocúltala
            if (nombreText.includes(input)) {
                rows[i].style.display = ""; // Muestra la fila
            } else {
                rows[i].style.display = "none"; // Oculta la fila
            }
        }
    }
}