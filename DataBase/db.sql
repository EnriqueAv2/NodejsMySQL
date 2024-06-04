CREATE DATABASE db;

USE db;
	
CREATE TABLE usuarios (
	ID_Usuario INT AUTO_INCREMENT PRIMARY KEY,
    Correo_Institucional_Usuario VARCHAR(50) UNIQUE NOT NULL,
    Correo_Alternativo_Usuario VARCHAR(50) UNIQUE,
	Contraseña_Usuario VARCHAR(50) NOT NULL
);

insert into usuarios(Correo_Institucional_Usuario,Correo_Alternativo_Usuario,Contraseña_Usuario) VALUES
('jsnachezv2001@alumno.ipn.mx','jairsanchez198@gmail','contraseña'),
('alfonrt2004@alumno.ipn.mx','alfon2004@gmail.com','reptic'),
('rubipe2000@alumno.ipn.mx','rubi2000@gmail.com','12345'),
('perezav1999@alumno.ipn.mx','perezav19@gmail.com','567889'),
('albert2001@alumno.ipn.mx','albert20@gmail.com','653278'),
('denimz2003@alumno.ipn.mx','denimz2003@gmail.com','678943'),
('rogelmz1997@alumno.ipn.mx','rogemz199@gmail.com','56432'),
('saul2002@alumno.ipn.mx','saul202@gmail.com','64875167'),
('jcarlosap2004@alumno.ipn.mx','jcarlos24@gmail.com','4687434'),
('britafp2004@alumno.ipn.mx','brifp40@gmail.com','843576467');

CREATE TABLE Comentario (
	ID_Comentario INT AUTO_INCREMENT PRIMARY KEY,
    Comentario VARCHAR(1000) NOT NULL
);

CREATE TABLE Comentarios(
ID_Comentarios INT AUTO_INCREMENT PRIMARY KEY,
Fecha_Comentario DATE NOT NULL,
FK_Usuario_Comentarios INT,
FOREIGN KEY (FK_Usuario_Comentarios) REFERENCES usuarios(ID_Usuario),
FK_Comentario INT,
FOREIGN KEY (FK_Comentario) REFERENCES Comentario(ID_Comentario)
);


CREATE TABLE Calificacion (
	ID_Calificacion INT PRIMARY KEY NOT NULL,
    Calificacion INT UNIQUE NOT NULL 
);

CREATE TABLE Calificaciones (
	ID_Calificaciones INT AUTO_INCREMENT PRIMARY KEY,
	FK_Usuario_Calificaciones INT,
    FOREIGN KEY (FK_Usuario_Calificaciones) REFERENCES usuarios(ID_Usuario),
	FK_Calificacion INT,
    FOREIGN KEY (FK_Calificacion) REFERENCES Calificacion(ID_Calificacion)
);


RENAME TABLE comentario to tvl_comentario;
RENAME TABLE calificacion to tvl_calificacion;



CREATE TABLE Materias (
	ID_Materia INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Materias VARCHAR(50) UNIQUE NOT NULL
);





CREATE TABLE docentes (
	ID_Docente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Docentes VARCHAR(20) NOT NULL,
    Apellido_Paterno_Docentes VARCHAR(20) NOT NULL,
    Apellido_Materno_Docentes VARCHAR(20),
    FK_Materia_Docentes INT,
    FOREIGN KEY (FK_Materia_Docentes) REFERENCES Materias(ID_Materia)
);



