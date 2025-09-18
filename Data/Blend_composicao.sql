CREATE TABLE Blend_Composicao (
    ID_Ciclo_Torra INT,
    ID_Lote_MP INT,
    Quantidade_Utilizada_Kg DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (ID_Ciclo_Torra, ID_Lote_MP),
    FOREIGN KEY (ID_Ciclo_Torra) REFERENCES Ciclos_Torra(ID_Ciclo_Torra),
    FOREIGN KEY (ID_Lote_MP) REFERENCES Lotes_Materia_Prima(ID_Lote_MP)
);