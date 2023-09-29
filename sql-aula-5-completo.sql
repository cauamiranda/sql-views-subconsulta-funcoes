CREATE VIEW vw_cursos_por_categoria AS SELECT categoria.nome AS categoria,
		 COUNT (curso.id) AS numero_cursos
	FROM categoria
	JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;


SELECT * FROM vw_cursos_por_categoria
	ORDER BY 2 DESC;

CREATE VIEW vw_cursos_programacao AS
	SELECT curso.nome 
	  FROM curso
	  JOIN categoria ON categoria.id = curso.categoria_id
     WHERE categoria.nome = 'Programação'
	 
SELECT * FROM vw_cursos_programacao

SELECT categoria.id AS categoria_id, vw_cursos_por_categoria.*
    FROM vw_cursos_por_categoria
    JOIN categoria ON categoria.nome = vw_cursos_por_categoria.categoria;
