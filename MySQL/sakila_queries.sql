use sakila;

-- 1)
-- ¿Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312?
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

select * from customer;
select * from address;

select * from address
where city_id = 312;

select first_name as Nombre, last_name as Apellido, email, address as Dirección from customer
JOIN address ON address.address_id = customer.address_id
-- where address.address_id in (256, 517)
where city_id = 312;

-- 2)
-- ¿Qué consulta harías para obtener todas las películas de comedia?
-- Su consulta debe devolver el título de la película, la descripción, 
-- el año de estreno, la calificación, las características especiales y el género (categoría).

select * from category;
select * from film;

select title as Titulo, description as Descripcion, release_year as 'Año de Estreno', rating as Calificación, special_features as Características_Especiales, category.name Género from film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
where category.category_id = 5;

-- 3)
-- ¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5?
-- Su consulta debe devolver la identificación del actor, el nombre del actor,
-- el título de la película, la descripción y el año de lanzamiento.

select actor.actor_id as Identificación, actor.first_name as Nombre, film.title as Título, film.description as Descripción, film.release_year as 'Año de lanzamiento'
from actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
where actor.actor_id = 5;

-- 4)
-- ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y
-- dentro de estas ciudades (1, 42, 312 y 459)? Su consulta debe devolver el nombre,
-- apellido, correo electrónico y dirección del cliente.

select first_name as Nombre, last_name as Apellido, email, address as Dirección from customer
JOIN address ON address.address_id = customer.address_id
JOIN city ON city.city_id = address.city_id
where store_id = 1 and city.city_id in (1,42,312,459);

-- 5)
-- ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G"
-- y "característica especial = detrás de escena", unidas por actor_id = 15?
-- Su consulta debe devolver el título de la película, la descripción, el año de lanzamiento,
-- la calificación y la función especial. Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'.

select title as Título, description as Descripción, release_year as 'Año de Lanzamiento', rating as Calificación,
special_features as 'Característica especial' from film_actor
JOIN film ON film.film_id = film_actor.film_id
JOIN actor ON actor.actor_id = film_actor.actor_id
where film.special_features = 'Behind the Scenes' and film.rating = 'G'
group by actor.actor_id = 15;


-- 6)
-- ¿Qué consulta harías para obtener todos los actores que se unieron en el film_id = 369?
-- Su consulta debe devolver film_id, title, actor_id y actor_name.

select film.film_id as ID, film.title as Título, actor.actor_id as 'Actor ID', CONCAT(actor.first_name, ' ', actor.last_name) as Nombre from film
JOIN film_actor ON film_actor.film_id = film.film_id
JOIN actor ON actor.actor_id = film_actor.actor_id
where film.film_id = 369;

-- 7)
-- ¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de alquiler de 2.99?
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación,
-- las características especiales y el género (categoría).

select film.title as Título, film.description as Descripción, film.release_year as 'Año de estreno', film.rating as Calificación,
film.special_features as 'Características Especiales', rental_rate from film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
where film.rental_rate = 2.99;

-- 8)
-- ¿Qué consulta harías para obtener todas las películas de acción a las que se une SANDRA KILMER?
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación,
-- las características especiales, el género (categoría) y el nombre y apellido del actor.

select film.title as Título, film.description as Description, film.release_year as Año, film.rating as Calificación,
film.special_features as 'Características Especiales', category.name as Género, actor.actor_id, actor.first_name as Nombre, 
actor.last_name as Apellido from actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
where actor.first_name = 'SANDRA' and actor.last_name = 'KILMER' and category.name = 'Action';