--  1) Crear una base de datos con nombre “Posts”.
-- ****************************************************
-- CREATE DATABASE posts;

--  2) Crear una tabla “post”, con los atributos id, nombre de usuario, fecha de creación, contenido y descripción.
-- ****************************************************************************************************************

CREATE TABLE post (
  id_post SERIAL UNIQUE PRIMARY KEY ,
  nombre_usuario VARCHAR(25) NOT NULL,
  fecha_de_creacion DATE NOT NULL,
  contenido VARCHAR(500) NOT NULL,
  descripcion VARCHAR(140) NOT NULL
  );


-- 3)Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
-- ****************************************************************************
-- INSERT INTO post (nombre_usuario, fecha_de_creacion, contenido, descripcion)
-- VALUES 
-- ('Pamela', '25-02-2022','Lorem ipsum dolor sit amet','Lorem Ipsum UNO'),
-- ('Pamela', '26-02-2022','Lorem ipsum dolor sit amet','Lorem Ipsum DOS'),
-- ('Carlos', '26-02-2022','Lorem ipsum dolor sit amet','Lorem Ipsum UNO');

-- 4. Modificar la tabla post, agregando la columna título.
-- ******************************************************
-- ALTER TABLE post
-- ADD titulo VARCHAR (25);


-- 5. Agregar título a las publicaciones ya ingresadas.
-- Agrego Titulo solo a post Pamela
-- ******************************************************
-- UPDATE post 
-- SET titulo ='Lorem Title Pamela'
-- WHERE nombre_usuario='Pamela';

-- -- Agrego Titulo solo a post Carlos
-- UPDATE post  
-- SET titulo='Lorem Title Carlos'
-- WHERE nombre_usuario='Carlos';

--   5.1 ) Despues de agregar los registros , se agrega una CONSTRAINT
--   , esa restriccion seria NOT NULL
--   ********************************************************************
-- ALTER TABLE post ALTER COLUMN titulo SET NOT NULL;


-- 6. Insertar 2 post para el usuario "Pedro".
-- ******************************************************
-- INSERT INTO post (nombre_usuario, fecha_de_creacion, contenido, descripcion, titulo)
-- VALUES
-- ('Pedro','24-02-2022', 'Lorem ipsum dolor sit amet', 'Lorem Ipsum UNO', 'Lorem Title Pedro'),
-- ('Pedro','25-02-2022', 'Lorem ipsum dolor sit amet', 'Lorem Ipsum DOS', 'Lorem Title Pedro');

-- 7. Eliminar el post de Carlos.
-- ******************************************************
-- DELETE FROM post
-- WHERE nombre_usuario='Carlos';


--  8. Ingresar un nuevo post para el usuario "Carlos"
-- --  ******************************************************
-- INSERT INTO post (nombre_usuario, fecha_de_creacion, contenido, descripcion, titulo)
-- VALUES ('Carlos','26-02-2022', 'Lorem ipsum dolor sit amet', 'Lorem Ipsum NEW UNO', 'Lorem Title New Carlos');


-- PARTE 2
-- 1. Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de
-- creación y contenido, que se relacione con la tabla posts.
--  **********************************************************************************

-- CREATE TABLE comentarios (
--    id_comentarios SERIAL UNIQUE PRIMARY KEY,
--    fecha_hora_de_creacion TIMESTAMP NOT NULL,
--    contenido_comentarios VARCHAR (500) NOT NULL,
--    id_post SERIAL NOT NULL,
--    FOREIGN KEY (id_post) REFERENCES post(id_post)
-- );


-- 2. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos".  (id Pamella =1, id Carlos =6 )
--  **********************************************************************************
-- INSERT INTO comentarios (fecha_hora_de_creacion,contenido_comentarios,id_post)
-- VALUES
-- ('25-02-2022 18:01:00', 'Comentario UNO Pamela', 1),
-- ('26-02-2022 18:02:00', 'Comentario DOS Pamela', 1);


-- INSERT INTO comentarios (fecha_hora_de_creacion,contenido_comentarios,id_post)
-- VALUES
-- ('23-02-2022 15:01:00','Comentario UNO Carlos',6),
-- ('24-02-2022 15:02:00','Comentario DOS Carlos',6),
-- ('25-02-2022 15:03:00','Comentario TRES Carlos',6),
-- ('26-02-2022 15:04:00','Comentario CUATRO Carlos',6);

-- 3. Crear un nuevo post para "Margarita"
--  **********************************************************************************
-- INSERT INTO post (nombre_usuario, fecha_de_creacion, contenido, descripcion, titulo)
-- VALUES
-- ('Margarita','23-02-2022', 'Lorem ipsum dolor sit amet', 'Lorem Ipsum UNO', 'Lorem Title Margarita');



-- 4. Ingresar 5 comentarios para el post de Margarita
--  **********************************************************************************
-- INSERT INTO comentarios (fecha_hora_de_creacion,contenido_comentarios,id_post)
-- VALUES
-- ('21-02-2022 17:01:00','Comentario UNO Margarita',7),
-- ('22-02-2022 17:02:00','Comentario DOS Margarita',7),
-- ('23-02-2022 17:03:00','Comentario TRES Margarita',7),
-- ('24-02-2022 17:04:00','Comentario CUATRO Margarita',7),
-- ('25-02-2022 17:05:00','Comentario CINCO Margarita',7);

-- RELACIONANDO Tabla post con Tabla comentarios
--  **********************************************************************************
-- SELECT post.nombre_usuario AS Usuario, post.titulo AS TITULO, post.fecha_de_creacion AS Fecha,
-- comentarios.contenido_comentarios AS Comentarios, comentarios.fecha_hora_de_creacion AS Creacion
-- FROM post, comentarios
-- WHERE post.id_post = comentarios.id_post;

