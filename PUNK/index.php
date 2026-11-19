<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <div id="container">
    <div id="naglowek">
        <div class="nav"><a href="index.php">PUNK'S NOT DEAD</a></div>
        <div class="nav">
            <ul>
                <?php
                    echo '<a href="index.php?strona=zespoly"><li>Gatunki</li></a>';
                    echo '<a></a><li>Historia</li></a>';
                    echo '<a></a><li>Forum</li></a>';
                ?>
            </ul>
        </div>

    </div>




        
    <div id="content">




        <?php

        require("db.php");
        
        $roz = ".php";

        if (!isset($_GET["strona"])) {
            $file = 'main';
        }
        else {
            $file = $_GET["strona"];
        }
        include("$file$roz");
        ?>
</div>


</div>




</body>
</html>