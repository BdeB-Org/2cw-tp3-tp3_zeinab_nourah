-- Généré par Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   à :        2023-05-19 09:36:03 EDT
--   site :      Oracle Database 21c
--   type :      Oracle Database 21c


-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE


-- Création de la table chambre
-- Cr�ation de la table menu_forever_22
CREATE TABLE menu_forever_22 (
    id_magasin INT PRIMARY KEY,
    haut INT,
    bas INT,
    soulier INT
);

-- Insertion des données dans la table chambre
INSERT INTO menu_forever_22 (id_magasin, haut, bas, soulier) VALUES (1, 100, 200, 300);


-- Cr�ation de la table haut
CREATE TABLE haut (
    id_haut INT PRIMARY KEY,
    prix DECIMAL(10, 2),
    taille VARCHAR2(100),
    id_magasin INT,
    description CLOB,
    FOREIGN KEY (id_magasin) REFERENCES menu_forever_22(id_magasin)
);

-- Insertion des données dans la table haut
INSERT INTO haut (id_haut, prix, taille, id_magasin, description) VALUES (1, 49.99, 'M', 1, 'Haut en coton avec col en V');
INSERT INTO haut (id_haut, prix, taille, id_magasin, description) VALUES (2, 39.99, 'S', 1, 'T-shirt à rayures');
INSERT INTO haut (id_haut, prix, taille, id_magasin, description) VALUES (3, 59.99, 'L', 1, 'Chemise à carreaux');
INSERT INTO haut (id_haut, prix, taille, id_magasin, description) VALUES (4, 34.99, 'XL', 1, 'Polo en polyester');
INSERT INTO haut (id_haut, prix, taille, id_magasin, description) VALUES (5, 44.99, 'S', 1, 'Débardeur en lin');
INSERT INTO haut (id_haut, prix, taille, id_magasin, description) VALUES (6, 29.99, 'M', 1, 'T-shirt graphique');
INSERT INTO haut (id_haut, prix, taille, id_magasin, description) VALUES (7, 39.99, 'L', 1, 'Haut à manches longues');
INSERT INTO haut (id_haut, prix, taille, id_magasin, description) VALUES (8, 54.99, 'XL', 1, 'Pull en laine');
INSERT INTO haut (id_haut, prix, taille, id_magasin, description) VALUES (9, 49.99, 'M', 1, 'Chemisette en denim');
INSERT INTO haut (id_haut, prix, taille, id_magasin, description) VALUES (10, 59.99, 'S', 1, 'Polo à col roulé');


-- Cr�ation de la table bas
CREATE TABLE bas (
    id_bas INT PRIMARY KEY,
    prix DECIMAL(10, 2),
    taille VARCHAR2(100),
    id_magasin INT,
    description CLOB,
    FOREIGN KEY (id_magasin) REFERENCES menu_forever_22(id_magasin)
);


-- Insertion des données dans la table bas
INSERT INTO bas (id_bas, prix, taille, id_magasin, description) VALUES (1, 29.99, 'S', 1, 'Jeans slim noir');
INSERT INTO bas (id_bas, prix, taille, id_magasin, description) VALUES (2, 39.99, 'M', 1, 'Short en denim');
INSERT INTO bas (id_bas, prix, taille, id_magasin, description) VALUES (3, 49.99, 'L', 1, 'Pantalon cargo');
INSERT INTO bas (id_bas, prix, taille, id_magasin, description) VALUES (4, 34.99, 'XL', 1, 'Jogger en coton');
INSERT INTO bas (id_bas, prix, taille, id_magasin, description) VALUES (5, 44.99, 'S', 1, 'Jupe en cuir');
INSERT INTO bas (id_bas, prix, taille, id_magasin, description) VALUES (6, 29.99, 'M', 1, 'Legging imprimé');
INSERT INTO bas (id_bas, prix, taille, id_magasin, description) VALUES (7, 39.99, 'L', 1, 'Short de plage');
INSERT INTO bas (id_bas, prix, taille, id_magasin, description) VALUES (8, 54.99, 'XL', 1, 'Pantalon de yoga');
INSERT INTO bas (id_bas, prix, taille, id_magasin, description) VALUES (9, 49.99, 'M', 1, 'Jupe-culotte');
INSERT INTO bas (id_bas, prix, taille, id_magasin, description) VALUES (10, 59.99, 'S', 1, 'Jean bootcut');

