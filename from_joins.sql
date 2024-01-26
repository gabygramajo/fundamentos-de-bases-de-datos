SELECT *
FROM usuarios
	-- unir la tabla usuarios con posts mediante las FK 
	LEFT JOIN posts ON usuarios.id = posts.usuario_id;
-- de esta forma traerá todos los usuarios que tengan o no tengan posts asociados.

SELECT *
FROM usuarios
	LEFT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
-- traerá los usuarios que no tengan posts asociados.

SELECT *
FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id;
-- traerá los posts asociado que tengan usuarios asociados o no.

SELECT *
FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
-- traerá los posts que no tengan usuarios asociados.

SELECT *
FROM usuarios
	INNER JOIN posts ON usuarios.id = posts.usuario_id;
-- traerá sólo los usuarios que tengan posts asociados.

-- FULL OUTER JOIN
SELECT *
FROM usuarios
	LEFT JOIN posts ON usuarios.id = posts.usuario_id

UNION
    
SELECT *
FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id;
-- De esta forma traerá todos los datos de ambas tablas

-- Diferencia simétrica
SELECT *
FROM usuarios
	LEFT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL
UNION
SELECT *
FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
-- De esta forma traerá sólo los datos de ambas tablas que no tengan ni usuarios ni posts asociados