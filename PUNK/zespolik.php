<?php
$nr = $_GET["nrZespolu"];
$wynik = mysqli_query($conn, "SELECT * FROM zespol, podgatunki WHERE 
zespol.id=$nr AND
zespol.gatunekZespol=podgatunki.IDPodgatunku");

        while ($wiersz = mysqli_fetch_array($wynik)){
            echo '<div class="zespolik">';

            echo '<div class="zdjecie">';
                echo '<img src="img/' . $wiersz["id"] . '.jpg">';
            echo '</div>';

            echo '<div class="info">';
            echo $wiersz["nazwaZespolu"]; echo '<br>';
            echo $wiersz["historia"];
            echo '</div>';
            echo '</div>';


            
            
        }
         echo '<div class="zespolikInfo">';
         echo '<div class="lewa">';
        $wynik = mysqli_query($conn, "SELECT * FROM sklad WHERE sklad.zespol=$nr");
        while ($wiersz = mysqli_fetch_array($wynik)){
           
            
                echo '<div class="info2">';
                    echo $wiersz["stanowisko"] . ': ';
                    echo $wiersz["imienazwisko"];
                echo '</div>';
            
        }
        echo '</div>';

        echo '<div class="prawa">';
                echo 'Płyty: ';

                $wynik = mysqli_query($conn, "SELECT * FROM plyty WHERE plyty.zespolPlyta=$nr AND czyWyswietlac=1");
        while ($wiersz = mysqli_fetch_array($wynik)){
           
                echo '<div class="plyty">';

                
                echo '<div class="plytyZdjecie">';
                echo '<img src="img/plyty/' . $wiersz["IDPlyty"] . '.jpg">';
                echo '</div>';

                echo '<div class="plytyText">';
                echo '<a href="index.php?strona=plyta&nrPlyty=' . $wiersz["IDPlyty"] . '">';
                echo $wiersz["nazwaPlyty"]; echo '<br>';
                echo $wiersz["rokWydania"];
                echo '</a>';
                echo '</div>';
        
                echo '</div>';
        }
        
        echo '<h3>Brakuje jakiejś płyty? Dodaj ją:<br></h3><a href="index.php?strona=dodawaniePlyty&nrZespolu=' . $nr . '">dodaj</a>';
        
        echo '</div>';
        echo '</div>';

?>  
