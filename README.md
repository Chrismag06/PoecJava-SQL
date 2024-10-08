
# Initiation SQL - Exercices
## Exercice 1
Quelle requête utiliser pour afficher l'ensemble des enregistrements de la table lpecom_livres ?

select * 
from lpecom_livres;

+----------+------------------------------+------------+-------------------------+------+
| id_livre | titre                        | isbn_10    | auteur                  | prix |
+----------+------------------------------+------------+-------------------------+------+
|        1 | Forteresse digitale          | 2709626306 | Dan Brown               | 20.5 |
|        2 | La jeune fille et la nuit     | 2253237620 | Guillaume Musso         | 21.9 |
|        3 | T'choupi se brosse les dents | 2092589547 | Thierry Courtin         |  5.7 |
|        4 | La Derni├¿re Chasse           | 2226439412 | Jean-Christophe Grang├®  | 22.9 |
|        5 | Le Signal                    | 2226319484 | Maxime Chattam          | 23.9 |
+----------+------------------------------+------------+-------------------------+------+

## Exercice 2
Quelle requête utiliser pour sélectionner uniquement les livres qui ont un prix strictement supérieur à 20 dans la table lpecom_livres ?


select * 
from 
lpecom_livres 
where prix > 20;

+----------+----------------------------+------------+-------------------------+------+
| id_livre | titre                      | isbn_10    | auteur                  | prix |
+----------+----------------------------+------------+-------------------------+------+
|        1 | Forteresse digitale        | 2709626306 | Dan Brown               | 20.5 |
|        2 | La jeune fille et la nuit   | 2253237620 | Guillaume Musso         | 21.9 |
|        4 | La Derni├¿re Chasse         | 2226439412 | Jean-Christophe Grang├®  | 22.9 |
|        5 | Le Signal                  | 2226319484 | Maxime Chattam          | 23.9 |
+----------+----------------------------+------------+-------------------------+------+

## Exercice 3
Quelle requête utiliser pour trier les enregistrements de la table lpecom_livres du prix le plus élevé au prix le plus bas ?

select * 
from 
lpecom_livres 
where prix > 20 
order by prix desc;

+----------+----------------------------+------------+-------------------------+------+
| id_livre | titre                      | isbn_10    | auteur                  | prix |
+----------+----------------------------+------------+-------------------------+------+
|        5 | Le Signal                  | 2226319484 | Maxime Chattam          | 23.9 |
|        4 | La Derni├¿re Chasse         | 2226439412 | Jean-Christophe Grang├®  | 22.9 |
|        2 | La jeune fille et la nuit   | 2253237620 | Guillaume Musso         | 21.9 |
|        1 | Forteresse digitale        | 2709626306 | Dan Brown               | 20.5 |
+----------+----------------------------+------------+-------------------------+------+
## Exercice 4
Quelle requête utiliser pour récupérer le prix du livre le plus élevé de la table lpecom_livres ?

select * 
from 
lpecom_livres 
order by prix 
desc limit 1;

+----------+-----------+------------+----------------+------+
| id_livre | titre     | isbn_10    | auteur         | prix |
+----------+-----------+------------+----------------+------+
|        5 | Le Signal | 2226319484 | Maxime Chattam | 23.9 |
+----------+-----------+------------+----------------+------+


select max(prix) 
from 
lpecom_livres;

+-----------+
| max(prix) |
+-----------+
|      23.9 |
+-----------+

## Exercice 5
Quelle requête utiliser pour récupérer les livres de la table lpecom_livres qui ont un prix compris entre 20 et 22 ?

select * 
from lpcom_livres 
between 20 and 22;

+----------+----------------------------+------------+-----------------+------+
| id_livre | titre                      | isbn_10    | auteur          | prix |
+----------+----------------------------+------------+-----------------+------+
|        1 | Forteresse digitale        | 2709626306 | Dan Brown       | 20.5 |
|        2 | La jeune fille et la nuit   | 2253237620 | Guillaume Musso | 21.9 |
+----------+----------------------------+------------+-----------------+------+


# Initiation SQL - Exercices
## Exercice 6
Quelle requête utiliser pour récupérer tous les livres de la table lpecom_livres à l'exception de celui portant la valeur pour la colonne isbn_10 : 2092589547 ?

select * 
from lpecom_livres 
where isbn_10 <> 2092589547;

