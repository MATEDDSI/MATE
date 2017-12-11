INSERT INTO Juego (nombre) VALUES ('Heartstone'), ('Pokemon');

INSERT INTO Atributo (nombre, tipo) VALUES ('numero de cartas', 'int'), ('primer pokemon', 'string');

INSERT INTO tiene (nombreJuego, nombreAtributo)
VALUES ('Heartstone', 'numero de cartas'), ('Pokemon', 'primer pokemon');


INSERT INTO Jugador (nombre) VALUES ('Maria'), ('Lucia'), ('Paco');

INSERT INTO Partida (id) VALUES (0), (1), (2), (3), (4);

INSERT INTO Pertenece (idPartida, nombreJuego)
VALUES (0, 'Pokemon'), (1, 'Heartstone'), (2, 'Pokemon'), (3, 'Heartstone'), (4, 'Pokemon');

INSERT INTO juega (nombreJugador, idPartida, puntuacion)
VALUES ('Maria', 0, 0), ('Maria', 1, 1), ('Maria', 2, 2), ('Maria', 4, 3);

INSERT INTO juega (nombreJugador, idPartida, puntuacion)
VALUES ('Lucia', 0, 1), ('Lucia', 3, 0), ('Lucia', 4, 2);

INSERT INTO juega (nombreJugador, idPartida, puntuacion)
VALUES ('Paco', 1, 0), ('Paco', 2, 2), ('Paco', 4, 1);


INSERT INTO rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (0, 'Maria', 'primer pokemon', 'pikachu'),
(1, 'Maria', 'numero de cartas', 20),
(2, 'Maria', 'primer pokemon', 'charmander'),
(4, 'Maria', 'primer pokemon', 'charmander');


INSERT INTO rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (0, 'Lucia', 'primer pokemon', 'bulbasaur'),
(3, 'Lucia', 'numero de cartas', 40),
(4, 'Lucia', 'primer pokemon', 'pikachu');


INSERT INTO rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (1, 'Paco', 'numero de cartas', 15),
(2, 'Paco', 'primer pokemon', 'squirtle'),
(4, 'Paco', 'primer pokemon', 'bulbasaur');
