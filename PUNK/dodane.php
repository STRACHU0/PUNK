<?php
require("db.php");
$nazwa = $_POST["nazwa"];
$spotifyID = $_POST["spotifyID"];
$zespol = $_POST["zespol"];
$wytwornia = $_POST["wytwornia"];
$ilpios = $_POST["ilpios"];
$rokWydania = $_POST["rokWydania"];


mysqli_query($conn, "INSERT INTO plyty (IDPlyty, nazwaPlyty, iloscPiosenek, zespolPlyta, spotify_id, rokWydania) VALUES ('', '$nazwa', '$ilpios', '$zespol', '$spotifyID', '$rokWydania')");

?>

