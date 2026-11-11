-- ej 1
CREATE USER 'data_analyst'@'localhost'
IDENTIFIED BY '1234';


-- ej 2
GRANT SELECT, UPDATE, DELETE
ON sakila.*
TO 'data_analyst'@'localhost';


-- ej 3

CREATE TABLE sakila.prueba (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);


-- ej 4

UPDATE sakila.film
SET title = 'PELICULA ACTUALIZADA'
WHERE film_id = 1;


-- ej 5

REVOKE UPDATE
ON sakila.*
FROM 'data_analyst'@'localhost';


-- ej 6

UPDATE sakila.film
SET title = 'PELICULA ACTUALIZADA'
WHERE film_id = 1;
