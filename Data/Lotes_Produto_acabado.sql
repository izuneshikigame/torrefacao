CREATE TABLE Lotes_Produto_Acabado (
    ID_Lote_PA INT PRIMARY KEY AUTO_INCREMENT,
    Codigo_Lote_PA VARCHAR(50) UNIQUE NOT NULL, -- Formato: LAAAMMDDNNN
    ID_Ciclo_Torra INT, -- Conecta o produto final à sua torra de origem
    Data_Fabricacao DATE NOT NULL,
    Data_Validade DATE NOT NULL,
    Status VARCHAR(50) DEFAULT 'Em Qualidade', -- 'Em Qualidade', 'Disponível', 'Bloqueado', 'Expedido'
    FOREIGN KEY (ID_Ciclo_Torra) REFERENCES Ciclos_Torra(ID_Ciclo_Torra)
);