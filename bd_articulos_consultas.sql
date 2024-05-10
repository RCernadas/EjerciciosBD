# 1. Obtener el nombre de los productos de la tienda
SELECT nombre
FROM articulo;


# 2. Obtener el nombre y el precio de los productos de la tienda
SELECT nombre, precio
FROM articulo;


# 3. Obtener el nombre de los productos cuyo precio sea menor o igual a 200€
SELECT nombre
FROM articulo 
WHERE precio <= 200;

# 4. Obtener todos los datos de los artículos cuyo precio esté entre los 60 € y los 120€ (ambas cantidades incluidas)
SELECT * 
FROM articulo 
WHERE precio BETWEEN 60 AND 120;


# 5. Obtener el nombre y el precio en pesetas (es decir, el precio en euros multiplicado por 166.386)
SELECT nombre, precio * 166.386 AS precio_pesetas
FROM articulo;


# 6. Seleccionar el precio medio de todos los productos
SELECT AVG(precio) AS precio_medio
FROM articulo;


# 7. Obtener el precio medio de los artículos cuyo código de fabricante sea 2
SELECT AVG(precio) AS precio_medio
FROM articulo
WHERE fabricante = 2;


# 8. Obtener el número de artículos cuyo precio sea mayor o igual a 180 €.
SELECT count(*) 
FROM articulo
WHERE precio >= 180;


# 9. Obtener el nombre y el precio de los  artículos cuyo precio sea mayor o igual a 180 € y ordenarlos descendentemente por precio, y luego ascendentemente por nombre.
SELECT nombre, precio 
FROM articulo
WHERE precio >= 180
ORDER BY precio desc, nombre asc;


# 10. Obtener un listado completo de artículos, incluyendo por cada artículo los datos del artículo y de su fabricante.
SELECT *
FROM articulo AS ar, fabricante AS fa
WHERE ar.fabricante = fa.codigo;
