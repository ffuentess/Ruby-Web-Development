USE world;
-- 1)
-- ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma.
-- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente.

select language, id from languages;
-- Sloveno id = 377

select * from languages
where language = 'Slovene';

select name, id from countries 
where id in (16,96,107,200);

select name, language, percentage from languages lan
JOIN countries ON countries.id = lan.country_id
-- where countries.id in (16,96,107,200) and 
where lan.language = 'Slovene'
ORDER BY percentage DESC;

-- 2)
-- ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país?
-- Su consulta debe devolver el nombre del país y el número total de ciudades.
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. 
select countries.name País, count(ct.name) Ciudad from cities ct
JOIN countries ON countries.id = ct.country_id
group by País
order by count(ct.name) desc;

-- 3)
-- ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000
-- Tu consulta debe organizar el resultado por población en orden descendente.
select * from countries
where name = 'Mexico';

select cities.name Nombre, cities.population Población from cities
where country_id = 136 and population > 500000
order by population desc;

-- 4)
-- ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje superior al 89%?
-- Tu consulta debe organizar el resultado por porcentaje en orden descendente.
select countries.name País, language Idioma, percentage Porcentaje from languages
JOIN countries ON countries.id = languages.country_id
where percentage > 89
order by percentage desc;