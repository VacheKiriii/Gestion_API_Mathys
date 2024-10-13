2. Liste des Endpoints

Avions :

  - GET /avions : Récupère la liste de tous les avions
  - GET /avions/:id : Récupère les détails d'un avion par son identifiant
  - POST /avions : Crée un nouvel avion
  - PUT /avions/:id : Met à jour les informations d'un avion
  - DELETE /avions/:id : Supprime un avion

Techniciens :

  - GET /techniciens : Récupère la liste de tous les techniciens
  - GET /techniciens/:id : Récupère les détails d'un technicien par son identifiant
  - POST /techniciens : Crée un nouveau technicien
  - PUT /techniciens/:id : Met à jour les informations d'un technicien
  - DELETE /techniciens/:id : Supprime un technicien

Maintenances :

  - GET /maintenances : Récupère la liste de toutes les maintenances
  - GET /maintenances/:id : Récupère les détails d'une maintenance par son identifiant
  - POST /maintenances : Crée une nouvelle intervention de maintenance
  - PUT /maintenances/:id : Met à jour les informations d'une maintenance
  - DELETE /maintenances/:id : Supprime une maintenance

3. Liste des Erreurs Possibles

  - 400 Bad Request : Les données fournies dans la requête ne sont pas valides (ex. : format incorrect, données manquantes).
  - 404 Not Found : L'entité demandée (avion, technicien ou maintenance) n'existe pas dans la base de données.
  - 409 Conflict : Conflit avec les données existantes, par exemple un numéro de série d'avion déjà utilisé.
  - 500 Internal Server Error : Erreur serveur interne, par exemple une exception inattendue pendant le traitement de la requête.
  - 503 Service Unavailable : La base de données n'est pas accessible.

https://github.com/VacheKiriii/Gestion_API_Mathys/
