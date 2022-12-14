<?php
$page = "panelis";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="admin_styles.css">
    <title>Document</title>
</head>

<body>

    <?php
    session_start();
    require("../connect.php");
    if ($_SESSION['admin_username']) {


    ?>

        <header>
            <h3>Sveicināts <?php echo $_SESSION['admin_username']; ?>!</h3>
            <hr>
        </header>

        <section>

            <?php
            $klientu_skaitsSQL = "SELECT * FROM klientu_skaits";
            $atrisinatas_problemasSQL = "SELECT * FROM atrisinatas_problemas";
            $problemu_skaitSQL = "SELECT * FROM problemu_skaits";
            $darbinieku_skaitsSQL = "SELECT * FROM darbinieku_skaits";

            $klientu_skaits = mysqli_query($savienojums, $klientu_skaitsSQL);
            $atrisinatas_problemas = mysqli_query($savienojums, $atrisinatas_problemasSQL);
            $problemu_skaits = mysqli_query($savienojums, $problemu_skaitSQL);
            $darbinieku_skaits = mysqli_query($savienojums, $darbinieku_skaitsSQL);
            ?>

            </div>
            <div class="box">
                <h4>Reģistrējušies klienti</h4>
                <h4>Atrisinātās problemas</h4>
                <h4>Problēmas kopā</h4>
                <h4>Darbinieki</h4>
            </div>
            <div class="box">

                <?php
                while ($row = mysqli_fetch_array($klientu_skaits)) {
                    echo "<h3 class = 'h3class'>{$row['skaits']}</h4>";
                ?>
                <?php
                }
                while ($row = mysqli_fetch_array($atrisinatas_problemas)) {
                    echo "<h3 class = 'h3class'>{$row['skaits']}</h4>";
                ?>
                <?php
                }
                while ($row = mysqli_fetch_array($problemu_skaits)) {
                    echo "<h3 class = 'h3class'>{$row['skaits']}</h4>";
                ?>
                <?php
                }
                while ($row = mysqli_fetch_array($darbinieku_skaits)) {
                    echo "<h3 class = 'h3class'>{$row['skaits']}</h4>";
                ?>
                <?php
                }
                ?>








            </div>
        </section>

        <hr>

        <h1>Neizdarītās problēmas</h1>

        <section>
            <?php



            $problemaSQL = "SELECT lietotajs.vards,
            lietotajs.lietotajs_id, problema.apraksts, problema.problema_id, problema.status
             FROM problema
             INNER JOIN lietotajs ON lietotajs.lietotajs_id = problema.id_lietotajs
             WHERE problema.status = 'Nav pabeigts'";
            $atlasaProblemas = mysqli_query(
                $savienojums,
                $problemaSQL
            ) or die("Nekorekts vaicajums!");

            if (mysqli_num_rows($atlasaProblemas) > 0) {
                while ($row = mysqli_fetch_assoc($atlasaProblemas)) {
                    echo "

                    

                    <div class='parent'>

            <div class='box1'>
                <h4>{$row['vards']} Problēma:</h4>
            </div>
            <div class='box1'>
                <h4>{$row['apraksts']} 
                </h4>
            </div>

            <div class='box1'>
            <form action = 'finishProblem.php' method = 'post'>
                <button tpye = 'submit' name = 'izpildit'>Izpildīts</button>
                </form>
                                            
            </div>

            

        </div>

        <hr>

        
            ";
                    $_SESSION["problemaID"] = $row["problema_id"];
                }
            } else {
                echo "Visas problēmas datubāzē ir izpildītas";
            }


            ?>




        </section>

    <?php
    } else {
        header('Refresh: 0; url=adminLogin.php');
    }
    ?>
</body>

</html>