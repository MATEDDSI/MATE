INSERT INTO Juego (nombre) VALUES ('Hearthstone'), ('Pokemon'), ('Atletismo');

INSERT INTO Atributo (nombre, tipo) VALUES ('numero de cartas', 'int'), ('primer pokemon', 'string'), ('tipo mas usado', 'string'), ('prueba', 'string');

INSERT INTO tiene (nombreJuego, nombreAtributo)
VALUES ('Hearthstone', 'numero de cartas'), ('Pokemon', 'primer pokemon'), ('Pokemon', 'tipo mas usado'),('Atletismo', 'prueba');


INSERT INTO Jugador (nombre) VALUES ('Maria'), ('Lucia'), ('Paco');

INSERT INTO Partida (id) VALUES (0), (1), (2), (3), (4);

INSERT INTO Pertenece (idPartida, nombreJuego)
VALUES (0, 'Pokemon'), (1, 'Hearthstone'), (2, 'Pokemon'), (3, 'Atletismo'), (4, 'Pokemon'), (5, 'Hearthstone'), (6, 'Hearthstone');

INSERT INTO juega (nombreJugador, idPartida, puntuacion, fecha)
VALUES ('Maria', 0, 0, '01/12/2017'), ('Maria', 1, 1, '03/12/2017'), ('Maria', 2, 2, '05/12/2017'), ('Maria', 4, 3, '10/12/2017'), ('Maria', 5, 6, '13/12/2017');

INSERT INTO juega (nombreJugador, idPartida, puntuacion, fecha)
VALUES ('Lucia', 0, 1, '01/12/2017'), ('Lucia', 3, 40, '07/12/2017'), ('Lucia', 4, 2, '10/12/2017'),
('Lucia', 5, 3, '13/12/2017'), ('Lucia', 6, 4, '16/12/2017');

INSERT INTO juega (nombreJugador, idPartida, puntuacion, fecha)
VALUES ('Paco', 1, 0, '03/12/2017'), ('Paco', 2, 2, '05/12/2017'), ('Paco', 4, 1, '10/12/2017'),
('Paco', 6, 3, '16/12/2017');


INSERT INTO rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (0, 'Maria', 'primer pokemon', 'pikachu'),
(0, 'Maria', 'tipo mas usado', 'roca'),
(1, 'Maria', 'numero de cartas', 20),
(2, 'Maria', 'primer pokemon', 'charmander'),
(2, 'Maria', 'tipo mas usado', 'electrico'),
(4, 'Maria', 'primer pokemon', 'charmander'),
(4, 'Maria', 'tipo mas usado', 'agua'),
(5, 'Maria', 'numero de cartas', 30);


INSERT INTO rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (0, 'Lucia', 'primer pokemon', 'bulbasaur'),
(0, 'Lucia', 'tipo mas usado', 'roca'),
(3, 'Lucia', 'prueba', '100m'),
(4, 'Lucia', 'primer pokemon', 'pikachu'),
(4, 'Lucia', 'tipo mas usado', 'fuego'),
(5, 'Lucia', 'numero de cartas', 35),
(6, 'Lucia', 'numero de cartas', 25);


INSERT INTO rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (1, 'Paco', 'numero de cartas', 15),
(2, 'Paco', 'primer', 'squirtle'),
(2, 'Paco', 'tipo mas usado', 'planta'),
(4, 'Paco', 'primer', 'bulbasaur'),
(4, 'Paco', 'tipo mas usado', 'roca'),
(6, 'Paco', 'numero de cartas', 33);
