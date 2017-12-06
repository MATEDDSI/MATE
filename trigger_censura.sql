CREATE TRIGGER censura_comentario_insert BEFORE INSERT ON Comentario
BEGIN
	SELECT CASE WHEN NEW.comentario LIKE "%capullo%" THEN
		RAISE (
			ABORT,
			"El comentario no pasa la censura"
		)
	END;
END;

CREATE TRIGGER censura_comentario_update BEFORE UPDATE ON Comentario
BEGIN
	SELECT CASE WHEN NEW.comentario LIKE "%capullo%" THEN
		RAISE (
			ABORT,
			"El comentario no pasa la censura"
		)
	END;
END;