+----------+----------------------------+------------+-------------------------+------+
| id_livre | titre                      | isbn_10    | auteur                  | prix |
+----------+----------------------------+------------+-------------------------+------+
|        1 | Forteresse digitale        | 2709626306 | Dan Brown               | 20.5 |
|        2 | La jeune fille et la nuit   | 2253237620 | Guillaume Musso         | 21.9 |
|        4 | La Derni├¿re Chasse         | 2226439412 | Jean-Christophe Grang├®  | 22.9 |
|        5 | Le Signal                  | 2226319484 | Maxime Chattam          | 23.9 |
+----------+----------------------------+------------+-------------------------+------+

## Exercice 7
Quelle requête utiliser pour récupérer le prix du livre le moins élevé de la table lpecom_livres en renommant la colonne dans les résultats par minus ?

select *, min(prix) as minus 
from lpecom_livres;

+----------+---------------------+------------+-----------+------+-------+
| id_livre | titre               | isbn_10    | auteur    | prix | minus |
+----------+---------------------+------------+-----------+------+-------+
|        1 | Forteresse digitale | 2709626306 | Dan Brown | 20.5 |   5.7 |
+----------+---------------------+------------+-----------+------+-------+

## Exercice 8
Quelle requête utiliser pour sélectionner uniquement les 3 premiers résultats sans le tout premier de la table lpecom_livres ?

select * 
from lpecom_livres 
where id_livre <> 1 limit 3;

+----------+------------------------------+------------+-------------------------+------+
| id_livre | titre                        | isbn_10    | auteur                  | prix |
+----------+------------------------------+------------+-------------------------+------+
|        2 | La jeune fille et la nuit     | 2253237620 | Guillaume Musso         | 21.9 |
|        3 | T'choupi se brosse les dents | 2092589547 | Thierry Courtin         |  5.7 |
|        4 | La Derni├¿re Chasse           | 2226439412 | Jean-Christophe Grang├®  | 22.9 |
+----------+------------------------------+------------+-------------------------+------+


# Initiation SQL 3:
## Exercice 1
Quelle requête utiliser pour afficher l'id des étudiants qui ont participé à au moins un examen ?

select id_etudiant 
from lpecom_examens;

+-------------+
| id_etudiant |
+-------------+
|          30 |
|          33 |
|          34 |
|          31 |
|          32 |
|          31 |
|          33 |
|          36 |
|          34 |
|          30 |
+-------------+

## Exercice 2
Quelle requête utiliser pour compter le nombre d'étudiants qui ont participé à au moins un examen ?

select id_etudiant, count(id_etudiant) 
from lpecom_examens 
group by (id_etudiant);

+-------------+--------------------+
| id_etudiant | count(id_etudiant) |
+-------------+--------------------+
|          30 |                  2 |
|          31 |                  2 |
|          32 |                  1 |
|          33 |                  2 |
|          34 |                  2 |
|          36 |                  1 |
+-------------+--------------------+

## Exercice 3
Quelle requête utiliser pour calculer la moyenne de l'examen portant l'id : 45 ?

select avg(note) 
from lpecom_examens 
where id_examen = 45 
group by id_examen = 45;

+-----------+
| avg(note) |
+-----------+
|     12.25 |
+-----------+

## Exercice 4
Quelle requête utiliser pour récupérer la meilleure note de l'examen portant l'id : 87 ?

select max(note) 
from lpecom_examens 
where id_examen = 87 
group by id_examen = 87;

+-----------+
| max(note) |
+-----------+
|        14 |
+-----------+

## Exercice 5
Quelle requête utiliser pour afficher l'id des étudiants qui ont eu plus de 11 à l'examen 45 ou plus de 12 à l'examen 87 ?

select id_etudiant 
from lpecom_examens 
where (id_examen = 45 and note > 11) or (id_examen = 87 and note > 12)

+-------------+
| id_etudiant |
+-------------+
|          33 |
|          31 |
|          31 |
|          36 |
|          34 |
+-------------+

## Exercice 6
Quelle requête utiliser pour afficher tous les enregistrements de la table lpecom_examens avec en plus, si c'est possible, le prénom et le nom de l'étudiant ?

select id_examen, prenom, nom  
from lpecom_examens 
join lpecom_etudiants on lpecom_examens.id_etudiant = lpecom_etudiants.id_etudiant;
+-----------+----------+----------+
| id_examen | prenom   | nom      |
+-----------+----------+----------+
|        45 | Joseph   | Biblo    |
|        87 | Ted      | Bundy    |
|        87 | Caroline | Martinez |
|        45 | Paul     | Bismuth  |
|        45 | Jean     | Michel   |
|        87 | Paul     | Bismuth  |
|        45 | Ted      | Bundy    |
|        45 | Caroline | Martinez |
|        87 | Joseph   | Biblo    |
+-----------+----------+----------+

