# OPERACIONES-EN-UNA-TABLA---LTG
<h3>TABLA POST</h3>
<h4>SELEC*FROM post;</h4>
<a href="https://ibb.co/JQMZwVV"><img src="https://i.ibb.co/16wct11/Snag-26d30f6.png" alt="Snag-26d30f6" border="0"></a>

<h3>TABLA COMENTARIOS</h3>
<h4>SELEC*FROM comentarios;</h4>
  <a href="https://imgbb.com/"><img src="https://i.ibb.co/gyFX4ZW/Snag-26d3943.png" alt="Snag-26d3943" border="0"></a>
  
  <h3>RELACIONANDO Tabla post con Tabla comentarios</h3>
    <h4>SELECT post.nombre_usuario AS Usuario, post.titulo AS TITULO, post.fecha_de_creacion AS Fecha,
        comentarios.contenido_comentarios AS Comentarios, comentarios.fecha_hora_de_creacion AS Creacion
        FROM post, comentarios
        WHERE post.id_post = comentarios.id_post;
    </h4>
    <a href="https://ibb.co/zS3Q20k"><img src="https://i.ibb.co/2jzWMfb/Snag-26d252f.png" alt="Snag-26d252f" border="0"></a>