insert into docentes(Nombre_Docentes,Apellido_Paterno_Docentes,Apellido_Materno_Docentes) values
('Vera','Gonzalez','Medina'),
('Salvador Felipe','Diaz','Albarran'),
('Jose Juan','Ley ','Mandujano'),
('Jose Luis ','Villarreal','Aguirre'),
('Juan Gabriel','Martínez','López'),
('Pedro ','Morales','Vergara'),
('Xochitl','Cabrera','Rivas'),
('Rodolfo','Lopez','Gonzalez'),
('Santiago','Gonzalez','Lopez'),
('Irene ','Cubillos','Islas'),
('Edna Carla','Vasco','Mendez'),
('Froylan','Angel','Huerta'),
('Marisol','Hernandez','Lopez'),
('Lorena','Azuara','Perez'),
('Veronica','Salas','Jimenez'),
('Oscar','Cruz','García'),
('Jesus','Mora ','Jain'),
('Clarissa','Gonzalez','Acatitla'),
('Elsa ','Gonzalez','Paredes'),
('Maria Araceli','Moreno','Guzman'),
('Graciela Irene','Cervantes','Cabello'),
('Celsa Piedad','Santos','Jacome'),
('Citlalli','Flores','Martinez'),
('Jesus','Olivares','Mercado'),
('Francisco Javier','Benitez','Diaz'),
('Martha Elvia','Salazar','Galván'),
('Maribel','Rojo','Hernandez'),
('Irma Alicia','Amador','Zaragoza'),
('Julian Hugo','Aponte','Olaya'),
('Fernando David','Aquino','Salinas'),
('Amparo','Bañuelos','Duran'),
('Roberto Pedro','Galvan','De Sampedro'),
('Juan Gabriel','Martínez','Lopez'),
('Patricia','Cortés','Pineda'),
('Beatriz Eugenia','Corona ','Ramirez'),
('Sabas ','Flores','Ascencio'),
('Claudia','Azorín','Vega'),
('Roberto   ','Osornio','Soto'),
('Arturo','De La Cruz','Tellez'),
('Sandra Luz','Enriquez','Arreola'),
('Jessica','Valverde','Jimenez'),
('Juan Angel','Rodriguez','Gomez'),
('Jazmin','Ramirez','Hernandez'),
('Mario Antonio ','Muñoz','Guerrero'),
('Jesus','Rodríguez','Buendía'),
('Eliel','Carbajal','Quiroz'),
('Juan Francisco','Márquez','Rubio'),
('Orlando ','Vargas','Reyes'),
('Aldo','Hernandez','Suarez'),
('Anselmo','Angoa','Torres'),
('Jose Eduardo','Guzman','Rodriguez'),
('Adolfo Sabino','Ugalde','Licea'),
('Juan Jose','Cabrera','Tejeda'),
('Margarita','Martínez','Martinez'),
('Alejandro','Arcos','Pichardo'),
('Luis','Valles','Montañez'),
('Patricia','Rodriguez','Peralta'),
('Javier Fernando','Diaz','Rosas'),
('Teresa De Jesus','Monroy','Ostria'),
('Maria Juana','Vigueras','Bonilla'),
('Jazmin','Rodriguez','Hernandez'),
('Rosa Maria','Ramirez','Quintanar'),
('Claudio Augusto','Valdés','Galicia'),
('Carlos','De La Cruz','Alejo'),
('Carlos Alberto','Estrada','Arriaga'),
('Gonzalo Isaac','Duchén','Sánchez'),
('Marbella','Calvino','Gallardo'),
('Ricardo Israel','Calzada','Salas'),
('Juan Arturo ','Perez','Cebreros'),
('Braulio','Sanchez','Zamora'),
('Rogelio','Reyes','Reyes'),
('Carlos','Perez','Torres'),
('Pilar','Resenderiz','Colin'),
('Ricardo Israel','Calzada','Islas'),
('Luis Efren','Veloz','Ortiz'),
('Jesus','Mora','Jain'),
('Jesus','García','Ruíz'),
('Jose','Galvan','Chavez'),
('Jose Luis ','Bautista','Arias'),
('Adolfo  ','Rodriguez','Acosta'),
('Eduardo','Martínez','Corona'),
('Maria Alejandra','Martínez','Camargo'),
('María Elena','Mendiola','Medellín'),
('Clara','Cruz','Ramos'),
('Jose','Velazquez','Lopez'),
('Hayari Lizet','Cruz','Gonzalez'),
('Rosa Maria','Rodriguez','Quintanar'),
('Enrique','Escamilla','Hernández'),
('Daniel','Tapia','Sanchez'),
('José Antonio ','Loaiza','Brito'),
('Lidia','Prudente','Tixteco'),
('Raúl','Nuñez','Galindo'),
('Raymundo','Santana','Alquicira'),
('Leonor','Herrera','Resendiz'),
('Miguel Angel','Miranda','Hernandez'),
('Luis Carlos','Castro ','Madrid'),
('Gabriel ','Sanchez','Perez'),
('Eduardo','Vazquez','Fernandez'),
('Juan Gerardo','Avalos','Ochoa'),
('Carlos','Cortes','Bazan'),
('Pedro ','Guevara','Lopez'),
('Linda Karina','Toscano','Medina'),
('José  ','Portillo ','Portillo'),
('Luis Carlos','Castro','Madrid');

