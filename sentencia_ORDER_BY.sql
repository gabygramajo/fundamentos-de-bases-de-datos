-- ORDENAR POR <> Ascendente
SELECT *
FROM posts
ORDER BY fecha_publicacion ASC;

-- ORDENAR POR <> Descendente
SELECT *
FROM posts
ORDER BY fecha_publicacion DESC;

-- ORDENAR POR cadenas alfabéticamente Ascendente
SELECT *
FROM posts
ORDER BY titulo ASC;

-- ORDENAR POR usuario id Ascendente
SELECT *
FROM posts
ORDER BY usuario_id ASC;

-- ORDENAR POR <> Ascendente con Limite de 5 posts
SELECT *
FROM posts
ORDER BY fecha_publicacion ASC
LIMIT 5;