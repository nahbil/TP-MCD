-- Initialisation des tables
INSERT INTO Employe(matricule, nom, email, dtype) VALUES
    (1, 'Rémi Bastide', 'Remi.Bastide@univ-jfc.fr', 'Employe'), -- Les clés sont auto-générées
    (2, 'Elyes Lamine', 'Elyes.Lamine@univ-jfc.fr', 'Employe'),
    (3, 'Jean-Marie Pécatte', 'United States of America', 'Employe');

INSERT INTO Employe(matricule, nom, email, diplome, dtype) VALUES
    (4, 'Sylvain Barreau', 'sylvain.Barreau@univ-jfc.fr','SISCO', 'Administratif');
    
INSERT INTO Employe(matricule, nom, email, pourcentage, superieur_matricule, dtype) VALUES
    (5, 'Sandrine', 'sandrine.libouroux@univ-jfc.fr', 30, 4, 'Commercial');
    
INSERT INTO Employe(matricule, nom, email, montant_prime, superieur_matricule, dtype) VALUES
    (6, 'Stonks', 'stonks@univ-jfc.fr', 50.0, 4, 'Technique');   
    
INSERT INTO Projet(code, nom, debut, fin) VALUES
    (1, 'Qualité', '2019-01-05', null),
    (2, 'Refonte Application', '2019-05-05', '2024-02-01'); 

INSERT INTO Participation(AFFECTATION_CODE, CONTRIBUTEUR_MATRICULE, pourcentage, role) VALUES
    (1, 5, 60, 'Chef de Projet'),
    (1, 2, 40, 'Developpeur'),
    (2, 5, 45, 'Developpeur'),
    (2, 1, 55, 'Developpeur'); 
  
-- Les clés sont auto-générées
-- On peut fixer les clés auto-générées, mais il faut ensuite
-- réinitialiser le compteur de clé auto-générée
-- Attention : la syntaxe est différente selon le SGBD utilisé
-- Ici la syntaxe pour le SGBD H2
ALTER TABLE Employe ALTER COLUMN matricule RESTART WITH 4;

