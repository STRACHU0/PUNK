<?php
$nrPlyty = $_GET["nrPlyty"];
$wynik = mysqli_query($conn, "SELECT * FROM plyty WHERE plyty.IDPlyty=$nrPlyty");
        while ($wiersz = mysqli_fetch_array($wynik)){
           $spotifyURL = "https://open.spotify.com/embed/album/" . $wiersz["spotify_id"];
    
            echo '<iframe src="' . $spotifyURL . '" width="445" height="525" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>';
        }
?>