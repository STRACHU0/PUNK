<?php
$wynik = mysqli_query($conn, "SELECT * FROM podgatunki");
        while ($wiersz = mysqli_fetch_array($wynik)){
            
            echo '<div class="zespol">';
                echo'<a href="index.php?strona=zespol&id=' . $wiersz["IDPodgatunku"] .  '"  >' .  $wiersz["podgatunek"] . '</a>';
            echo '</div>';
        }




?>  



