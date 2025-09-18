CREATE TABLE Ordens_Producao (
    ID_Ordem_Producao INT PRIMARY KEY AUTO_INCREMENT,
    ID_Gerente_Prod INT,
    Data_Criacao DATE NOT NULL,
    Quantidade_Prevista_Kg DECIMAL(10, 2),
    Status VARCHAR(50) DEFAULT 'Planejada', -- 'Planejada', 'Em Execução', 'Concluída'
    FOREIGN KEY (ID_Gerente_Prod) REFERENCES Funcionarios(ID_Funcionario)
);