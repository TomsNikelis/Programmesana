<!DOCTYPE html>
<html>
    <head>


        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Music App</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="headerStyle.css">


    </head>

    <?php
    session_start();

    if ($_SESSION['username']) {

    ?>

    <body>


        <div class="header1">

          <div class="head2">              
             <h1>IT atbalsts</h1>

            </div>
            <div class="head3">

                <ul>
                    <li><a href="index.php">Sākums</a></li>
                    <li><a href="#">Kontakti</a></li>
                    <li><a href="lietotajs.php"><?php echo $_SESSION['username']; ?></a></li>
                   <button class="poga"><li><a href="logout.php">Logout</a></li>  </button>     
                </ul>
            </div>
        </div>
    



    </body>

    <?php
    } else {



    ?>

<body>


<div class="header1">

  <div class="head2">              
     <h1>IT atbalsts</h1>

    </div>
    <div class="head3">

        <ul>
            <li><a href="index.php">Sākums</a></li>
            <li><a href="#">Kontakti</a></li>
            <li><a href="userLogin.php">Pieslēgties</a></li>
            <button class="poga"><li><a href="userSignUp.php">Reģistrēties</a></li>  </button>      

        </ul>
    </div>
</div>

<section>

</section>


</body>

<?php
    }
?>
</html>