##  Exercice 7
Quelle requête utiliser pour afficher les enregistrements de la table lpecom_examens avec le prénom et le nom de l'étudiant, uniquement quand les étudiants sont présents dans la table lpecom_etudiants ?

select id_examen, prenom, nom  
from lpecom_examens 
join lpecom_etudiants on lpecom_examens.id_etudiant = lpecom_etudiants.id_etudiant;

+-----------+----------+----------+
| id_examen | prenom   | nom      |
+-----------+----------+----------+
|        45 | Joseph   | Biblo    |
|        87 | Ted      | Bundy    |
|        87 | Caroline | Martinez |
|        45 | Paul     | Bismuth  |
|        45 | Jean     | Michel   |
|        87 | Paul     | Bismuth  |
|        45 | Ted      | Bundy    |
|        45 | Caroline | Martinez |
|        87 | Joseph   | Biblo    |
+-----------+----------+----------+

## Exercice 8
Quelle requête utiliser pour afficher uniquement le nom et le prénom de l'étudiant avec l'id : 30 avec la moyenne de ses deux examens dans une colonne moyenne ?

select lpecom_etudiants.id_etudiant, prenom, nom, avg(note) as moyenne  from lpecom_examens 
join lpecom_etudiants on lpecom_examens.id_etudiant = lpecom_etudiants.id_etudiant 
where lpecom_etudiants.id_etudiant = 30 group by lpecom_etudiants.id_etudiant;
+-------------+--------+-------+---------+
| id_etudiant | prenom | nom   | moyenne |
+-------------+--------+-------+---------+
|          30 | Joseph | Biblo |       9 |
+-------------+--------+-------+---------+


## Exercice 9
Quelle requête utiliser pour afficher les 3 meilleurs examens, du meilleur au moins bon, avec le prénom et le nom de l'étudiant associé ?

select id_examen, prenom, nom, note 
from lpecom_examens 
join lpecom_etudiants on lpecom_examens.id_etudiant = lpecom_etudiants.id_etudiant 
order by note 
desc limit 3;

+-----------+----------+----------+------+
| id_examen | prenom   | nom      | note |
+-----------+----------+----------+------+
|        45 | Caroline | Martinez |   17 |
|        45 | Paul     | Bismuth  | 15.5 |
|        87 | Paul     | Bismuth  |   14 |
+-----------+----------+----------+------+


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


# Initiation SQL - Exercices III / Deuxième partie
## Exercice 4
Quel est le résultat de la requête ci-dessous ?
SQL
SELECT f.id, f.nom AS film, r.prenom, r.nom
FROM lpecom_films f
LEFT JOIN lpecom_realisateurs r ON f.id_realisateur = r.id
ORDER BY f.id ASC;

Affiche l'id, le nom du film, le prenom le nom du réalisateur quand c'est possible trié par ordre ascendant de l'id du film af

## Exercice 5
Quel est le résultat de la requête ci-dessous ?
SQL
SELECT f.id, f.nom, fn.note
FROM lpecom_films f
LEFT JOIN lpecom_films_notes fn ON f.id = fn.id_film
ORDER BY f.id ASC;

Affiche l'id, le nom du film sa note si elle existe NULL sinon, trié par ordre ascendant 

## Exercice 6
Quel est le résultat de la requête ci-dessous ?
SQL
SELECT f.nom, r.prenom AS realisateur_prenom, r.nom AS realisateur_nom, AVG(fn.note) AS
moyenne_note
FROM lpecom_films f
INNER JOIN lpecom_realisateurs r ON f.id_realisateur = r.id
INNER JOIN lpecom_films_notes fn ON f.id = fn.id_film
WHERE f.id = 546;

Affiche le nom du film dont l'id est 546, le prénom et le nom du réalisateur et la moyene de ses notes

## Exercice 7
Quel est le résultat de la requête ci-dessous ?
SQL
SELECT r.nation, AVG(fn.note) AS moyenne_note
FROM lpecom_films f
INNER JOIN lpecom_realisateurs r ON f.id_realisateur = r.id
INNER JOIN lpecom_films_notes fn ON f.id = fn.id_film
WHERE r.nation = 'us';

Affiche la nationlité des réalisateurs dont la nationalité est 'us' ainsi que la moyene de leur notes 

## Exercice 8
Quel est le résultat de la requête ci-dessous ?
SQL
SELECT r.nation, MAX(fn.note) AS max_note
FROM lpecom_films f
INNER JOIN lpecom_realisateurs r ON f.id_realisateur = r.id
INNER JOIN lpecom_films_notes fn ON f.id = fn.id_film
WHERE r.nation = 'uk';

