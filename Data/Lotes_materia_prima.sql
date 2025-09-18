-- Tabela central para o café cru recebido.
CREATE TABLE Lotes_Materia_Prima (
    ID_Lote_MP SERIAL PRIMARY KEY,
    Codigo_Lote_MP VARCHAR(50) UNIQUE NOT NULL, -- Formato: CF-AAAA-NNN
    ID_Fornecedor INT NOT NULL,
    Safra VARCHAR(10),
    Origem_Geografica VARCHAR(255),
    Variedade VARCHAR(100),
    Processo VARCHAR(100), -- 'Via Seca', 'Via Úmida'
    Quantidade_Recebida_Kg DECIMAL(10, 2) NOT NULL,
    Data_Chegada DATE NOT NULL,
    Status VARCHAR(50) DEFAULT 'Recebido', -- 'Recebido', 'Em Analise', 'Aprovado', 'Reprovado'
    CONSTRAINT fk_fornecedor FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedores(ID_Fornecedor)