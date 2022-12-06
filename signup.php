<!DOCTYPE html>
<html lang="lv">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <title>Login</title>
</head>
<body class="login_body">

    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    


    <?php

        require ("connect.php");

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        if (isset($_POST['gatavs'])) {
            $vards_ievade = $_POST['vards'];
            $uzvards_ievade = $_POST['uzvards'];
            $epasts_ievade = $_POST['epasts'];
            $parole_ievade = $_POST['parole'];
            $atkartota_parole__ievade = $_POST['atkartota_parole'];
            $telefons_ievade = $_POST['telefons'];
            $adrese_ievade = $_POST['adrese'];

            $parbaude = "SELECT * FROM lietotajs WHERE epasts = '$epasts_ievade'";

            $parbaudes_rezultats = mysqli_query($savienojums, $parbaude) or die("Nekorekts vaicajums!");

            if(mysqli_num_rows($parbaudes_rezultats) >=1 ) {
                echo "<div class = 'pazinojums sarkans'>Kluda! Tāds ē-pasts jau pastāv!</div>";
            } else {
                if(!empty($vards_ievade) && !empty($uzvards_ievade) && !empty($epasts_ievade) && !empty($parole_ievade) && 
                !empty($atkartota_parole_ievade) && ($parole_ievade == $atkartota_parole__ievade)) {
                    $registret_lietotaju_SQL = "INSERT INTO lietotajs(vards, uzvards, parole, epasts, telefons, dzim_datums, adrese)
                    VALUES ('$vards_ievade', '$uzvards_ievade', '$parole_ievade', '$epasts_ievade', '$telefons_ievade', '1997-11-11',
                    '$adrese_ievade')";

                    if(mysqli_query($savienojums, $registret_lietotaju_SQL)) {
                        echo "<div class = 'pazinojums zals'>Apsveicu! Esat reģistrējies veiksmīgi!</div>";
                    } else {
                        echo "<div class = 'pazinojums sarkans'>Radās kļūda! Reģistrācija neizdevās, kļūda sistēmā!</div>";
                    }

                } else {
                    echo "<div class = 'pazinojums sarkans'>Reģistrācija nav izdevusies! Ievades lauku problēmas!</div>";
                }
            }


        }
    } else {
        echo " <div class = 'pazinojums sarkans'> Kaut kas nogaja greizi, atgriezies 
        sakuma lapa un meigini velreiz </div>";
        header("Refresh:2; url=index.php");

    }

    ?>
        <form method="post">
        <h3>Reģistrēties</h3>

        <label for="username">Username</label>
        <input type="text" placeholder="Email or Phone" id="username">

        <label for="username">username</label>
        <input type="email" placeholder="Email" id="username">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password">

        <button>Reģistrēties</button>
        <div class="social">
          <div class="go"><i class="fab fa-google"></i>  Google</div>
          <div class="fb"><i class="fab fa-facebook"></i>  Facebook</div>
        </div>
    </form>

</body>
</html>