
SELECT *
FROM posts
 --  obtener valores nulos
-- WHERE categoria_id IS NULL;
--  obtener valores NO NULOS
WHERE categoria_id IS NOT NULL;

-- convinando con otras sentecias
SELECT *
FROM posts
WHERE categoria_id IS NOT NULL 
	AND estatus = "activo";
    
SELECT *
FROM posts
WHERE categoria_id IS NOT NULL 
	AND estatus = "activo"
	AND categoria_id = 2;
    
SELECT *
FROM posts
WHERE categoria_id IS NOT NULL 
	AND estatus = "activo"
	AND categoria_id = 2
	AND YEAR(fecha_publicacion) = '2025';