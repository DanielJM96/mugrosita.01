CREATE database AgendaCitasAcupuntura;
USE AgendaCitasAcupuntura; 

CREATE TABLE pacientes (
id_pacientes INT(11) NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(50) NOT NULL,
   apellido VARCHAR(50) NOT NULL,
   email VARCHAR(100) NOT NULL,
   telefono VARCHAR(20) NOT NULL,
   PRIMARY KEY (id_pacientes)
);
CREATE TABLE horarios (
   id_horarios INT(11) NOT NULL AUTO_INCREMENT,
   fecha DATE NOT NULL,
   hora TIME NOT NULL,
   nota VARCHAR(255), 
   PRIMARY KEY (id_horarios)
   );
   
   CREATE TABLE cita_agendadas (
   cita_agendada INT (11) NOT NULL AUTO_INCREMENT, 
   id_pacientes INT (11) NOT NULL ,
   id_horarios INT (11) NOT NULL , 
   PRIMARY KEY (cita_agendada),
   FOREIGN KEY (id_pacientes) REFERENCES pacientes (id_pacientes),
   FOREIGN KEY (id_horarios) REFERENCES horarios (id_horarios)
   );
   