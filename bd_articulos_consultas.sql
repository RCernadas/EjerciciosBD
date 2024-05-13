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

# 11. Obtener un listado de artículos, incluyendo el nombre del artículo, su precio y el nombre de su fabricante
SELECT ar.nombre, ar.precio, fa.nombre AS nombre_fabricante
FROM articulo AS ar, fabricante AS fa
WHERE ar.fabricante = fa.codigo;

# 12. Obtener el precio medio de los productos de cada fabricante, mostrando solo los códigos de fabricante.
SELECT fa.codigo AS codigo_fabricante, AVG(ar.precio)
FROM articulo AS ar, fabricante AS fa
WHERE ar.fabricante = fa.codigo
GROUP BY codigo_fabricante;


#13. Obtener el precio medio de los productos de cada fabricante, mostrando el nombre del fabricante.
SELECT fa.nombre AS nombre_fabricante, AVG(ar.precio)
FROM articulo AS ar, fabricante AS fa
WHERE ar.fabricante = fa.codigo
GROUP BY nombre_fabricante;


#14. Obtener los nombres de los fabricantes que ofrezcan productos cuyo precio medio sea mayo o igual a 15 €
SELECT fa.nombre
FROM articulo AS ar, fabricante AS fa
WHERE ar.fabricante = fa.codigo AND ar.precio >= 15;


# 15. Obtener el nombre y el precio del artículo más barato.
SELECT nombre, precio
FROM articulo
WHERE precio = (SELECT MIN(precio) FROM articulo);


# 16. Obtener una lista con el nombre y precio de los artículos más caros de cada proveedor (incluyendo el nombre del proveedor)
SELECT fa.nombre, ar.precio
FROM articulo AS ar, fabricante AS fa
WHERE ar.fabricante = fa.codigo AND ar.precio = (SELECT MAX(ar.precio) FROM articulo)
GROUP BY fa.nombre, ar.precio;


# 17. Añadir un nuevo producto: Altavoces de 70 € (del fabricante 2)
INSERT INTO Articulo (nombre, precio, fabricante) VALUES 
('Altavoces', 70, 2);

# 18. Cambiar el nombre del producto 5 a  “Impresora laser”
UPDATE articulo
SET nombre = 'Impresora laser'
WHERE codigo = 5;


# 19. Aplicar un descuento del 10% a todos los productos
SET SQL_SAFE_UPDATES = 0;
UPDATE articulo
SET precio = precio - (precio * 0.10);
SET SQL_SAFE_UPDATES = 1;


# 20. Aplicar un descuento de 10 € a todos los productos cuyo precio sea mayor o igual a 120€ 
SET SQL_SAFE_UPDATES = 0;
UPDATE articulo
SET precio = precio - 10
WHERE precio >= 120;
SET SQL_SAFE_UPDATES = 1;

