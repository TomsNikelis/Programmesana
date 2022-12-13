<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style_lietotajs.css">

    <title>Document</title>
</head>

<body>

    <?php
    require("header.php");

    $page = "sakums";

    require("connect.php");

    

    if($_SESSION['username']) {

    
    ?>







    <?php
                $lietotajaID = $_SESSION["id"];


                

    ?>


<div class="row">
<div class="leftcolumn">

<?php 

            

$problemaSQL = "SELECT * FROM problema WHERE id_lietotajs = $lietotajaID ORDER BY problema_id DESC";
$atlasaProblemas = mysqli_query($savienojums, 
$problemaSQL) or die("Nekorekts vaicajums!");

if(mysqli_num_rows($atlasaProblemas) > 0) {
    while ($row = mysqli_fetch_assoc
    ($atlasaProblemas)) {
        echo " <div class='card'>
        <h2>Problēmas identifikācijas nr: {$row['problema_id']}</h2>
        <h5>Problēmas status: {$row['status']}</h5>
        
        
        <p><strong>Problēmas apraksts: </strong>{$row['apraksts']}</p>
    </div>";
    }
} else {
    echo "Datusbaze nav ievietota neviena specialitate!";
}


?>

        </div>
        <div class="rightcolumn">
            <div class="card">
                <h2>Problēmas pievienošana</h2>
                <a href="addProblem.php"><button class="button-24" role="button">Pievienot</button></a>
                <p>Nospiediet pogu, lai pievienotu problēmu!</p>
        </div>
    </div>












    

    <?php

    

    } else {
        echo "<section><div id = 'aizliegts'><h2>Tev nav peejas</h2></div></section>";
        header('Refresh: 0; url=index.php');
    }

?>

</body>

</html>