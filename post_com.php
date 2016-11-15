<?php

include('config.php');

if (!empty($_POST) && isset($_POST['lienCom'])) {
    $lienCom = htmlspecialchars($_POST['lienCom']);


    $req = "INSERT INTO `commentaires`(`desc_commentaire`,`date_commentaire`) VALUES ('" . $lienCom . "', NOW())";


}



if (mysqli_query($link, $req)) {
    echo '<center><p class=\'text-danger\'>Ajout effectué :)</p></center>';
    header('Location: index.php?oui');
} else {
    echo "Error: " . $req . "<br>" . mysqli_error($link);
    header('Location: index.php?non');
}

mysqli_close($link);



