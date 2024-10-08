
use ipecom;

-- Initiation SQL - Exercices
-- Exercice 1
-- Quelle requête utiliser pour afficher l'ensemble des enregistrements de la table lpecom_livres ?


select * 
from lpecom_livres;


-- ## Exercice 2
-- Quelle requête utiliser pour sélectionner uniquement les livres qui ont un prix strictement supérieur à 20 dans la table lpecom_livres ?


select * 
from 
lpecom_livres 
where prix > 20;

-- ## Exercice 3
-- Quelle requête utiliser pour trier les enregistrements de la table lpecom_livres du prix le plus élevé au prix le plus bas ?

select * 
from 
lpecom_livres 
where prix > 20 
order by prix desc;

-- ## Exercice 4
-- Quelle requête utiliser pour récupérer le prix du livre le plus élevé de la table lpecom_livres ?

select * 
from 
lpecom_livres 
order by prix 
desc limit 1;

select max(prix) 
from 
lpecom_livres;

-- ## Exercice 5
-- Quelle requête utiliser pour récupérer les livres de la table lpecom_livres qui ont un prix compris entre 20 et 22 ?

select * 
from lpcom_livres 
between 20 and 22;


-- # Initiation SQL - Exercices
-- ## Exercice 6
-- Quelle requête utiliser pour récupérer tous les livres de la table lpecom_livres à l'exception de celui portant la valeur pour la colonne isbn_10 : 2092589547 ?

select * 
from lpecom_livres 
where isbn_10 <> 2092589547;

-- ## Exercice 7
-- Quelle requête utiliser pour récupérer le prix du livre le moins élevé de la table lpecom_livres en renommant la colonne dans les résultats par minus ?

select *, min(prix) as minus 
from lpecom_livres;


-- ## Exercice 8
-- Quelle requête utiliser pour sélectionner uniquement les 3 premiers résultats sans le tout premier de la table lpecom_livres ?

select * 
from lpecom_livres 
where id_livre <> 1 limit 3;

-- # Initiation SQL 3:
-- ## Exercice 1
-- Quelle requête utiliser pour afficher l'id des étudiants qui ont participé à au moins un examen ?

select id_etudiant 
from lpecom_examens;


-- ## Exercice 2
-- Quelle requête utiliser pour compter le nombre d'étudiants qui ont participé à au moins un examen ?

select id_etudiant, count(id_etudiant) 
from lpecom_examens 
group by (id_etudiant);


-- ## Exercice 3
-- Quelle requête utiliser pour calculer la moyenne de l'examen portant l'id : 45 ?

select avg(note) 
from lpecom_examens 
where id_examen = 45 
group by id_examen = 45;

-- ## Exercice 4
-- Quelle requête utiliser pour récupérer la meilleure note de l'examen portant l'id : 87 ?

select max(note) 
from lpecom_examens 
where id_examen = 87 
group by id_examen = 87;

-- ## Exercice 5
-- Quelle requête utiliser pour afficher l'id des étudiants qui ont eu plus de 11 à l'examen 45 ou plus de 12 à l'examen 87 ?

select id_etudiant 
from lpecom_examens 
where (id_examen = 45 and note > 11) or (id_examen = 87 and note > 12)

-- ## Exercice 6
-- Quelle requête utiliser pour afficher tous les enregistrements de la table lpecom_examens avec en plus, si c'est possible, le prénom et le nom de l'étudiant ?

select id_examen, prenom, nom  
from lpecom_examens 
join lpecom_etudiants on lpecom_examens.id_etudiant = lpecom_etudiants.id_etudiant;


-- ##  Exercice 7
-- Quelle requête utiliser pour afficher les enregistrements de la table lpecom_examens avec le prénom et le nom de l'étudiant, uniquement quand les étudiants sont présents dans la table lpecom_etudiants ?

select id_examen, prenom, nom  
from lpecom_examens 
join lpecom_etudiants on lpecom_examens.id_etudiant = lpecom_etudiants.id_etudiant;


-- ## Exercice 8
-- Quelle requête utiliser pour afficher uniquement le nom et le prénom de l'étudiant avec l'id : 30 avec la moyenne de ses deux examens dans une colonne moyenne ?

select lpecom_etudiants.id_etudiant, prenom, nom, avg(note) as moyenne  from lpecom_examens 
join lpecom_etudiants on lpecom_examens.id_etudiant = lpecom_etudiants.id_etudiant 
where lpecom_etudiants.id_etudiant = 30 group by lpecom_etudiants.id_etudiant;


-- ## Exercice 9
-- Quelle requête utiliser pour afficher les 3 meilleurs examens, du meilleur au moins bon, avec le prénom et le nom de l'étudiant associé ?

select id_examen, prenom, nom, note 
from lpecom_examens 
join lpecom_etudiants on lpecom_examens.id_etudiant = lpecom_etudiants.id_etudiant 
order by note 
desc limit 3;




# Initiation SQL - Exercices III / Troisième partie

## Exercice 1
Quel est le résultat de la requête ci-dessous ?
SQL
SELECT id, prenom, nom
FROM lpecom_realisateurs
WHERE nation = "us"
AND sexe = 1;

Affiche l'Id, prenom, nom des réalisatrices de nationalités américaines 

## Exercice 2
Quel est le résultat de la requête ci-dessous ?
SQL
SELECT *
FROM lpecom_realisateurs
WHERE sexe = "0"
ORDER BY nom DESC
LIMIT 1;


Affiche id nom prenom sexe nationalités du dernier réalisateur hommes par ordre alphabétique inverse du nom

## Exercice 3
Quel est le résultat de la requête ci-dessous ?
SQL
SELECT f.id, f.nom AS film, r.prenom, r.nom
FROM lpecom_films f
INNER JOIN lpecom_realisateurs r ON f.id_realisateur = r.id
ORDER BY f.id ASC;

Affiche l'id des films son nom et le prénom et nom du réalisateur trié par Id ascendant 


Initiation SQL - Exercices
Exercice 6
Quelle requête utiliser pour afficher tous les enregistrements de la table lpecom_examens avec en
plus, si c'est possible, le prénom et le nom de l'étudiant ?
Exercice 7
Quelle requête utiliser pour afficher les enregistrements de la table lpecom_examens avec le
prénom et le nom de l'étudiant, uniquement quand les étudiants sont présents dans la table
lpecom_etudiants ?
Exercice 8
Quelle requête utiliser pour afficher uniquement le nom et le prénom de l'étudiant avec l'id : 30 avec
la moyenne de ses deux examens dans une colonne moyenne ?
Exercice 9
Quelle requête utiliser pour afficher les 3 meilleurs examens, du meilleur au moins bon, avec le
prénom et le nom de l'étudiant associé ?