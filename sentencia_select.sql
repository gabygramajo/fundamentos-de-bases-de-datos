-- SELECT * -> Seleccionar todo
-- FROM  -> desde la tabla

-- Seleccionar por columnas especificas
SELECT titulo, fecha_publicacion, estatus
FROM posts;

-- Modificar el nombre de las columnas al visualizar con AS, llamado "alias"
SELECT titulo AS encabezado, fecha_publicacion AS publicado_en, estatus AS estado
FROM posts;

-- Contar el número de todos los registros con COUNT(*)
SELECT COUNT(*)
FROM posts;
-- >> 21

-- Contar el número de posts con COUNT + ALIAS y asi darle mayor sentido
SELECT COUNT(*) AS numero_posts
FROM posts;
-- >> 21