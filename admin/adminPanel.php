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
if ($_SESSION['admin_username']) {


?>

    <header>
        <h3>Sveicināts <?php echo $_SESSION['admin_username']; ?>!</h3>
        <hr>
    </header>

    <section>

        </div>
        <div class="box">
            <h4>Reģistrējušies klienti</h4>
            <h4>Atrisinātās problemas</h4>
            <h4>Problēmas kopā</h4>
            <h4>Darbinieki</h4>
        </div>
        <div class="box">
            <h3>100</h4>
            <h3>50</h4>
            <h3>23</h4>
            <h3>5</h4>
        </div>
    </section>
    
    <hr>

    <h1>Neizdarītās problēmas</h1>

    <section>

        <div class="parent">

            <div class="box1">
                <h4>Toma Problēma:</h4>
            </div>
            <div class="box1">
                <h4>Nestrādā anti-virus,
                    vajadzīga datora apkope un iztīrīšana
                </h4>
            </div>

            <div class="box1">
                <button>Izpildīts</button>
            </div>

            

        </div>

        <hr>

        <div class="parent">

            <div class="box1">
                <h4>Toma Problēma:</h4>
            </div>
            <div class="box1">
                <h4>Nestrādā anti-virus,
                    vajadzīga datora apkope un iztīrīšana
                </h4>
            </div>

            <div class="box1">
                <button>Izpildīts</button>
            </div>

        </div>

        <hr>
    

    </section>

    <?php
} else {
    header('Refresh: 0; url=adminLogin.php');
}
    ?>
</body>
</html>