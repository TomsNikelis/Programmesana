<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Contact Us</title>
    <link rel="stylesheet" href="userProblem.css">
</head>

<body>

    <?php
    session_start();

    if ($_SESSION['username']) {

    ?>

        <?php




        $lietotajaID = $_SESSION["id"];

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            require("connect.php");

            if (isset($_POST['iesniegt'])) {
                $apraksts_ievade = $_POST['apraksts'];



                if (!empty($apraksts_ievade)) {
                    $registret_problemu_SQL = "INSERT INTO problema(apraksts, status, id_lietotajs, id_darbinieki)
                VALUES ('$apraksts_ievade', 'Nav pabeigts', '$lietotajaID', '1')";

                    if (mysqli_query($savienojums, $registret_problemu_SQL)) {
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

        <div class="container">
            <form method="post">
                <h1>Problēmas pievienošana</h1>
                <h4>Ievadiet problēmas aprakstu</h4>
                <textarea required name="apraksts"></textarea>
                <input type="submit" value="Send" id="button" name="iesniegt">
            </form>
        </div>




    <?php

    } else {
        header('Refresh: 0; url=userLogin.php');
    }

    ?>

</body>

</html>