-- Tabela para cadastrar todos os funcionários que interagem com o sistema.
CREATE TABLE Funcionarios (
    ID_Funcionario SERIAL PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Funcao VARCHAR(100) NOT NULL,
    Turno VARCHAR(50)
);
