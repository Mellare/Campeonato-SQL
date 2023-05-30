CREATE TABLE Estadio( 
id number, 
nome varchar2(50), 
dt_inauguracao date, 
lotacao number(6), 
CONSTRAINT PK_Estadio PRIMARY KEY(ID) 
);

CREATE TABLE Clube( 
id number, 
nome varchar(50), 
dt_fundacao date, 
estado varchar2(30), 
CONSTRAINT PK_Clube PRIMARY KEY(ID) 
id_Estadio number, 
CONSTRAINT FK_Estadio FOREIGN KEY (id_Estadio) REFERENCES Estadio(ID) 
);

CREATE TABLE Clube( 
id number, 
nome varchar(50), 
dt_fundacao date, 
estado varchar2(30), 
CONSTRAINT PK_Clube PRIMARY KEY(ID), 
id_Estadio number, 
CONSTRAINT FK_Estadio FOREIGN KEY (id_Estadio) REFERENCES Estadio(ID) 
);

CREATE TABLE Jogador( 
id number, 
nome varchar2(50), 
numero varchar2(2), 
posicao varchar2(3), 
CONSTRAINT PK_Jogador PRIMARY KEY(ID), 
id_Clube number, 
CONSTRAINT FK_Clube FOREIGN KEY (id_Clube) REFERENCES Clube(ID) 
);

CREATE TABLE Confronto( 
id_Clube_1 number, 
id_Clube_2 number, 
CONSTRAINT PK_Clube_1 PRIMARY KEY(id_Clube_1), 
CONSTRAINT PK_Clube_2 PRIMARY KEY(id_Clube_2), 
CONSTRAINT FK_Clube_1 FOREIGN KEY (id_Clube_1) REFERENCES Clube(ID), 
CONSTRAINT FK_Clube_2 FOREIGN KEY (id_Clube_2) REFERENCES Clube(ID), 
dt_confronto date, 
gols_clube_1 number(2), 
gols_clube_2 number(2) 
);

CREATE TABLE Confronto( 
CONSTRAINT FK_Clube_1 FOREIGN KEY (id_Clube_1) REFERENCES Clube(ID), 
CONSTRAINT FK_Clube_2 FOREIGN KEY (id_Clube_2) REFERENCES Clube(ID), 
dt_confronto date, 
gols_clube_1 number(2), 
gols_clube_2 number(2) 
);

CREATE TABLE Confronto( 
id_Time1 number, 
CONSTRAINT FK_Time1 FOREIGN KEY (id_Time1) REFERENCES Clube(ID), 
id_Time2 number, 
CONSTRAINT FK_Time2 FOREIGN KEY (id_Time2) REFERENCES Clube(ID), 
dt_confronto date, 
gols_clube_1 number(2), 
gols_clube_2 number(2) 
);

