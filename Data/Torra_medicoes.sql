CREATE TABLE Torra_Medicoes (
    ID_Medicao INT PRIMARY KEY AUTO_INCREMENT,
    ID_Ciclo_Torra INT,
    Timestamp_Medicao DATETIME NOT NULL,
    Temperatura_C DECIMAL(5, 2),
    Cor VARCHAR(50),
    Anotacoes TEXT,
    FOREIGN KEY (ID_Ciclo_Torra) REFERENCES Ciclos_Torra(ID_Ciclo_Torra)
);