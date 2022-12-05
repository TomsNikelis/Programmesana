/*Pirmas view vaicājums, attēlos informāciju kurā tiks parādīts prēmiju izmaksas status: 'Izdota' vai 'Nav izdota'. 
Šis view palīdzēs, lai parādītu tos darbiniekus, kuru prēmijas vēl nav tikušas izmaksātas.*/

CREATE VIEW Neizmaksatas_premijas AS

SELECT darbinieki.vards, darbinieki.uzvards, darbinieki.epasts, darbinieki.telefons, premijas.premija, premijas.status
FROM darbinieki
INNER JOIN premijas ON
darbinieki.darbinieki_id = premijas.id_darbinieki
WHERE premijas.status = 'Nav Izdota';

/*Otrais view vaicājums, attēlos informāciju kurā tiks parādīts darbinieku atvaļinājumu skaits dilstoša secībā. Šis vaicājums var būt
noderīgs, lai redzētu informāciju par darbinieku atvaļīnājumu skaitu, lai noteiktu, kurš darbinieks ir paņēmis pārāk daudz atvaļinājumus
vai arī kurš darbinieks ir paņēmis vismazāk.*/

CREATE VIEW Atvalinajumu_skaits AS

SELECT darbinieki.vards, darbinieki.uzvards, darbinieki.epasts, darbinieki.telefons, count(atvalinajumi_id) AS 'Atvaļinājumu skaits'
FROM darbinieki
INNER JOIN atvalinajumi ON
darbinieki.darbinieki_id = atvalinajumi.id_darbinieki
GROUP BY darbinieki.vards
ORDER BY count(atvalinajumi_id) DESC;

/*Trešais view vaicājums, attēlos informāciju kurā tiks parādītas tās problēmas, kurās vēl nav tikušas izdarītas ar statusu: 'Nav pabeigts'.
Kā arī tiks parādīts lietotājs, kurš iesniedzis šo problēmu un darbinieks, kam šī problēma ir jāizdara un abu kontaktinfromācija.*/

CREATE VIEW Atvalinajumu_skaits AS

SELECT darbinieki.uzvards AS 'Darbinieka uzvārds', darbinieki.telefons AS 'Darbinieka telefons', lietotajs.uzvards AS 'Problēmas iesniedzējs', lietotajs.telefons AS 'Problēmas sniedzēja telefons', problema.apraksts, problema.status
FROM darbinieki
INNER JOIN problema ON
darbinieki.darbinieki_id = problema.id_darbinieki
INNER JOIN lietotajs ON
lietotajs.lietotajs_id = problema.id_lietotajs
WHERE problema.status = 'Nav pabeigts';

