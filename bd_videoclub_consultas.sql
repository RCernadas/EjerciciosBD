-- Consultas sobre la tabla películas

# Mostrar todas las películas
SELECT * 
FROM pelicula;


# Mostrar las películas cuyo director es Cosme
SELECT * 
FROM pelicula
WHERE director LIKE '%Cosme%';


# Mostrar las películas en las que el nombre del director empieza por M
SELECT *
FROM pelicula
WHERE director like 'M%';


# Mostrar las películas cuya directora es Ana o Eva
SELECT *
FROM pelicula
WHERE director LIKE '%Ana%' || director LIKE '%Eva%';


# Mostrar sólo los directores de las películas
SELECT director
FROM pelicula;


# Mostrar las películas cuyo precio es mayor que 20 y menor que 55
SELECT *
FROM pelicula
WHERE precio_alquiler > 20 && precio_alquiler < 55;