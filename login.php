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

    <form method="post">
        <h3>Pieslēgties</h3>

        <?php

					if (isset($_POST['autorizeties'])) {
						require ("connect.php");
						session_start();
						$lietotaja_vards = mysqli_real_escape_string($savienojums, $_POST['vards']);
						$parole = mysqli_real_escape_string($savienojums, $_POST['parole']);

						$sqlVaicajums = "SELECT * FROM lietotajs WHERE vards = '$lietotaja_vards'";
						$rezultats = mysqli_query($savienojums, $sqlVaicajums);

                        echo "$parole";


						if(mysqli_num_rows($rezultats) == 1) {
							while($row = mysqli_fetch_array($rezultats)) {
								if(password_verify($parole, $row["parole"]) || ($parole == $row["parole"])) {
									$_SESSION["username"] = $lietotaja_vards;
									header("location:index.php");
								} else {
									echo $row["parole"];
								} 
							}
						} else {
							echo "Nepareizs lietotaja vards vai parosssle!";
						}



					}

					if(isset($GET['logout'])) {
						session_destroy();
					}

				?>

        <label for="username">Vards</label>
        <input type="text" placeholder="Vards" id="username" name="vards">

        <label for="password">Parole</label>
        <input type="password" placeholder="Parole" id="password" name="parole">

        <button name="autorizeties">Pieslēgties</button>
        <div class="social">
          <div class="go"><i class="fab fa-google"></i>  Google</div>
          <div class="fb"><i class="fab fa-facebook"></i>  Facebook</div>
        </div>
    </form>
    
</body>
</html>