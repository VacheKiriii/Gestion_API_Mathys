CREATE TABLE Avion (
    id_avion INT PRIMARY KEY AUTO_INCREMENT,
    numéro_serie VARCHAR(50) NOT NULL,
    modèle VARCHAR(50) NOT NULL,
    date_mise_en_service DATE NOT NULL,
    statut ENUM('opérationnel', 'en maintenance', 'hors service') NOT NULL
);

CREATE TABLE Technicien (
    id_technicien INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prénom VARCHAR(50) NOT NULL,
    spécialité VARCHAR(50) NOT NULL,
    date_embauche DATE NOT NULL
);

CREATE TABLE Maintenance (
    id_maintenance INT PRIMARY KEY AUTO_INCREMENT,
    id_avion INT NOT NULL,
    id_technicien INT NOT NULL,
    date_maintenance DATE NOT NULL,
    description TEXT NOT NULL,
    statut ENUM('en cours', 'terminée', 'annulée') NOT NULL,
    FOREIGN KEY (id_avion) REFERENCES Avion(id_avion),
    FOREIGN KEY (id_technicien) REFERENCES Technicien(id_technicien)
);
