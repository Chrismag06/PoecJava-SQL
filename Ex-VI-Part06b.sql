-- Exercice 1
-- Sans jointure, quelle requête SQL utiliser pour afficher toutes les données de vaccination du 14
-- février 2021 uniquement, pour le département de Seine-et-Marne (77) ?
USE ipecom;
SELECT * 
FROM lpecom_covid_vaccin 
WHERE dep_code = 77 and jour = '2021-02-14' 

-- Exercice 2
-- Sans jointure, quelle requête SQL utiliser pour afficher le cumul de toutes les données de
-- vaccination pour tous les vaccins du 14 février 2021 uniquement, pour les départements de
-- l'Essonne (91) et de la Seine-et-Marne (77) ?
USE ipecom;
SELECT * 
FROM lpecom_covid_vaccin 
WHERE (dep_code = 77 or dep_code = 91) and jour = '2021-02-14' 

-- Exercice 3
-- Sans jointure, quelle requête utiliser pour afficher la somme des vaccinations première dose
-- réalisées uniquement avec le vaccin AstraZeneka pour le mois de février 2021 pour le département
-- de la Seine-et-Marne (77) ?
USE ipecom;
SELECT sum(n_cum_dose1)
FROM lpecom_covid_vaccin 
WHERE dep_code = 77 and month(jour) = '02' and year(jour) = '2021' and vaccin = 3 

USE ipecom;
SELECT *
FROM lpecom_covid_vaccin 
WHERE dep_code = 77 and month(jour) = '02' and year(jour) = '2021' and vaccin = 3 

-- Exercice 4
-- Sans jointure, quelle requête utiliser pour afficher la somme des vaccinations deuxième dose
-- réalisées avec le vaccin AstraZeneka ou Moderna pour le mois de mars 2021 pour le département
-- de la Seine-et-Marne (77) ?
USE ipecom;
SELECT sum(n_cum_dose2)
FROM lpecom_covid_vaccin 
WHERE dep_code = 77 and month(jour) = '03' and year(jour) = '2021' and (vaccin = 2 or vaccin = 3) 

USE ipecom;
SELECT *
FROM lpecom_covid_vaccin 
WHERE dep_code = 77 and month(jour) = '03' and year(jour) = '2021'  and (vaccin = 2 or vaccin = 3) 

-- Exercice 5
-- Sans jointure, quelle requête utiliser pour afficher le record de vaccination première dose avec un
-- type de vaccin en une seule journée ?
-- Avec une deuxième requête qui exploitera une jointure, afficher toutes les informations possibles
-- pour cette journée record et sur le type de vaccin.
SELECT MAX(n_cum_dose1) 
FROM lpecom_covid_vaccin 

SELECT dep_code, jour, n_cum_dose1, vaccin, t.nom
FROM lpecom_covid_vaccin as v
JOIN lpecom_covid_vaccin_type as t ON t.id = v.vaccin
ORDER BY n_cum_dose1 desc
LIMIT 1

-- Exercice 6
-- Sans jointure, quelle requête utiliser pour afficher le record de vaccination deuxième dose avec un
-- type de vaccin en une seule journée ?
-- Avec une deuxième requête qui exploitera deux jointures, afficher toutes les informations possibles
-- pour cette journée record, sur le type de vaccin et sur le département.
SELECT MAX(n_cum_dose2) 
FROM lpecom_covid_vaccin 

SELECT dep_code, d.name, jour, n_cum_dose2, vaccin, t.nom
FROM lpecom_covid_vaccin as v
JOIN lpecom_covid_vaccin_type as t ON t.id = v.vaccin
JOIN lpecom_departments as d ON d.code = v.dep_code
ORDER BY n_cum_dose2 desc
LIMIT 1

-- Exercice 7
-- Quelle requête permet de savoir quel département possède le plus grand nombre d'injections
-- première dose pour le vaccin AstraZeneka ?
-- Avec une deuxième requête, afficher uniquement les colonnes suivantes :
-- - le nom du vaccin ;
-- - le jour ;
-- - le nom et le code du département ;
-- - le nombre cumulé d'injections.

SELECT MAX(n_cum_dose2)
FROM lpecom_covid_vaccin 
WHERE lpecom_covid_vaccin.vaccin = 3

SELECT *
FROM lpecom_covid_vaccin 
ORDER BY n_cum_dose2 desc
LIMIT 1

SELECT t.nom, v.jour, d.name, dep_code, n_cum_dose1 
FROM lpecom_covid_vaccin as v
JOIN lpecom_covid_vaccin_type as t ON t.id = v.vaccin
JOIN lpecom_departments as d ON d.code = v.dep_code
WHERE v.vaccin = 3
ORDER BY n_cum_dose1 desc
LIMIT 1

-- Exercice 8
-- Quelle requête permet de savoir quel département a eu le moins de vaccinations première dose
-- avec le vaccin COMIRNATY Pfizer/BioNTech ?
-- Avec une deuxième requête, afficher uniquement les colonnes suivantes :
-- - le nom du vaccin ;
-- - le jour ;
-- - le nom et le code du département ;
-- - le nombre cumulé d'injections.
SELECT *
FROM lpecom_covid_vaccin v
WHERE v.vaccin = 1 
ORDER BY n_cum_dose1 
LIMIT 1


SELECT t.nom, v.jour, d.name, dep_code, n_cum_dose1 
FROM lpecom_covid_vaccin as v
JOIN lpecom_covid_vaccin_type as t ON t.id = v.vaccin
JOIN lpecom_departments as d ON d.code = v.dep_code
WHERE v.vaccin = 1
ORDER BY n_cum_dose1 
LIMIT 1

-- Exercice 9
-- Quelle requête permet de connaître la moyenne de vaccinations première dose dans tous les
-- départements pour le vaccin Moderna ?
-- Renommer la colonne de résultat avec avg_moderna.
SELECT AVG(n_cum_dose1) as avg_moderna
FROM lpecom_covid_vaccin v
WHERE v.vaccin = 2 

-- Exercice 10
-- Quelle requête utiliser pour afficher les départements (avec leur nom) qui possèdent un nombre
-- d'injections deuxième dose avec le vaccin Moderna supérieur à 9000
-- ou un nombre d'injections première dose avec le vaccin COMIRNATY Pfizer/BioNTech supérieur à
-- 120000 ? Vous aurez besoin de deux jointures.
SELECT t.nom, v.jour, d.name, dep_code, n_cum_dose1 
FROM lpecom_covid_vaccin as v
JOIN lpecom_covid_vaccin_type as t ON t.id = v.vaccin
JOIN lpecom_departments as d ON d.code = v.dep_code
WHERE v.vaccin = 1
ORDER BY n_cum_dose1 
LIMIT 1