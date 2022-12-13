<!DOCTYPE html>
<html lang="lv">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/userLogin.css">
    <title>Pieslēgties</title>
</head>
<body>

        <?php

					if (isset($_POST['autorizeties'])) {
						require ("connect.php");
						session_start();
						$lietotaja_vards = mysqli_real_escape_string($savienojums, $_POST['vards']);
						$parole = mysqli_real_escape_string($savienojums, $_POST['parole']);

						$sqlVaicajums = "SELECT * FROM lietotajs WHERE vards = '$lietotaja_vards'";
						$rezultats = mysqli_query($savienojums, $sqlVaicajums);

                       


						if(mysqli_num_rows($rezultats) == 1) {
							while($row = mysqli_fetch_array($rezultats)) {
								if(password_verify($parole, $row["parole"]) || ($parole == $row["parole"])) {
									$_SESSION["username"] = $lietotaja_vards;
                                    $_SESSION["id"] = $row["lietotajs_id"];
									header("location:lietotajs.php");
								} else {
									echo "Nepareizs lietotāja vārds vai parole!";
								} 
							}
						} else {
							echo "Nepareizs lietotaja vards vai parole!";
						}



					}

					if(isset($GET['logout'])) {
						session_destroy();
					}

				?>

<div class="parent">
            <h1>Pieslēgties</h1>
            <form method="post">
                <div class="textbox">
                    <input type="text" required name="vards">
                    <span></span>
                    <label>Vārds</label>
                </div>
                <div class="textbox">
                    <input type="password" required name="parole">
                    <span></span>
                    <label>Parole</label>
                </div>
                <input type="submit" value="Pieslēgties" name="autorizeties">
                <div class="signupSec">
                    Nēesi reģistrējies? <a href="userSignUp.php">Reģirstrēties</a>
                </div>
            </form>
        </div>
</body>
</html>