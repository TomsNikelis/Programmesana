<?php

$servera_vards = "localhost";
$lietotaja_vards = "root";
$parole = "Parole1";
$db_vards = "itatbalsts";

$savienojums = mysqli_connect($servera_vards, $lietotaja_vards, 
$parole, $db_vards);

if(!$savienojums) {
    die("Pieslegties neizdevas: ".mysqli_connect_error());
} else {
    #echo "Savienojums ar datu bazi ir veiksmigi izveidots!";
}

?>