<!DOCTYPE html>
<html>
    <head>


        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Music App</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="testing.css">


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
                    <li><a href="#">Par mums</a></li>
                    <li><a href="#">Kontakti</a></li>
                    <li><a href="#"><?php echo $_SESSION['username']; ?></a></li>
                   <button><li><a href="lietotajs.php">Profils</a></li>  </button>      
        
                </ul>
            </div>
        </div>
    
    <section>
        
    </section>


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
            <li><a href="#">Par mums</a></li>
            <li><a href="#">Kontakti</a></li>
            <li><a href="userLogin.php">Pieslēgties</a></li>
           <button><li><a href="lietotajs.php">Profils</a></li>  </button>      

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