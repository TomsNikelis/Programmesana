<!DOCTYPE html>
<html lang="lv">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/userLogin.css">
    <title>Reģistrēties</title>
</head>

<body>



    <?php



    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        require("connect.php");

        if (isset($_POST['registreties'])) {
            $vards_ievade = $_POST['vards'];
            $uzvards_ievade = $_POST['uzvards'];
            $epasts_ievade = $_POST['epasts'];
            $parole_ievade = $_POST['parole'];
            $atkartota_parole_ievade = $_POST['atkartota_parole'];
            $telefons_ievade = $_POST['telefons'];
            $adrese_ievade = $_POST['adrese'];

            $parbaude = "SELECT * FROM lietotajs WHERE epasts = '$epasts_ievade'";

            $parbaudes_rezultats = mysqli_query($savienojums, $parbaude) or die("Nekorekts vaicajums!");

            if (mysqli_num_rows($parbaudes_rezultats) >= 1) {
                echo "<div class = 'pazinojums sarkans'>Kluda! Tāds ē-pasts jau pastāv!</div>";
            } else {
                if (
                    !empty($vards_ievade) && !empty($uzvards_ievade) && !empty($epasts_ievade) && !empty($parole_ievade) &&
                    !empty($atkartota_parole_ievade) && !empty($telefons_ievade) && !empty($adrese_ievade) && ($parole_ievade == $atkartota_parole_ievade)
                ) {
                    $registret_lietotaju_SQL = "INSERT INTO lietotajs(vards, uzvards, parole, epasts, telefons, dzim_datums, adrese)
                    VALUES ('$vards_ievade', '$uzvards_ievade', '$parole_ievade', '$epasts_ievade', '$telefons_ievade', '1997-11-11',
                    '$adrese_ievade')";

                    if (mysqli_query($savienojums, $registret_lietotaju_SQL)) {
                        echo "<div class = 'pazinojums zals'>Apsveicu! Esat reģistrējies veiksmīgi!</div>";
                        header('Refresh: 2; url=userLogin.php');
                    } else {
                        echo "<div class = 'pazinojums sarkans'>Radās kļūda! Reģistrācija neizdevās, kļūda sistēmā!</div>";
                    }
                } else {
                    echo "<div class = 'pazinojums sarkans'>Reģistrācija nav izdevusies! Ievades lauku problēmas!</div>";
                }
            }
        }
    } else {
    }

    ?>

    <div class="parent">
        <h1>Reģistrēties</h1>
        <form method="post">
            <div class="textbox">
                <input type="text" required name="vards">
                <span></span>
                <label>Vārds</label>
            </div>
            <div class="textbox">
                <input type="text" required name="uzvards">
                <span></span>
                <label>Uzvārds</label>
            </div>
            <div class="textbox">
                <input type="text" required name="epasts">
                <span></span>
                <label>Ē-pasts</label>
            </div>
            <div class="textbox">
                <input type="password" required name="parole">
                <span></span>
                <label>Parole</label>
            </div>
            <div class="textbox">
                <input type="password" required name="atkartota_parole">
                <span></span>
                <label>Atkārtota parole</label>
            </div>
            <div class="textbox">
                <input type="number" required name="telefons">
                <span></span>
                <label>Telefona numurs</label>
            </div>
            <div class="textbox">
                <input type="text" required name="adrese">
                <span></span>
                <label>Faktiskā adrese</label>
            </div>
            <input type="submit" value="Reģistrēties" name="registreties">
        </form>
        <div class="signupSec">
                <a href="index.php">Atgriesties uz sākumu</a>
            </div>
    </div>

</body>

</html>