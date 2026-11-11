-- EJ 1:

CREATE USER 'data_analyst'@'localhost'
IDENTIFIED BY '1234';


-- EJ 2:

GRANT SELECT, UPDATE, DELETE
ON sakila.*
TO 'data_analyst'@'localhost';


-- EJ 3:

CREATE TABLE sakila.prueba (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Resultado:
-- Error Code: 1142. CREATE command denied to user 'data_analyst'@'localhost' for table 'prueba'.


-- EJ 4:

UPDATE sakila.film
SET title = 'Shrek'
WHERE film_id = 1;

-- Resultado:
-- La operación se ejecuta bien porque el usuario tiene permiso UPDATE sobre las tablas.


-- EJ 5:

REVOKE UPDATE
ON sakila.*
FROM 'data_analyst'@'localhost';


-- EJ 6:

UPDATE sakila.film
SET title = 'Shrek'
WHERE film_id = 1;

-- Resultado:
-- Error Code: 1142. UPDATE command denied to user 'data_analyst'@'localhost' for table 'film'.
