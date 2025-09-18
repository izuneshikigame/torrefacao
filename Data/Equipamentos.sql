CREATE TABLE Equipamentos (
    ID_Equipamento SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Tipo VARCHAR(100),a'
    Data_Aquisicao DATE,
    Status VARCHAR(50) DEFAULT 'Operacional'
);