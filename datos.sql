INSERT INTO Juego (nombre) VALUES ('Hearthstone'), ('Pokemon'), ('Atletismo');

INSERT INTO Atributo (nombre, tipo) VALUES ('numero', 'int'), ('primero', 'string'), ('prueba', 'string'), ('segundo','string'), ('Npociones', 'int'), ('Neters', 'int');

INSERT INTO tiene (nombreJuego, nombreAtributo)
VALUES ('Hearthstone', 'numero'), ('Pokemon', 'primero'), ('Pokemon', 'segundo'),('Pokemon', 'Neters'),('Pokemon', 'Npociones'), ('Atletismo', 'prueba');


INSERT INTO Jugador (nombre) VALUES ('Maria'), ('Lucia'), ('Paco');

INSERT INTO Partida (id) VALUES (0), (1), (2), (3), (4), (5), (6);

INSERT INTO Pertenece (idPartida, nombreJuego)
VALUES (0, 'Pokemon'), (1, 'Hearthstone'), (2, 'Pokemon'), (3, 'Atletismo'), (4, 'Pokemon');

INSERT INTO juega (nombreJugador, idPartida, puntuacion, fecha)
VALUES ('Maria', 0, 0, '01/12/2017'), ('Maria', 1, 1, '03/12/2017'), ('Maria', 2, 2, '05/12/2017'), ('Maria', 4, 3, '10/12/2017'), ('Maria', 5, 3, '13/12/2017');

INSERT INTO juega (nombreJugador, idPartida, puntuacion, fecha)
VALUES ('Lucia', 0, 1, '01/12/2017'), ('Lucia', 3, 40, '07/12/2017'), ('Lucia', 4, 2, '10/12/2017'),
('Lucia', 5, 6, '13/12/2017'), ('Lucia', 6, 3, '16/12/2017');

INSERT INTO juega (nombreJugador, idPartida, puntuacion, fecha)
VALUES ('Paco', 1, 0, '03/12/2017'), ('Paco', 2, 2, '05/12/2017'), ('Paco', 4, 1, '10/12/2017'),
('Paco', 6, 4, '16/12/2017');


INSERT INTO Rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (0, 'Maria', 'primero', 'pikachu'),
(0, 'Maria', 'Npociones', '0'),
(1, 'Maria', 'numero', 20),
(2, 'Maria', 'primero', 'charmander'),
(2, 'Maria', 'Npociones', '7'),
(2, 'Maria', 'Neters', '3'),
(2, 'Maria', 'segundo', 'charmeleon'),
(4, 'Maria', 'primero', 'charmander'),
(4, 'Maria', 'Npociones', '4'),
(4, 'Maria', 'Neters', '2'),
(4, 'Maria', 'segundo', 'charmeleon'),
(5, 'Maria', 'numero', 30);


INSERT INTO Rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (0, 'Lucia', 'primero', 'bulbasaur'),
(0, 'Lucia', 'Npociones', '5'),
(3, 'Lucia', 'prueba', '100m'),
(4, 'Lucia', 'primero', 'pikachu'),
(4, 'Lucia', 'Npociones', '2'),
(4, 'Lucia', 'Neters', '9'),
(4, 'Lucia', 'segundo', 'raichu'),
(5, 'Lucia', 'numero', 35),
(6, 'Lucia', 'numero', 25);


INSERT INTO Rellena (idPartida, nombreJugador, nombreAtributo, valor)
VALUES (1, 'Paco', 'numero', 15),
(2, 'Paco', 'primero', 'squirtle'),
(2, 'Paco', 'Npociones', '2'),
(4, 'Paco', 'Npociones', '6'),
(4, 'Paco', 'primero', 'bulbasaur'),
(6, 'Paco', 'numero', 33);

INSERT INTO Usuario (nombre, password)
VALUES ("admin", "admin");
