
<div id="dodawanie">
<form method="post" action="dodane.php">
<?php
$nrZespolu = $_GET["nrZespolu"];
?>

    <input type="text" name="nazwa" placeholder="nazwa plyty"><br>
    <input type="text" name="spotifyID" placeholder="spotifyID albumu"><br>
    <input type="text" name="ilpios" placeholder="ilość piosenek"><br>
    <input type="text" name="rokWydania" placeholder="rok wydania"><br>


zespół: 
    <select name="zespol">
        
        <?php
            $wynik = mysqli_query($conn, "SELECT * FROM zespol");
            while ($wiersz = mysqli_fetch_array($wynik)){
                echo '<option name="zespol" value="' . $wiersz["id"] . '">' . $wiersz["nazwaZespolu"] . '</option>';
        }
    ?>
    </select><br>

    Wydawnictwo: <select name="wytwornia">
        
        <?php
            $wynik = mysqli_query($conn, "SELECT * FROM wytwornie");
            while ($wiersz = mysqli_fetch_array($wynik)){
                echo '<option name="wytwornia" value="' . $wiersz["IDWytworni"] . '">' . $wiersz["nazwaWytworni"] . '</option>';
        }
    ?>
    </select><br>


    <input type="submit" value="Zatwierdź" id="przycisk">
<a href="index.php"><button type="button" >Anuluj</button></a>
</form>
</div>
