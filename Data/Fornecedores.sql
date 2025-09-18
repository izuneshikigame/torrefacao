-- Tabela para armazenar os dados dos fornecedores de matéria-prima.
CREATE TABLE Fornecedores (
    ID_Fornecedor SERIAL PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(18) UNIQUE NOT NULL,
    Endereco VARCHAR(255),
    Contato VARCHAR(100)
);