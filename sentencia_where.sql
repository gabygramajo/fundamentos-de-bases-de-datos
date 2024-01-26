
-- filtrar por ID
SELECT *
FROM posts
WHERE id < 50;

SELECT *
FROM posts
WHERE id >= 50;

SELECT *
FROM posts
WHERE (id % 2) != 0;

-- filtar con string
SELECT *
FROM posts
WHERE estatus = "activo";

SELECT *
FROM posts
WHERE titulo LIKE '%escandalo%';
-- En la cláusula LIKE de SQL, puedes utilizar dos comodines principales: % y _
/*En este caso, el patrón %escandalo% significa que estás buscando 
todas las filas en la tabla "posts" donde la columna "titulo" contiene 
la subcadena "escandalo", y el % antes y después de "escandalo" actúan 
como comodines que pueden representar cualquier conjunto de caracteres 
antes o después de la palabra "escandalo". Esto es una coincidencia de 
patrones simple, no una expresión regular completa.*/ 

-- filtrar por fecha
SELECT *
FROM posts
WHERE timestamp(fecha_publicacion) > "2025-02-01";

-- sentencia BETWEEN
SELECT *
FROM posts
WHERE timestamp(fecha_publicacion) BETWEEN "2023-02-01" AND "2025-12-31";
/* funciones para fechas
- YEAR() 
- MONTH()
- WEEKDAY()
*/

SELECT *
FROM posts
WHERE id BETWEEN 50 AND 60;