-- Initiation SQL - Exercices VI / Sixième partie

-- Exercice 6
-- Quelle requête SQL utiliser pour afficher le record de vaccination première dose en une seule
-- journée ?
-- Avec une deuxième requête, afficher les informations de la région concernée, dont son nom, ainsi
-- que le jour du record.
SELECT MAX(n_cum_dose1) FROM `ipecom`.`lpecom_covid`;

SELECT n_cum_dose1
FROM `ipecom`.`lpecom_covid`
order by n_cum_dose1 desc;

use ipecom;
SELECT r.name, c.jour, MAX(c.n_cum_dose1)
FROM lpecom_covid as c
JOIN lpecom_regions as r on r.id = c.id_region
order by n_cum_dose1 desc;

-- Exercice 7
-- Quelle requête utiliser pour afficher le record de vaccination deuxième dose en une seule journée ?
-- Avec une deuxième requête, afficher les informations de la région concernée, dont son nom, ainsi
-- que le jour du record.
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


-- Exercice 8
-- Quelles requêtes permettent de connaitre quelle région possède la plus grande couverture de
-- vaccination avec une dose et deux doses ?
-- Vous aurez besoin de 4 requêtes pour répondre aux deux questions. Vous aurez besoin du résultat
-- de la première requête pour la deuxième.
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

-- Exercice 9
-- Quelle requête utiliser pour afficher le nom de la région qui a le plus faible taux de couverture de
-- vaccination avec une dose ?
-- Vous aurez besoin de 2 requêtes pour répondre à la question.
SELECT r.name, c.couv_dose1, C.id_region
FROM lpecom_covid as c
LEFT JOIN lpecom_regions as r on r.code = c.id_region
order by c.couv_dose1 
limit 1;

-- Exercice 10
-- Quelle requête utiliser pour calculer la couverture moyenne entre les différentes régions à la date la
-- plus récente, pour les vaccinations une et deux doses ?
-- Vous renommez les colonnes de résultats : couverture_dose1_avg et couverture_dose2_avg.
SELECT  AVG(c.couv_dose1) as couverture_dose1_avg , AVG(c.couv_dose2) as couverture_dose2_avg
FROM lpecom_covid as c
order by jour desc

-- Exercice 11
-- Quelle requête utiliser pour afficher les données de vaccination des régions (avec leur nom) qui
-- possèdent une couveture vaccinale supérieure à 15 %
-- pour la première dose et supérieure à 5 % pour la deuxième dose ?
SELECT  r.name, AVG(c.couv_dose1), AVG(C.couv_dose2)
FROM lpecom_covid as c
LEFT JOIN lpecom_regions as r on r.code = c.id_region
WHERE c.couv_dose1 > 15 and C.couv_dose2 > 5
GROUP BY c.id_region
ORDER BY r.name