Affiche la nationlité des réalisateurs dont la nationalité est 'us' ainsi que la note maximale 

# Initiation SQL - Exercices IV / Quatrième partie

## Exercice 1
### Quelle requête utiliser pour retrouver la ville qui possède les coordonnées GPS suivantes : 48.66913724637683, 1.87586057971015 ?

SELECT * 
FROM `ipecom`.`lpecom_cities`
WHERE gps_lat = 48.66913724637683 and gps_lng = 1.87586057971015 

## Exercice 2
### Sans jointure, quelle requête utiliser pour calculer le nombre de villes que compte le département de l'Essonne ?
SELECT * 
FROM `ipecom`.`lpecom_cities` 
WHERE department_code = '91';

## Exercice 3
### Sans jointure, quelle requête utiliser pour calculer le nombre de villes en Île-de-France se terminant par '-le-Roi' ?
SELECT * 
FROM `ipecom`.`lpecom_cities` 
WHERE name like '%-le-Roi%' and 
((department_code > 91 and department_code <=95) 
or (department_code >= 75 and department_code <=78)) ;

## Exercice 4
### Combien de villes possèdent le code postal (zip_code) 77320 ? Renommez la colonne de résultat n_cities.
SELECT count(zip_code) as n_cities
FROM `ipecom`.`lpecom_cities` 
WHERE zip_code = 77320

## Exercice 5
### Sans jointure, quelle requête utiliser pour calculer le nombre de villes commençant par 'Saint-' en Seine-et-Marne ?
SELECT * 
FROM `ipecom`.`lpecom_cities` 
WHERE name like 'Saint-%'  and department_code = '77';


# Initiation SQL - Exercices VI à X
## Exercice 6
## Quelles villes possèdent un code postal (zip_code) compris entre 77210 et 77810 ?
SELECT * 
FROM `ipecom`.`lpecom_cities`
WHERE zip_code >= 77210 and zip_code <= 77810;


# Exercice 7
## Sans jointure, quelles sont les deux villes de Seine-et-Marne à avoir le code postal (zip_code) le
## plus grand ?
SELECT * 
FROM `ipecom`.`lpecom_cities`
WHERE department_code = 77
order by zip_code desc
limit 2

# Exercice 8
## Quel est le code postal (zip_code) le plus grand de la table lpecom_cities ?
SELECT * 
FROM `ipecom`.`lpecom_cities`
order by zip_code desc
limit 1

SELECT MAX(zip_code)
FROM `ipecom`.`lpecom_cities`

# Exercice 9
## Avec un seul WHERE et aucun OR, quelle est la requête permettant d'afficher les départements des
## régions ayant le code suivant : 75, 27, 53, 84 et 93 ? Le résultat doit afficher le nom du département
## ainsi que le nom et le slug de la région associée.
use ipecom;
SELECT d.name, lpecom_regions.name, r.slug FROM lpecom_departments as d
WHERE d.region_code in (75, 27, 53, 84, 93);
JOIN lpecom_regions as r on r.id = d.department_code;

# Exercice 10
## Point important, il sera sans doute nécessaire d'utiliser AS pour obtenir le résultat souhaité.
## Quelle requête utiliser pour obtenir en résultat, les noms de la région, du département et de chaque
## ville du département ayant pour code 77 ?

use ipecom;
select r.name, d.name, c.name 
from lpecom_cities as c 
join lpecom_departments as d on d.code = c.department_code 
join lpecom_regions as r on r.code = d.region_code 
where c.department_code = 77;


# Exercice 1
## Quelle requête utiliser pour afficher toutes les données de vaccination uniquement pour le 1er avril
## 2021 ?
use ipecom;
SELECT * 
FROM lpecom_covid
WHERE jour like '%04-01%';

# Exercice 2
## Quelle requête utiliser pour afficher toutes les données de vaccination uniquement pour le 1er avril
## 2021 avec le nom de la région concernée ?
use ipecom;
SELECT *
FROM lpecom_covid as c
JOIN lpecom_regions as r on r.id = c.id_region
WHERE jour like '%04-01%';

# Exercice 3
## Quelle requête utiliser pour afficher le nombre au cumulé de vaccination première dose toutes
## régions en 2020 ? Proposez également une solution pour les vaccination deuxième dose.
use ipecom;
SELECT SUM(n_cum_dose1)
FROM lpecom_covid
WHERE jour like '%2020-%';

