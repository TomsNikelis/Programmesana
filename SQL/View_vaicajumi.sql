/*Pirmas view vaicājums, attēlos informāciju kurā tiks prēmiju izmaksas status: 'Izdota' vai 'Nav izdota'. 
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

/*Pirmas view vaicājums, attēlos informāciju kurā tiks prēmiju izmaksas status: 'Izdota' vai 'Nav izdota'. 
Šis view palīdzēs, lai parādītu tos darbiniekus, kuru prēmijas vēl nav tikušas izmaksātas.*/