-- Cr�ation de la table soulier
CREATE TABLE soulier (
    id_soulier INT PRIMARY KEY,
    id_magasin INT,
    marque VARCHAR2(100),
    prix DECIMAL(10, 2),
    FOREIGN KEY (id_magasin) REFERENCES menu_forever_22(id_magasin)
);


-- Insertion des données dans la table soulier
INSERT INTO soulier (id_soulier, id_magasin, marque, prix) VALUES (1, 1, 'Nike', 99.99);
INSERT INTO soulier (id_soulier, id_magasin, marque, prix) VALUES (2, 1, 'Adidas', 89.99);
INSERT INTO soulier (id_soulier, id_magasin, marque, prix) VALUES (3, 1, 'Puma', 79.99);
INSERT INTO soulier (id_soulier, id_magasin, marque, prix) VALUES (4, 1, 'Reebok', 69.99);
INSERT INTO soulier (id_soulier, id_magasin, marque, prix) VALUES (5, 1, 'New Balance', 79.99);
INSERT INTO soulier (id_soulier, id_magasin, marque, prix) VALUES (6, 1, 'Vans', 59.99);
INSERT INTO soulier (id_soulier, id_magasin, marque, prix) VALUES (7, 1, 'Converse', 69.99);
INSERT INTO soulier (id_soulier, id_magasin, marque, prix) VALUES (8, 1, 'Skechers', 49.99);
INSERT INTO soulier (id_soulier, id_magasin, marque, prix) VALUES (9, 1, 'Fila', 59.99);
INSERT INTO soulier (id_soulier, id_magasin, marque, prix) VALUES (10, 1, 'Under Armour', 79.99);



-- Activation du schéma RESTSCOTT avec un URI de base "hr2"
BEGIN
  ORDS.enable_schema(
    p_enabled             => TRUE,
    p_schema              => 'RESTSCOTT',
    p_url_mapping_type    => 'BASE_PATH',
    p_url_mapping_pattern => 'hr2',
    p_auto_rest_auth      => FALSE
  );
    
  COMMIT;
END;
/

-- Activation de la table HOTEL pour accès REST
BEGIN
  ORDS.enable_object (
    p_enabled      => TRUE,
    p_schema       => 'RESTSCOTT',
    p_object       => 'menu_forever_22',
    p_object_type  => 'TABLE',
    p_object_alias => 'menu'
  );
    
  COMMIT;
END;
/

-- Activation de la table PERSONNEL_HOTEL pour accès REST
BEGIN
  ORDS.enable_object (
    p_enabled      => TRUE,
    p_schema       => 'RESTSCOTT',
    p_object       => 'haut',
    p_object_type  => 'TABLE',
    p_object_alias => 'haut'
  );
    
  COMMIT;
END;
/

-- Activation de la table CLIENT pour accès REST
BEGIN
  ORDS.enable_object (
    p_enabled      => TRUE,
    p_schema       => 'RESTSCOTT',
    p_object       => 'bas',
    p_object_type  => 'TABLE',
    p_object_alias => 'bas'
  );
    
  COMMIT;
END;
/

-- Activation de la table RESERVATION pour accès REST
BEGIN
  ORDS.enable_object (
    p_enabled      => TRUE,
    p_schema       => 'RESTSCOTT',
    p_object       => 'soulier',
    p_object_type  => 'TABLE',
    p_object_alias => 'souliers'
  );
    
  COMMIT;
END;
/

-- Confirmation de l'activation du schéma
SELECT *
FROM user_ords_schemas;

-- Confirmation de l'activation des tables pour REST
SELECT *
FROM   user_ords_enabled_objects;


-- Rapport récapitulatif d'Oracle SQL Developer Data Modeler : 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0