insert into materias(Nombre_Materias) values
('Calculo Diferencial'),
('FISICA CLASICA'),
('FUNDAMENTOS DE PROGRAMACION'),
('HUMANIDADES I INGENERIA, CIENCIA Y SOCIEDAD'),
('FUNDAMENTOS DE ALGEBRA'),
('QUIMICA BASICA'),
('CALCULO VECTORIAL'),
('ELECTRICIDAD Y MAGNETISMO'),
('PROGRAMACION ORIENTADA A OBJETOS'),
('HUMANIDADES II: LA COMUNICACION Y LA ING'),
('MATEMATICAS DISCRETAS'),
('ALGEBRA LINEAL'),
('ECUACIONES DIFERENCIALES'),
('CIRCUITOS DE C.A. Y C.D.'),
('ESTRUCTURA DE DATOS'),
('LENGUAJES DE BAJO NIVEL'),
('CIRCUITOS LOGICOS I'),
('HUMANIDADES III DESARROLLO HUMANO'),
('ANALISIS NUMERICO'),
('VARIABLE COMPLEJA Y ANALISIS DE FOURIER'),
('CIRCUITOS LOGICOS II'),
('ELECTRONICA ANALOGICA'),
('TEORIA DE AUTOMATAS'),
('HUMANIDADES IV:DES.PER.Y PROF.'),
('ANALISIS DE SEÑALES ANALOGICAS'),
('PROBABILIDAD Y ESTADISTICA'),
('ANALISIS DE ALGORITMOS'),
('COMPILADORES'),
('ORGANIZACION DE COMPUTADORAS'),
('HUMANIDADES V:EL HUM.FRENTE A LA GLOB.'),
('SISTEMAS OPERATIVOS'),
('ARQUITECTURA DE COMPUTADORAS'),
('INGENIERIA DE SOFTWARE'),
('MET. DE LA INV. O TOP.SELEC.DE LA ING.I'),
('MODULACIÓN DIGITAL'),
('TEORIA DE CONTROL ANALÓGICO'),
('TEORIA DE LA INFORMACION Y CODIFICACION'),
('TEORIA DE CONTROL DIGITAL'),
('NVAS. TEC. EN LA TRANSFER. DE INFOR.'),
('ADMINISTRACIÓN DE LA INGENERIA'),
('COMPUTO APLICADO A SISTEMAS ECOLOGICOS I'),
('SISTEMAS DE INFORMACION I'),
('TRANSFERENCIA Y PROC.DE LA INFORMACION I'),
('ALGORITMOS DE COMPUTO I'),
('INTERFASES INTELIGENTES I'),
('BASE DE DATOS'),
('PROYECTO DE INGENIERIA'),
('FORMULACION Y EVALUACION DE PROYECTOS'),
('REDES NEURONALES'),
('INTELIGENCIA ARTIFICIAL'),
('PROGRAMACION LOGICA'),
('LENGUAJES PARA ARQUITECTURA EN PARALELO'),
('SISTEMAS EXPERTOS'),
('DISEÑO ASISTIDO POR COMPUTADORA'),
('REDES DE COMPUTADORAS'),
('SISTEMAS DISTRIBUIDOS'),
('COMPUTO APLICADO A SISTEMAS ECOLOGICOS II'),
('SISTEMAS DE INFORMACION II'),
('TRANSFERENCIA Y PROC.DE LA INFORMACION II'),
('ALGORITMOS DE COMPUTO II'),
('INTERFASES INTELIGENTES II');
