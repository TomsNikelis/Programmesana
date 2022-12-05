/*Pirmā procedūrā iegūs visu informāciju par lietotāju ievadot viņa uzvārdu, ši procedūra var būt noderīga, lai apskatītu informāciju par
kādu lietotāju vajadzības gadijumā.*/

DELIMITER //

CREATE PROCEDURE iegutLietotajuInfo(
	IN lietotajaUzvards VARCHAR(45)
)
BEGIN

	SELECT * FROM lietotajs
    WHERE lietotajs.uzvards = lietotajaUzvards;

END //

DELIMITER ;

/*Otrā procedūrā ievadot grupas nosaukumu parādīs tos darbiniekus, kuri ir pievienoti tajā grupā. Šī procedūra var būt noderīga, lai
parādītu informāciju par darbiniekiem, kuri ir noteiktajā grupā.*/

DELIMITER //

CREATE PROCEDURE iegutDarbiniekuNoGrupas(
	IN darbiniekuGrupa VARCHAR(45)
)
BEGIN

	SELECT darbinieki.darbinieki_id, darbinieki.vards, darbinieki.uzvards, darbinieki.telefons, darbinieki.epasts, grupas.nosaukums
    FROM darbinieki
    INNER JOIN grupas ON
    darbinieki.id_grupa = grupas.grupas_id
    WHERE grupas.nosaukums LIKE CONCAT('%',darbiniekuGrupa,'%');

END //

/* Trešā procedūrā ievadot darbinieka uzvārdu parādīs cik noteiktajam darbiniekam ir bijuši atvaļinājumi(skaits), ši procēdūra varētu būt
noderīga, kad darbinieks pieprasa atvaļinājumu, tad paradīs cik šim darbiniekam ir iepriekš bijuši atvaļinājumi.*/

DELIMITER //

CREATE PROCEDURE darbiniekaAtvalinajumuSkaits(
	IN darbiniekaUzvards VARCHAR(45)
)
BEGIN

	SELECT darbinieki.darbinieki_id, darbinieki.vards, darbinieki.uzvards, darbinieki.telefons, darbinieki.epasts, count(atvalinajumi.id_darbinieki) AS "Atvaļinājumu skaits"
    FROM darbinieki
    INNER JOIN atvalinajumi ON
    darbinieki.darbinieki_id = atvalinajumi.id_darbinieki
    WHERE darbinieki.uzvards = darbiniekaUzvards
    GROUP BY darbinieki.darbinieki_id;

END //