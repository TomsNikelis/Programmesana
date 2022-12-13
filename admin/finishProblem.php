<?php
$page = "panelis";
?>

<?php
session_start();
if ($_SESSION['admin_username']) {

    require ("../connect.php");

                if($_SERVER['REQUEST_METHOD'] =='POST') {


                    $audzeknis = $_POST['izpildit'];
                    
                    $audzeknisSQL = "UPDATE problema
                    SET status = 'izpildits'
                    WHERE problema_id = $_SESSION[problemaID];
                    ";

                    $atlasaAudzeknis = mysqli_query($savienojums, $audzeknisSQL) or die("Nekorekts vaicajums");
                    header("Refresh: 0; url = adminPanel.php");

                    

                } else {
                    echo "<div class = 'pazinojums sarkans'>Kluda! Registracija nav izdevusies, kluda sistema</div>";
                    header("Refresh: 2; url = audzekni.php");
                }
            ?>


?>

    <?php
} else {
    header('Refresh: 0; url=adminLogin.php');
}
    ?>