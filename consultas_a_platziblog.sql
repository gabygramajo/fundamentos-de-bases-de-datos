-- ¿Cuál es la cant de posts por categorias?
SELECT c.nombre_categoria, COUNT(*) AS cant_posts
FROM categorias AS c
	INNER JOIN posts AS p ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC;

-- TOP 3 de las categorias más posts
SELECT c.nombre_categoria, COUNT(*) AS cant_posts
FROM categorias AS c
	INNER JOIN posts AS p ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC
LIMIT 3;

-- ¿Cuáles son los escritores con más posts escritos?
SELECT u.nickname, COUNT(*) AS cant_posts
FROM usuarios AS u
	INNER JOIN posts AS p ON u.id = p.categoria_id
GROUP BY u.id
ORDER BY cant_posts DESC;

-- ¿Cuáles son los escritores con más posts escritos y en qué categorías?
SELECT u.nickname, COUNT(*) AS cant_posts, GROUP_CONCAT(nombre_categoria) AS categorias
FROM usuarios AS u
	INNER JOIN posts AS p ON u.id = p.categoria_id
	INNER JOIN categorias AS c ON c.id = p.categoria_id
GROUP BY u.id
ORDER BY cant_posts DESC;

-- ¿Cuáles son los escritores que no escribieron ningún post?
SELECT *
FROM usuarios AS u
	LEFT JOIN posts AS p ON u.id = p.usuario_id
WHERE p.usuario_id IS NULL;