CREATE TABLE Ciclos_Torra (
    ID_Ciclo_Torra INT PRIMARY KEY AUTO_INCREMENT,
    ID_Ordem_Producao INT,
    ID_Torrador INT,
    ID_Operador_Torra INT,
    Data_Inicio_Torra DATETIME NOT NULL,
    Data_Fim_Torra DATETIME,
    Peso_Verde_Kg DECIMAL(10, 2) NOT NULL, -- Sempre 120kg conforme RN
    Peso_Torrado_Kg DECIMAL(10, 2),
    Perda_Percentual DECIMAL(5, 2),
    FOREIGN KEY (ID_Ordem_Producao) REFERENCES Ordens_Producao(ID_Ordem_Producao),
    FOREIGN KEY (ID_Torrador) REFERENCES Equipamentos(ID_Equipamento),
    FOREIGN KEY (ID_Operador_Torra) REFERENCES Funcionarios(ID_Funcionario)
);