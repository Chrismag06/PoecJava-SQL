-- Exercice 1
-- Quelle requête utiliser pour afficher toutes les données de vaccination uniquement pour le 1er avril
-- 2021 ?
use ipecom;
SELECT * 
FROM lpecom_covid
WHERE jour like '%04-01%';

-- Exercice 2
-- Quelle requête utiliser pour afficher toutes les données de vaccination uniquement pour le 1er avril
-- 2021 avec le nom de la région concernée ?
use ipecom;
SELECT *
FROM lpecom_covid as c
JOIN lpecom_regions as r on r.id = c.id_region
WHERE jour like '%04-01%';

-- Exercice 3
-- Quelle requête utiliser pour afficher le nombre au cumulé de vaccination première dose toutes
-- régions en 2020 ? Proposez également une solution pour les vaccination deuxième dose.
use ipecom;
SELECT SUM(n_cum_dose1)
FROM lpecom_covid
WHERE jour like '%2020-%';

use ipecom;
SELECT SUM(n_cum_dose1)
FROM lpecom_covid as c
WHERE year(jour) = 2020;

-- Exercice 4
-- Quelle requête SQL utiliser pour afficher le nombre au cumulé de vaccination première dose pour la
-- région avec le code 93 uniquement pour le mois de mars 2021 ?
use ipecom;
SELECT SUM(n_cum_dose1)
FROM lpecom_covid as c
WHERE year(jour) = 2021 and month(jour) = 03 and id_region = 93;


-- Exercice 5
-- Quelle requête utiliser pour afficher le nombre au cumulé de vaccination deuxième dose pour la
-- région avec le code 11 uniquement pour le mois de mars 2021 ?
use ipecom;
SELECT SUM(n_cum_dose1)
FROM lpecom_covid as c
WHERE year(jour) = 2021 and month(jour) = 03 and id_region = 11;