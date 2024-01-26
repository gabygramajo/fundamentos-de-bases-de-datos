 /*
 uniendo las tablas usuarios, posts y posts_etiquetas el cual 
 traerá sólo los usuarios que tengan posts asociados 
 y que sean de la categoría 2
 */
SELECT *
FROM usuarios
	INNER JOIN posts ON usuarios.id = posts.usuario_id
	INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
WHERE posts_etiquetas.etiqueta_id = 2