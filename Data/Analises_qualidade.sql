CREATE TABLE Analises_Qualidade (
    ID_Analise INT PRIMARY KEY AUTO_INCREMENT,
    ID_Lote_MP INT NULL, -- FK para Lotes_Materia_Prima (se for análise de entrada)
    ID_Lote_PA INT NULL, -- FK para Lotes_Produto_Acabado (se for análise final)
    ID_Analista INT,
    Data_Analise DATETIME NOT NULL,
    Tipo_Analise VARCHAR(50), -- 'Entrada', 'Final'
    Umidade DECIMAL(5, 2),
    Defeitos_Percentual DECIMAL(5, 2),
    Nota_Sensorial DECIMAL(4, 2),
    Resultado VARCHAR(50), -- 'Aprovado', 'Reprovado'
    Justificativa TEXT,
    FOREIGN KEY (ID_Lote_MP) REFERENCES Lotes_Materia_Prima(ID_Lote_MP),
    FOREIGN KEY (ID_Lote_PA) REFERENCES Lotes_Produto_Acabado(ID_Lote_PA),
    FOREIGN KEY (ID_Analista) REFERENCES Funcionarios(ID_Funcionario)
);