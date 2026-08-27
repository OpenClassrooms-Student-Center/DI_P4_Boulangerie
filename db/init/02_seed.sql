-- Jeu de données de test — cohérent avec la maquette HTML fournie (écrans 01, 05, 06)

INSERT INTO produits (nom, description, prix, categorie, stock_du_jour, statut) VALUES
    ('Baguette tradition', 'Farine T65, levain, cuisson au feu de bois', 1.25, 'pain', 24, 'disponible'),
    ('Croissant pur beurre', 'Pâte feuilletée, beurre AOP Charentes-Poitou', 1.60, 'viennoiserie', 12, 'disponible'),
    ('Pain de campagne', 'Farine T80, levain naturel, 500g', 4.90, 'pain', 3, 'bientot_epuise'),
    ('Pain aux graines', 'Tournesol, lin, sésame, 400g', 3.25, 'pain', 0, 'indisponible');

INSERT INTO commandes (reference, client_nom, client_contact, creneau_retrait, statut, total, created_at) VALUES
    ('LPPC-0058', 'Alice B.', '06 12 34 56 78', '15h30 - 15h45', 'servie', 4.10, now() - interval '3 hours'),
    ('LPPC-0059', 'Marc L.', '06 23 45 67 89', '15h45 - 16h00', 'prete', 1.60, now() - interval '2 hours 45 minutes'),
    ('LPPC-0842', 'Charlotte S.', '06 34 56 78 90', '17h30 - 17h45', 'a_preparer', 9.00, now() - interval '20 minutes'),
    ('LPPC-0061', 'Sandra B.', '06 45 67 89 01', '18h00 - 18h15', 'a_preparer', 2.85, now() - interval '5 minutes');

INSERT INTO commande_lignes (commande_id, produit_id, quantite, prix_unitaire) VALUES
    (1, 1, 2, 1.25),
    (1, 2, 1, 1.60),
    (2, 2, 1, 1.60),
    (3, 1, 2, 1.25),
    (3, 3, 1, 4.90),
    (3, 2, 1, 1.60),
    (4, 1, 1, 1.25),
    (4, 2, 1, 1.60);
