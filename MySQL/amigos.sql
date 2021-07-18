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




-- Descubre quién tiene más amigos y devuelve el recuento de sus amigos.
select users.first_name as Nombre, count(friendships.user_id) as 'Número de Amigos' from users
LEFT JOIN friendships ON friendships.user_id = users.id
INNER JOIN users as users2 ON users2.id = friendships.user_id
where users.id = 1;

-- Crea un nuevo usuario y hazlos amigos de Eli Byers, Kermit The Frog y Marky Mark.
