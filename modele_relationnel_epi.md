
# Modèle Relationnel

## Table `EPI`
| Colonne                 | Type          | Contraintes                                              |
|-------------------------|---------------|----------------------------------------------------------|
| id                      | INT (PK)      | AUTO_INCREMENT                                           |
| identifiant_personnalise | VARCHAR(255)  | UNIQUE                                                   |
| marque                  | VARCHAR(255)  | NOT NULL                                                 |
| modele                  | VARCHAR(255)  | NOT NULL                                                 |
| numero_serie            | VARCHAR(255)  | UNIQUE                                                   |
| taille                  | VARCHAR(50)   | NULLABLE (pour certains EPI)                             |
| couleur                 | VARCHAR(50)   | NULLABLE (pour certains EPI)                             |
| date_achat              | DATE          | NOT NULL                                                 |
| date_fabrication        | DATE          | NOT NULL                                                 |
| date_mise_en_service     | DATE          | NOT NULL                                                 |
| type_epi                | ENUM          | ('corde', 'sangle', 'baudrier', 'casque', 'mousqueton', 'assurage') |
| periodicite_controle     | INT           | Nombre de jours entre chaque contrôle                    |
| etat                    | ENUM          | ('operationnel', 'a_reparer', 'mis_au_rebut')            |

---

## Table `Controle`
| Colonne           | Type          | Contraintes                                              |
|-------------------|---------------|----------------------------------------------------------|
| id                | INT (PK)      | AUTO_INCREMENT                                           |
| date_controle     | DATE          | NOT NULL                                                 |
| statut            | ENUM          | ('operationnel', 'a_reparer', 'mis_au_rebut')            |
| remarques         | TEXT          | NULLABLE                                                 |
| id_epi            | INT (FK)      | REFERENCES `EPI`(id)                                     |
| id_gestionnaire   | INT (FK)      | REFERENCES `Gestionnaire`(id)                            |

---

## Table `Gestionnaire`
| Colonne           | Type          | Contraintes                                              |
|-------------------|---------------|----------------------------------------------------------|
| id                | INT (PK)      | AUTO_INCREMENT                                           |
| nom               | VARCHAR(255)  | NOT NULL                                                 |
| prenom            | VARCHAR(255)  | NOT NULL                                                 |
| email             | VARCHAR(255)  | UNIQUE                                                   |
| telephone         | VARCHAR(15)   | NULLABLE                                                 |

---

## Table `Cordiste`
| Colonne           | Type          | Contraintes                                              |
|-------------------|---------------|----------------------------------------------------------|
| id                | INT (PK)      | AUTO_INCREMENT                                           |
| nom               | VARCHAR(255)  | NOT NULL                                                 |
| prenom            | VARCHAR(255)  | NOT NULL                                                 |
| email             | VARCHAR(255)  | UNIQUE                                                   |
| telephone         | VARCHAR(15)   | NULLABLE                                                 |

---

## Table `Alerte`
| Colonne           | Type          | Contraintes                                              |
|-------------------|---------------|----------------------------------------------------------|
| id                | INT (PK)      | AUTO_INCREMENT                                           |
| date_alerte       | DATE          | NOT NULL                                                 |
| id_epi            | INT (FK)      | REFERENCES `EPI`(id)                                     |
| id_gestionnaire   | INT (FK)      | REFERENCES `Gestionnaire`(id)                            |
| statut            | ENUM          | ('envoyée', 'vue', 'ignorée')                            |