use ipecom;
SELECT SUM(n_cum_dose1)
FROM lpecom_covid as c
WHERE year(jour) = 2020;

# Exercice 4
## Quelle requête SQL utiliser pour afficher le nombre au cumulé de vaccination première dose pour la
## région avec le code 93 uniquement pour le mois de mars 2021 ?
use ipecom;
SELECT SUM(n_cum_dose1)
FROM lpecom_covid as c
WHERE year(jour) = 2021 and month(jour) = 03 and id_region = 93;


# Exercice 5
## Quelle requête utiliser pour afficher le nombre au cumulé de vaccination deuxième dose pour la
## région avec le code 11 uniquement pour le mois de mars 2021 ?
use ipecom;
SELECT SUM(n_cum_dose1)
FROM lpecom_covid as c
WHERE year(jour) = 2021 and month(jour) = 03 and id_region = 11;

# Initiation SQL - Exercices VI / Sixième partie

## Exercice 6
## Quelle requête SQL utiliser pour afficher le record de vaccination première dose en une seule
## journée ?
## Avec une deuxième requête, afficher les informations de la région concernée, dont son nom, ainsi
## que le jour du record.
SELECT MAX(n_cum_dose1) FROM `ipecom`.`lpecom_covid`;

SELECT n_cum_dose1
FROM `ipecom`.`lpecom_covid`
order by n_cum_dose1 desc;

use ipecom;
SELECT r.name, c.jour, MAX(c.n_cum_dose1)
FROM lpecom_covid as c
JOIN lpecom_regions as r on r.id = c.id_region
order by n_cum_dose1 desc;

## Exercice 7
## Quelle requête utiliser pour afficher le record de vaccination deuxième dose en une seule journée ?
## Avec une deuxième requête, afficher les informations de la région concernée, dont son nom, ainsi
## que le jour du record.
SELECT MAX(n_cum_dose2) FROM `ipecom`.`lpecom_covid`;

SELECT  id, jour, n_cum_dose2 FROM lpecom_covid order by n_cum_dose2 desc limit 1;

use ipecom;
SELECT id,  MAX(n_cum_dose2) 
FROM lpecom_covid

use ipecom;
SELECT r.name, c.jour, c.n_cum_dose2
FROM lpecom_covid as c
left JOIN lpecom_regions as r on r.id = c.id_region
order by n_cum_dose2 desc
limit 1;


## Exercice 8
## Quelles requêtes permettent de connaitre quelle région possède la plus grande couverture de
## vaccination avec une dose et deux doses ?
## Vous aurez besoin de 4 requêtes pour répondre aux deux questions. Vous aurez besoin du résultat
## de la première requête pour la deuxième.
SELECT r.name, c.couv_dose1, C.id_region
FROM lpecom_covid as c
LEFT JOIN lpecom_regions as r on r.code = c.id_region
order by c.couv_dose1 desc
limit 1;

SELECT r.name, c.couv_dose2, C.id_region
FROM lpecom_covid as c
LEFT JOIN lpecom_regions as r on r.code = c.id_region
order by c.couv_dose2 desc
limit 1;

## Exercice 9
## Quelle requête utiliser pour afficher le nom de la région qui a le plus faible taux de couverture de
## vaccination avec une dose ?
## Vous aurez besoin de 2 requêtes pour répondre à la question.
SELECT r.name, c.couv_dose1, C.id_region
FROM lpecom_covid as c
LEFT JOIN lpecom_regions as r on r.code = c.id_region
order by c.couv_dose1 
limit 1;

## Exercice 10
## Quelle requête utiliser pour calculer la couverture moyenne entre les différentes régions à la date la
## plus récente, pour les vaccinations une et deux doses ?
## Vous renommez les colonnes de résultats : couverture_dose1_avg et couverture_dose2_avg.
SELECT  AVG(c.couv_dose1) as couverture_dose1_avg , AVG(c.couv_dose2) as couverture_dose2_avg
FROM lpecom_covid as c
order by jour desc

## Exercice 11
## Quelle requête utiliser pour afficher les données de vaccination des régions (avec leur nom) qui
## possèdent une couveture vaccinale supérieure à 15 %
## pour la première dose et supérieure à 5 % pour la deuxième dose ?
SELECT  r.name, AVG(c.couv_dose1), AVG(C.couv_dose2)
FROM lpecom_covid as c
LEFT JOIN lpecom_regions as r on r.code = c.id_region
WHERE c.couv_dose1 > 15 and C.couv_dose2 > 5
GROUP BY c.id_region
ORDER BY r.name

