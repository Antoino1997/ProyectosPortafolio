<!DOCTYPE html>
<html lang="en" style="overflow-y: scroll;"> <!-- Comienza el documento HTML, idioma inglés, con estilo que permite el scroll vertical -->
    <head> <!-- Encabezado del documento, contiene información meta y enlaces a recursos -->
        <title>Pokedex</title>
        <link type="image/png" sizes="96x96" rel="icon" href="favicon.png">
        <link rel="stylesheet" href="css.css">
        <script defer src="script.js"></script>
    </head>
    <body>
        <div>

            <input type="text" id="botonbusqueda" onkeyup="busquedapokedex()" placeholder="Buscar pokemon..."> 

            <!-- Tabla principal para los Pokémon -->
            <table id="pokedex"> 
                <thead>
                    <tr class="header">
                        <th rowspan="2" width="7%">No.</th>
                        <th rowspan="2" width="3%">Pic</th> 
                        <th rowspan="2" class="nombre" width="20%">Name</th>
                        <th rowspan="2" width="30%">Type</th>
                        <th rowspan="2" width="30%">Abilities</th>
                        <th colspan="6" width="10%">Base Stats</th>
                    </tr>
                    <tr class="header">
                        <th>HP</th>
                        <th>Att</th>
                        <th>Def</th>
                        <th>S.Att</th>
                        <th>S.Def</th>
                        <th>Spd</th>
                    </tr>
                </thead>
                <!-- Cuerpo de la tabla donde se insertarán los datos -->
                <tbody>
                    <?php
                    // Configuración de la conexión a la base de datos
                    $servername = "localhost"; 
                    $username = "root";
                    $password = "";
                    $database = "pokedex";

                    // Crear conexión con la base de datos
                    $connection = new mysqli($servername, $username, $password, $database);

                    // Verificar si la conexión fue exitosa
                    if ($connection->connect_error) {
                        die("Connection failed: " . $connection->connect_error);
                    }

                    // Consulta SQL para obtener todos los datos de la tabla "pokemon"
                    $sql = "SELECT * FROM pokemon";
                    $result = $connection->query($sql);

                    // Función para formatear los tipos en imágenes con etiquetas <img>
                    function formatTypes($typesString) {
                        if (empty($typesString)) {
                            return ""; // Devuelve vacío si no hay tipos
                        }

                        $types = explode("/", $typesString); // Divide los tipos en un array
                        $formattedTypes = array_map(function($type) {
                            // Crea la etiqueta <img> para cada tipo
                            return "<img src='tipos/" . trim($type) . ".png' alt='" . trim($type) . "' />";
                        }, $types);

                        return implode(" ", $formattedTypes); // Junta las imágenes con espacios entre ellas
                    }

                    // Verificar si la consulta SQL fue exitosa
                    if (!$result) {
                        echo "<tr><td colspan='12'>Ocurrió un error al cargar los datos</td></tr>"; // Mensaje de error en la tabla
                    } else {
                        // Iterar por cada fila de resultados
                        while ($row = $result->fetch_assoc()) {
                            // Crear tabla de tooltip para las debilidades y resistencias del Pokémon
                            $tooltipTable = "
                                <table>
                                    <tr>
                                        <th>x2</th>
                                        <td>" . formatTypes($row["x2"]) . "</td>
                                    </tr>
                                    <tr>
                                        <th>x4</th>
                                        <td>" . formatTypes($row["x4"]) . "</td>
                                    </tr>
                                    <tr>
                                        <th>x1/2</th>
                                        <td>" . formatTypes($row["x1_2"]) . "</td>
                                    </tr>
                                    <tr>
                                        <th>x1/4</th>
                                        <td>" . formatTypes($row["x1_4"]) . "</td>
                                    </tr>
                                    <tr>
                                        <th>x0</th>
                                        <td>" . formatTypes($row["x0"]) . "</td>
                                    </tr>
                                </table>";

                            // Crear una fila en la tabla para cada Pokémon
                            echo "<tr>
                                <td>" . $row["id_pokemon"] . "</td>
                                <td><a href='pokemon/" . $row["nombre"] . ".html'><img id='pkm' src='" . $row["pic"] . "' alt='Imagen de " . $row["nombre"] . "' /></a></td>
                                <td><a href='pokemon/" . $row["nombre"] . ".html' id='linkpkm'>" . $row["nombre"] . "</a></td>
                                <td>
                                    <div class='tooltip'>
                                        " . formatTypes($row["tipos"]) . "
                                        <div class='tooltiptext'>
                                            <div class='tooltip-table-container'>
                                                $tooltipTable
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <a href='habilidad/" . $row["habilidad1"] . ".html' id='linkpkm'>" . $row["habilidad1"] . "</a>" . 
                                    ($row["habilidad2"] ? "<br><a href='habilidad/" . $row["habilidad2"] . ".html' id='linkpkm'>" . $row["habilidad2"] . "</a>" : "") . 
                                    ($row["habilidad3"] ? "<br><a href='habilidad/" . $row["habilidad3"] . ".html' id='linkpkm'>" . $row["habilidad3"] . "</a>" : "") . 
                                "</td>
                                <td>" . $row["hp"] . "</td>
                                <td>" . $row["att"] . "</td>
                                <td>" . $row["def"] . "</td>
                                <td>" . $row["s_att"] . "</td>
                                <td>" . $row["s_def"] . "</td>
                                <td>" . $row["spd"] . "</td>
                            </tr>";
                        }
                    }
                    // Cerrar la conexión a la base de datos
                    $connection->close();
                    ?>
                </tbody>
            </table>
        </div>
    </body>
</html>