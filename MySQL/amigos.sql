use friendship;

select * from users;
select * from friendships;

select users.id, users.first_name as Nombre, users.last_name as Apellido, users2.first_name as 'Nombre Amigo', users2.last_name as 'Apellido Amigo'
from users
LEFT JOIN friendships ON friendships.user_id = users.id
INNER JOIN users as users2 ON users2.id = friendships.friend_id;

-- Devuelva a todos los usuarios que son amigos de Kermit, asegúrese de que sus nombres se muestren en los resultados.

select users.id, users.first_name as Nombre, users.last_name as Apellido, users2.first_name as 'Nombre Amigo', users2.last_name as 'Apellido Amigo'
from users
LEFT JOIN friendships ON friendships.user_id = users.id
INNER JOIN users as users2 ON users2.id = friendships.friend_id
where friend_id = 4;

-- Devuelve el recuento de todas las amistades.
select count(friend_id) as 'Número de amistades' from friendships;

-- Descubre quién tiene más amigos y devuelve el recuento de sus amigos.
select users.first_name as Nombre, count(friendships.user_id) as 'Número de Amigos' from users
LEFT JOIN friendships ON friendships.user_id = users.id
INNER JOIN users as users2 ON users2.id = friendships.user_id
;

-- Crea un nuevo usuario y hazlos amigos de Eli Byers, Kermit The Frog y Marky Mark.
insert into users (id, first_name, last_name, created_at)
values (7, "Felipe", "Fuentes", '2021-07-21\'22:31:00');
insert into friendships (id, user_id, friend_id)
values (7, 7, 2);
insert into friendships (id, user_id, friend_id)
values (8, 7, 4);
insert into friendships (id, user_id, friend_id)
values (9, 7, 5);

-- Devuelve a los amigos de Eli en orden alfabético
select first_name, last_name, friend_id from friendships
join users on users.id = friendships.user_id
-- join users on users.id = friendships.friend_id
where friend_id = 2 or user_id = 2
order by last_name ;

-- Eliminar a Marky Mark de los amigos de Eli.
delete from friendships
where user_id = 2 and friend_id = 5;

-- Devuelve todas las amistades, mostrando solo el nombre y apellido de ambos amigos
select users.id, users.first_name as Nombre, users.last_name as Apellido, users2.first_name as 'Nombre Amigo', users2.last_name as 'Apellido Amigo'
from users
LEFT JOIN friendships ON friendships.user_id = users.id
INNER JOIN users as users2 ON users2.id = friendships.friend_id;