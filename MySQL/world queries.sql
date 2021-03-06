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

-- 5)
-- ¿Qué consulta haría para obtener todos los países con un área de superficie inferior a 501 y una población superior a 100,000?

select countries.name as País, countries.surface_area as Superficie, countries.population as Población from countries
where surface_area > 501 and population > 100000
order by surface_area desc;

-- 6)
-- ¿Qué consulta harías para obtener países con solo Monarquía Constitucional con un capital superior a 200
-- y una esperanza de vida superior a 75 años?

select countries.government_form from countries;

select countries.name, countries.capital, countries.government_form from countries
where countries.capital > 200 and countries.government_form = 'Constitutional Monarchy' and countries.life_expectancy > 75;

-- 7)
-- ¿Qué consulta harías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires
-- y tener una población superior a 500,000? La consulta debe devolver el nombre del país, el nombre de la ciudad,
-- el distrito y la población.

select cities.name from cities;
select * from countries; -- Argentina id = 9

select cities.name, cities.population from cities
JOIN countries ON countries.id = cities.country_id
where countries.id = 9 and cities.population > 500000
order by cities.population desc;

-- 8)
-- ¿Qué consulta harías para resumir el número de países en cada región?
-- La consulta debe mostrar el nombre de la región y el número de países.
-- Además, la consulta debe organizar el resultado por el número de países en orden descendente.

select countries.region as 'Nombre de la Región', count(countries.name) as 'Número de Países' from countries
group by countries.region
order by count(countries.name) desc;