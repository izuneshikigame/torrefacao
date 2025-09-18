CREATE TABLE Embalagens_Individuais (
    ID_Embalagem BIGINT PRIMARY KEY AUTO_INCREMENT,
    ID_Lote_PA INT,
    ID_Operador_Envase INT,
    Data_Envase DATETIME,
    Peso_Real_g DECIMAL(10, 2) NOT NULL,
    Ajuste_Realizado BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (ID_Lote_PA) REFERENCES Lotes_Produto_Acabado(ID_Lote_PA),
    FOREIGN KEY (ID_Operador_Envase) REFERENCES Funcionarios(ID_Funcionario)
);