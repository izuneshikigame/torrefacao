CREATE TABLE Manutencoes (
    ID_Manutencao SERIAL PRIMARY KEY,
    ID_Equipamento INT NOT NULL,
    ID_Funcionario_Resp INT,
    Data_Manutencao TIMESTAMP NOT NULL,
    Tipo VARCHAR(50) NOT NULL, -- 'Preventiva', 'Corretiva'
    Descricao TEXT,
    CONSTRAINT fk_equipamento FOREIGN KEY (ID_Equipamento) REFERENCES Equipamentos(ID_Equipamento),
    CONSTRAINT fk_funcionario_resp FOREIGN KEY (ID_Funcionario_Resp) REFERENCES Funcionarios(ID_Funcionario)
);