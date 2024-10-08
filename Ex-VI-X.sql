-- Initiation SQL - Exercices VI à X
-- Exercice 6
-- Quelles villes possèdent un code postal (zip_code) compris entre 77210 et 77810 ?
SELECT * 
FROM `ipecom`.`lpecom_cities`
WHERE zip_code >= 77210 and zip_code <= 77810;


-- Exercice 7
-- Sans jointure, quelles sont les deux villes de Seine-et-Marne à avoir le code postal (zip_code) le
-- plus grand ?
SELECT * 
FROM `ipecom`.`lpecom_cities`
WHERE department_code = 77
order by zip_code desc
limit 2

-- Exercice 8
-- Quel est le code postal (zip_code) le plus grand de la table lpecom_cities ?
SELECT * 
FROM `ipecom`.`lpecom_cities`
order by zip_code desc
limit 1

SELECT MAX(zip_code)
FROM `ipecom`.`lpecom_cities`

-- Exercice 9
-- Avec un seul WHERE et aucun OR, quelle est la requête permettant d'afficher les départements des
-- régions ayant le code suivant : 75, 27, 53, 84 et 93 ? Le résultat doit afficher le nom du département
-- ainsi que le nom et le slug de la région associée.
use ipecom;
SELECT d.name, lpecom_regions.name, r.slug FROM lpecom_departments as d
WHERE d.region_code in (75, 27, 53, 84, 93);
JOIN lpecom_regions as r on r.id = d.department_code;

-- Exercice 10
-- Point important, il sera sans doute nécessaire d'utiliser AS pour obtenir le résultat souhaité.
-- Quelle requête utiliser pour obtenir en résultat, les noms de la région, du département et de chaque
-- ville du département ayant pour code 77 ?

use ipecom;
select r.name, d.name, c.name 
from lpecom_cities as c 
join lpecom_departments as d on d.code = c.department_code 
join lpecom_regions as r on r.code = d.region_code 
where c.department_code = 77;