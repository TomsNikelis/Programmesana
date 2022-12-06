<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="lietotajs_styles.css">
    <title>Document</title>
</head>

<body>
    <header>
        <div class="index-box-container">
            <div class="logo">
                <h1>IT atbalsts</h1>
            </div>
            <li>
                <ul>Sakums</ul>
                <ul>Cenu katalogs</ul>
                <ul>Portfolio</ul>
                <ul>Kontakti</ul>
            </li>
        </div>
    </header>

    <?php
    $page = "sakums";

    require("connect.php");

    session_start();

    if($_SESSION['username']) {

    
    ?>

    <section>
        <div id="raksts">
            <p>Sveicināts <?php echo $_SESSION['username']; ?></p>
        </div>
    </section>

    <section class="sekcija">
        <div class="parent">
            <div class="box">
                <h3 class="uzraksts">Pieteikties palidzibai</h3>







                <?php
                $lietotajaID = $_SESSION["id"];

        

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        require ("connect.php");

        if (isset($_POST['iesniegt'])) {
            $apraksts_ievade = $_POST['aprakstss'];

            

                if(!empty($apraksts_ievade)) {
                    $registret_problemu_SQL = "INSERT INTO problema(apraksts, status, id_lietotajs, id_darbinieki)
                    VALUES ('$apraksts_ievade', 'Nav pabeigts', '$lietotajaID', '1')";

                    if(mysqli_query($savienojums, $registret_problemu_SQL)) {
                        echo "<div class = 'pazinojums zals'>Apsveicu! Problēma iesniegta!</div>";
                        header('Refresh: 1; url=lietotajs.php');
                    } else {
                        echo "<div class = 'pazinojums sarkans'>Radās kļūda! Problēmu ievietot neizdevās, kļūda sistēmā!</div>";
                    }

                } else {
                    echo "<div class = 'pazinojums sarkans'>Problēmas ievietošana nav izdevusies! Ievades lauku problēmas!</div>";
                }
            


        }
    } else {

    }

    ?>









                <div class="form-style-6">
                    <h1>IT atbalsta pieteikšana</h1>
                    <form method="post">
                        <textarea placeholder="Problēma" name="aprakstss"></textarea>
                        <input type="submit" value="Send" name="iesniegt" />
                    </form>
                </div>

            </div>
            <div class="box">
                <h3 class="uzraksts">Mani pieteikumi</h3>


                <?php 

            

            $problemaSQL = "SELECT * FROM problema WHERE id_lietotajs = $lietotajaID";
            $atlasaProblemas = mysqli_query($savienojums, 
            $problemaSQL) or die("Nekorekts vaicajums!");

            if(mysqli_num_rows($atlasaProblemas) > 0) {
                while ($row = mysqli_fetch_assoc
                ($atlasaProblemas)) {
                    echo "
                    
                    <div class='inner'>
                    <h5>Problēma</h5>
                    <h5>Statuss</h5>
                </div>
                <hr class='linija2'>
                <div class='inner'>
                    <p>{$row['apraksts']}</p>
                    <p>{$row['status']}</p>
                </div>
                <hr class='linija'>
                    
                    ";
                }
            } else {
                echo "Datusbaze nav ievietota neviena specialitate!";
            }
        
        
        ?>




            </div>

        </div>
    </section>

    <?php

    } else {
        echo "<section><div id = 'aizliegts'><h2>Tev nav peejas</h2></div></section>";
        header('Refresh: 20; url=index.php');
    }

?>

</body>

</html>