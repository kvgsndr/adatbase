1.Írassuk ki melyik járásban hány város található!
SELECT `jaras`, count(*) as 'db'
FROM `varos` 
GROUP by `jaras`;

2.Adjuk meg az elsõ 5 legnépesebb város nevét!
SELECT `vnev`
FROM `varos` 
ORDER by `nepesseg` DESC limit 5;

3.Írassuk ki, hány olyan város van, hol a lakosság meghaladja a 100000-et!
SELECT count(*) as db
FROM `varos` 
WHERE `nepesseg`>100000

4.Írassuk ki, hogy olyan város van, amelynek a területe kisebb mint 40km2!
SELECT count(*) as db
FROM `varos` 
WHERE `terulet`<40

5.Adjuk meg, melyik kistérségben hány város található!
SELECT `kisterseg`, COUNT(*) AS db 
FROM `varos` 
GROUP by `kisterseg`;


6.írassuk, ki melyik városnak a területe a legnagyobb!


7.írassuk ki, melyik 3 város a legkisebb!

