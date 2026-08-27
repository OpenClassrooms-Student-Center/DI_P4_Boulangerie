-- Schéma de test pour "Les petits pains chauds"
-- Types génériques volontairement simples : ce jeu de données sert à valider
-- l'installation de l'environnement (étape 2 du projet), pas à figer une
-- modélisation définitive.

CREATE TABLE produits (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description TEXT,
    prix DECIMAL(5, 2) NOT NULL,
    categorie VARCHAR(50) NOT NULL,
    stock_du_jour INTEGER NOT NULL DEFAULT 0,
    statut VARCHAR(20) NOT NULL DEFAULT 'disponible' -- disponible, bientot_epuise, indisponible
);

CREATE TABLE commandes (
    id SERIAL PRIMARY KEY,
    reference VARCHAR(20) UNIQUE NOT NULL,
    client_nom VARCHAR(100) NOT NULL,
    client_contact VARCHAR(100),
    creneau_retrait VARCHAR(50) NOT NULL,
    statut VARCHAR(20) NOT NULL DEFAULT 'a_preparer', -- a_preparer, prete, servie
    total DECIMAL(6, 2) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now()
);

CREATE TABLE commande_lignes (
    id SERIAL PRIMARY KEY,
    commande_id INTEGER NOT NULL REFERENCES commandes(id),
    produit_id INTEGER NOT NULL REFERENCES produits(id),
    quantite INTEGER NOT NULL,
    prix_unitaire DECIMAL(5, 2) NOT NULL
);
