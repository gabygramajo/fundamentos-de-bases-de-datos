-- contar y agrupar posts por activos o inactivos
SELECT estatus, COUNT(*) AS post_quantity
FROM posts
GROUP BY estatus;

-- contar y agrupar posts por año
SELECT YEAR(fecha_publicacion) AS post_year, COUNT(*) AS post_quantity
FROM posts
GROUP BY post_year;

-- contar y agrupar posts por mes
SELECT MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY post_month;

-- contar y agrupar posts por mes y estatus
SELECT estatus, MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY estatus, post_month;