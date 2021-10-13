CREATE TABLE users (
    id  INT(10) PRIMARY KEY AUTO_INCREMENT,
    names VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO users
VALUES (DEFAULT, "Diego", "diego@gmail.com"),
 (DEFAULT, "Juana", "Juana@gmail.com"),
 (DEFAULT, "Max",   "Max@gmail.com"),
 (DEFAULT, "Stephen","Stephen@gmail.com"),
 (DEFAULT, "Sarah", "Sarah@gmail.com"),
 (DEFAULT, "Zoe",   "Zoe@gmail.com"),
 (DEFAULT, "Charles","Charles@gmail.com"),
 (DEFAULT, "Michael", "Michael@gmail.com"),
 (DEFAULT, "Olivia", "Olivia@gmail.com"),
 (DEFAULT, "Elizabeth", "Elizabeth@gmail.com");


CREATE TABLE notes(
    id  INT(10) PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    descriptions TEXT NOT NULL,
    userId INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES users (id)
);

INSERT INTO notes
VALUES (DEFAULT, "Scream 5", NOW() , NOW(), "Después de 10 años, la franquicia de terror está de regreso", 9),
(DEFAULT, "Adele es tendencia", NOW() , NOW() , "Apenas unos segundos de la nueva canción de Adele posteados en sus redes sociales fueron suficientes para causar furor y ser tendencia", 6),
(DEFAULT, "Scaloni: Estos jugadores no nos van a dejar tirados", NOW() , NOW(), "Estos jugadores son las representación de ellos en la cancha, más allá de que se puede ganar o perder", 1),
(DEFAULT, "10 años sin Steve Jobs: el legado de un irremplazable", NOW() , NOW() , "El creador de Apple moría un 5 de octubre de 2011. Un distinto en la industria tech", 4),
(DEFAULT, "¿El auge del fútbol en China está en declive?",NOW() , NOW() , "Los equipos chinos se lanzaron a la ambición y al gasto excesivo en un audaz intento de remodelar su deporte. Ahora ni siquiera juegan", 1),
(DEFAULT, "Un diurético reduciría el riesgo de padecer Alzheimer", NOW() , NOW() , "Se trata del fármaco bumetanida. En EEUU, se encontró que los pacientes que lo consumen por otras condiciones tienen menos posibilidades de desarrollar la enfermedad. Las claves del estudio", 7),
(DEFAULT, "Los mejores trucos para personalizar la interfaz del nuevo Windows 11",NOW() , NOW(),"La evolución del famoso sistema operativo de Microsoft cuenta con varios ‘hacks’ para navegar de manera sencilla, Infobae le enseña algunos de estos", 4),
(DEFAULT, "Amor y redes sociales: exhibición, cosificación y celos", NOW() , NOW() , "El especialista en Filosofía de la Universidad de Santiago de Compostela estudió el impacto de “la cultura de mostrar” en las relaciones afectivas", 5),
(DEFAULT, "El estilo cambia de paradigma: la incomodidad ya no está de moda", NOW(), NOW(), "Formas de producción sustentable, variedad de talles, ropa agénero, fusión de estilos. Cuáles con los mayores cambios de la moda que están marcando tendencia, en la voz de una especialista en la sociología de la moda", 10),
(DEFAULT, "El país recibió casi un millón de vacunas de AstraZeneca donadas por España", NOW() , NOW(), "Es la tercera partida contra el coronavirus que arriba desde la nación ibérica a través del mecanismo COVAX", 2);


CREATE TABLE categories(
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(100) NOT NULL
);

INSERT INTO categories
VALUES (DEFAULT, "Cine"),
 (DEFAULT, "Música"),
 (DEFAULT, "Deportes"),
 (DEFAULT, "Política"),
 (DEFAULT, "Tecnología"),
 (DEFAULT, "Salud"),
 (DEFAULT, "Turismo"),
 (DEFAULT, "Cultura"),
 (DEFAULT, "Moda"),
 (DEFAULT, "Economía");


CREATE TABLE notes_categories(
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    noteId INT NOT NULL,
    FOREIGN KEY (noteId) REFERENCES notes (id),
    categoryId INT NOT NULL,
    FOREIGN KEY (categoryId) REFERENCES categories (id)
)