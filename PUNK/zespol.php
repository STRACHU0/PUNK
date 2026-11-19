<?php
$nr = $_GET["id"];
$wynik = mysqli_query($conn, "SELECT * FROM zespol, podgatunki WHERE 

zespol.gatunekZespol=podgatunki.IDPodgatunku AND
podgatunki.IDPodgatunku=$nr");

        while ($wiersz = mysqli_fetch_array($wynik)){
            echo '<div class="zespol">';
                echo '<a href="index.php?strona=zespolik&nrZespolu=' . $wiersz["id"] . '">';
                echo $wiersz["nazwaZespolu"];
                echo ' | ';
                echo $wiersz["podgatunek"];
                echo ' | ';
                echo $wiersz["rokPowstania"];
                echo '</a>';

            echo '</div>';
        }
?>  
