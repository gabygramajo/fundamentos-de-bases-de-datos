-- ¿Cuantas etiquetas tiene cada post?
SELECT posts.titulo, COUNT(*) AS num_etiquetas
FROM posts
	INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
	INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id
ORDER BY num_etiquetas DESC;

-- ¿Cuales etiquetas tiene cada post?
SELECT posts.titulo, GROUP_CONCAT(nombre_etiqueta) AS etiquetas_del_post
FROM posts
	INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
	INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id;

-- ¿Cuales son las etiquetas que no tienen un post asociado?
SELECT *
FROM etiquetas
	LEFT JOIN posts_etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
WHERE posts_etiquetas.etiqueta_id IS NULL;