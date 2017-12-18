INSERT INTO Juego (nombre) VALUES ('Hearthstone'), ('Pokemon'), ('Atletismo');

INSERT INTO Atributo (nombre, tipo) VALUES ('numero de cartas', 'int'), ('primero', 'string'), ('prueba', 'string');

INSERT INTO tiene (nombreJuego, nombreAtributo)
VALUES ('Hearthstone', 'numero de cartas'), ('Pokemon', 'primero'), ('Atletismo', 'prueba');


INSERT INTO Jugador (nombre) VALUES ('Maria'), ('Lucia'), ('Paco');

INSERT INTO Partida (id) VALUES (0), (1), (2), (3), (4);

INSERT INTO Pertenece (idPartida, nombreJuego)
VALUES (0, 'Pokemon'), (1, 'Hearthstone'), (2, 'Pokemon'), (3, 'Atletismo'), (4, 'Pokemon');

INSERT INTO juega (nombreJugador, idPartida, puntuacion, fecha)
VALUES ('Maria', 0, 0, '01/12/2017'), ('Maria', 1, 1, '03/12/2017'), ('Maria', 2, 2, '05/12/2017'), ('Maria', 4, 3, '10/12/2017');

INSERT INTO juega (nombreJugador, idPartida, puntuacion, fecha)
VALUES ('Lucia', 0, 1, '01/12/2017'), ('Lucia', 3, 40, '07/12/2017'), ('Lucia', 4, 2, '10/12/2017');

INSERT INTO juega (nombreJugador, idPartida, puntuacion, fecha)
VALUES ('Paco', 1, 0, '03/12/2017'), ('Paco', 2, 2, '05/12/2017'), ('Paco', 4, 1, '10/12/2017');


INSERT INTO rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (0, 'Maria', 'primero', 'pikachu'),
(1, 'Maria', 'numero de cartas', 20),
(2, 'Maria', 'primero', 'charmander'),
(4, 'Maria', 'primero', 'charmander');


INSERT INTO rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (0, 'Lucia', 'primero', 'bulbasaur'),
(3, 'Lucia', 'prueba', '100m'),
(4, 'Lucia', 'primero', 'pikachu');


INSERT INTO rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (1, 'Paco', 'numero de cartas', 15),
(2, 'Paco', 'primer', 'squirtle'),
(4, 'Paco', 'primer', 'bulbasaur');
