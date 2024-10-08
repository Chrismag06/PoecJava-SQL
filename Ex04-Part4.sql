-- Exercice 1
-- Quelle requête utiliser pour retrouver la ville qui possède les coordonnées GPS suivantes :
-- 48.66913724637683, 1.87586057971015 ?

SELECT * 
FROM `ipecom`.`lpecom_cities`
WHERE gps_lat = 48.66913724637683 and gps_lng = 1.87586057971015 

-- Exercice 2
-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes que compte le département de
-- l'Essonne ?
SELECT * 
FROM `ipecom`.`lpecom_cities` 
WHERE department_code = '91';

-- Exercice 3
-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes en Île-de-France se terminant
-- par '-le-Roi' ?
SELECT * 
FROM `ipecom`.`lpecom_cities` 
WHERE name like '%-le-Roi%' and 
((department_code > 91 and department_code <=95) 
or (department_code >= 75 and department_code <=78)) ;

-- Exercice 4
-- Combien de villes possèdent le code postal (zip_code) 77320 ? Renommez la colonne de résultat
-- n_cities.
SELECT count(zip_code) as n_cities
FROM `ipecom`.`lpecom_cities` 
WHERE zip_code = 77320

-- Exercice 5
-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes commençant par 'Saint-' en
-- Seine-et-Marne ?
SELECT * 
FROM `ipecom`.`lpecom_cities` 
WHERE name like 'Saint-%'  and department_code = '77';