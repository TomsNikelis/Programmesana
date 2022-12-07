<html lang="en-US">
<head>
  <meta charset="utf-8">
    <title>AdminLogin</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,700">
    <link rel="stylesheet" href="login.css">
</head>

<?php

if (isset($_POST['admin_login'])) {
    require ("../connect.php");
    session_start();
    $lietotaja_vards = mysqli_real_escape_string($savienojums, $_POST['vards']);
    $parole = mysqli_real_escape_string($savienojums, $_POST['parole']);

    $sqlVaicajums = "SELECT * FROM administracija WHERE lietotajvards = '$lietotaja_vards'";
    $rezultats = mysqli_query($savienojums, $sqlVaicajums);


    if(mysqli_num_rows($rezultats) == 1) {
        while($row = mysqli_fetch_array($rezultats)) {
            if(password_verify($parole, $row["parole"]) || ($parole == $row["parole"])) {
                $_SESSION["admin_username"] = $lietotaja_vards;
                $_SESSION["admin_id"] = $row["darbinieki_id"];
                header("location:adminPanel.php");
            } else {
                echo "Nepareizs lietotāja vārds vai parole!";
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

    <div id="login">
      <form name='form-login' method="post">
          <input type="text" id="user" placeholder="Vārds" name="vards">
          <input type="password" id="pass" placeholder="Parole" name="parole">
        
        <input type="submit" value="Pieslēgties" name="admin_login">
        

</form>