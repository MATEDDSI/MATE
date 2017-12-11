CREATE TABLE Jugador (
	nombre text PRIMARY KEY
);

CREATE TABLE Partida (
	id integer PRIMARY KEY
);

CREATE TABLE Juego (
	nombre text PRIMARY KEY
);

CREATE TABLE Estadistica (
	id integer PRIMARY KEY,
	imagen text NOT NULL
);

CREATE TABLE Atributo (
	nombre text PRIMARY KEY,
	tipo text NOT NULL
);

CREATE TABLE Juega(
	nombreJugador integer,
	idPartida integer,
	puntuacion integer,
	fecha text,
	PRIMARY KEY (nombreJugador, idPartida),
	FOREIGN KEY (nombreJugador) REFERENCES Jugador(nombre),
	FOREIGN KEY (idPartida) REFERENCES Partida(id)
);

CREATE TABLE Pertenece (
	idPartida integer PRIMARY KEY,
	nombreJuego text NOT NULL,
	FOREIGN KEY (idPartida) REFERENCES Partida(id),
	FOREIGN KEY (nombreJuego) REFERENCES Juego(nombre)
);

CREATE TABLE Resume (
	idEstadistica PRIMARY KEY,
	nombreJuego text NOT NULL,
	FOREIGN KEY (idEstadistica) REFERENCES Estadistica(id),
	FOREIGN KEY (nombreJuego) REFERENCES Juego(nombre)
);

CREATE TABLE Tiene (
	nombreJuego text,
	nombreAtributo text,
	PRIMARY KEY (nombreJuego, nombreAtributo),
	FOREIGN KEY (nombreJuego) REFERENCES Juego(nombre),
	FOREIGN KEY (nombreAtributo) REFERENCES Atributo(nombre)
);

CREATE TABLE Rellena (
	idPartida integer,
	nombreJugador text,
	nombreAtributo text,
	valor text NOT NULL,
	PRIMARY KEY (idPartida, nombreJugador, nombreAtributo),
	FOREIGN KEY (idPartida) REFERENCES juega(idPartida),
	FOREIGN KEY (nombreJugador) REFERENCES juega(nombreJugador),
	FOREIGN KEY (nombreAtributo) REFERENCES Atributo(nombre)
);

CREATE TABLE Usuario (
	nombre text PRIMARY KEY,
	password text NOT NULL
);

CREATE TABLE comenta (
	nombreUsuario text,
	idPartida integer,
	PRIMARY KEY (nombreUsuario, idPartida),
	FOREIGN KEY (nombreUsuario) REFERENCES Usuario(nombre),
	FOREIGN KEY (idPartida) REFERENCES Partida(id)
);

CREATE TABLE Comentario (
	id integer PRIMARY KEY,
	comentario text NOT NULL
);

CREATE TABLE escribe (
	idComentario integer PRIMARY KEY,
	nombreUsuario text NOT NULL,
	idPartida integer NOT NULL,
	FOREIGN KEY (idComentario) REFERENCES Comentario(id),
	FOREIGN KEY (nombreUsuario) REFERENCES comenta(nombreUsuario),
	FOREIGN KEY (idPartida) REFERENCES comenta(idPartida)
);

CREATE TABLE tiene_en_cache (
	idEstadistica integer PRIMARY KEY,
	idUsuario integer NOT NULL,
	FOREIGN KEY (idUsuario) REFERENCES Usuario(id)
);
