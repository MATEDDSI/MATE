CREATE TABLE Jugador (
	id integer PRIMARY KEY,
	nombre text NOT NULL
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
	idJugador integer,
	idPartida integer,
	puntuacion integer,
	fecha text,
	PRIMARY KEY (idJugador, idPartida),
	FOREIGN KEY (idJugador) REFERENCES Jugador(id),
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
	nombreAtributo text,
	valor text,
	PRIMARY KEY (idPartida, nombreAtributo),
	FOREIGN KEY (idPartida) REFERENCES Partida(id),
	FOREIGN KEY (nombreAtributo) REFERENCES Atributo(nombre)
);
