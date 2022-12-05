/*Lietotāja izveide, kas piešķir privilēģijas strādāt un administrēt tikai izstrādāto datu bāzi.
Lietotajavards: administrators
Parole: Parole1*/

CREATE USER 'administrators'@'%' IDENTIFIED VIA mysql_native_password 
USING '***';GRANT USAGE ON *.* TO 'administrators'@'%' REQUIRE 
NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

GRANT ALL PRIVILEGES ON `itatbalsts`.* TO 'administrators'@'%' WITH GRANT OPTION;

