-- Généré par Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   à :        2023-05-19 09:36:03 EDT
--   site :      Oracle Database 21c
--   type :      Oracle Database 21c
 
-- Création de la table menu_forever_22
CREATE TABLE menu_forever_22 (
    id_magasin INT PRIMARY KEY,
    haut INT,
    bas INT,
    soulier INT
);
 
-- Création de la table haut
CREATE TABLE haut (
    id_haut INT PRIMARY KEY,
    prix DECIMAL(10, 2),
    taille VARCHAR2(100),
    id_magasin INT,
    description CLOB,
    FOREIGN KEY (id_magasin) REFERENCES menu_forever_22(id_magasin)
);
 
-- Création de la table bas
CREATE TABLE bas (
    id_bas INT PRIMARY KEY,
    prix DECIMAL(10, 2),
    taille VARCHAR2(100),
    id_magasin INT,
    description CLOB,
    FOREIGN KEY (id_magasin) REFERENCES menu_forever_22(id_magasin)
);
 
-- Création de la table soulier
CREATE TABLE soulier (
    id_soulier INT PRIMARY KEY,
    id_magasin INT,
    marque VARCHAR2(100),
    prix DECIMAL(10, 2),
    FOREIGN KEY (id_magasin) REFERENCES menu_forever_22(id_magasin)
);
