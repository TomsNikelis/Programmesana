/*PHP admin panelī parādīts reģistrēto lietotāju skaitu*/
use itatbalsts;
CREATE VIEW Klientu_skaits AS

SELECT count(lietotajs_id) as skaits
FROM lietotajs;

/*PHP admin panelī parādīs pabeigto problēmu skaitu*/

CREATE VIEW atrisinatas_problemas AS

SELECT count(problema_id) as skaits
FROM problema
WHERE status = 'izpildits';

/*PHP admin panelī parādīs visas problēmas kopā*/

CREATE VIEW problemu_skaits AS

SELECT count(problema_id) as skaits
FROM problema;

/*PHP admin panelī parādīs cik darbinieki ir kopā*/

CREATE VIEW darbinieku_skaits AS

SELECT count(darbinieki_id) as skaits
FROM darbinieki;