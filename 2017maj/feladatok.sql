1.�rassuk ki melyik j�r�sban h�ny v�ros tal�lhat�!
SELECT `jaras`, count(*) as 'db'
FROM `varos` 
GROUP by `jaras`;

2.Adjuk meg az els� 5 legn�pesebb v�ros nev�t!
SELECT `vnev`
FROM `varos` 
ORDER by `nepesseg` DESC limit 5;

3.�rassuk ki, h�ny olyan v�ros van, hol a lakoss�g meghaladja a 100000-et!
SELECT count(*) as db
FROM `varos` 
WHERE `nepesseg`>100000

4.�rassuk ki, hogy olyan v�ros van, amelynek a ter�lete kisebb mint 40km2!
SELECT count(*) as db
FROM `varos` 
WHERE `terulet`<40

5.Adjuk meg, melyik kist�rs�gben h�ny v�ros tal�lhat�!
SELECT `kisterseg`, COUNT(*) AS db 
FROM `varos` 
GROUP by `kisterseg`;


6.�rassuk, ki melyik v�rosnak a ter�lete a legnagyobb!


7.�rassuk ki, melyik 3 v�ros a legkisebb!

