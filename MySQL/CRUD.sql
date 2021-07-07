USE twitter; -- para usar una base de datos en particular
SELECT * FROM users; -- mostrar datos desde una TABLA en particular

SELECT id, first_name, handle FROM users;

select * from tweets where id in (9,10,11); -- consulta por varios elementos basado en el id

-- crear alias para las tablas
select * from faves fv, users us, tweets tw
where fv.user_id = us.id and fv.tweet_id = tw.id
and us.id = 1; -- relaciones entre tablas por foreign keys / us.id es mas especifico

select us.first_name, us.last_name, tw.id, tw.tweet
from faves fv, users us, tweets tw
where fv.user_id = us.id and fv.tweet_id = tw.id
and us.id = 1; -- en esta query especifico que datos quiero, en las anteriores eran todos los datos que cumplieran la condicion, mientras que esta son ciertas columnas que cumple la condicion

-- FUNCION JOIN
select us.first_name, us.last_name, tw.id, tw.tweet
from faves fv
INNER JOIN users us ON fv.user_id = us.id
INNER JOIN tweets tw ON fv.tweet_id = tw.id
-- INNER JOIN users ON .tweet_id = tw.id
where us.id = 1;

-- INSERT ingresar nuevo usuario
INSERT INTO users (first_name, last_name, handle, birthday, created_at, updated_at)
VALUES ('Felipe', 'Fuentes', 'ffuentes', '1995-03-13', '2021-07-05 16:20:00', '2021-07-05 16:20:00');

select * from users;

-- UPDATE / ACTUALIZAR DATOS
UPDATE users SET handle = 'ffuentesp', updated_at = '2021-07-05 16:26:00'
where id = 6;

select * from users;