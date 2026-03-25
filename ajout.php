<?php
$con = mysqli_connect("localhost","root","","bd_belle_vision") or die(mysqli_error());
extract($_POST);
$req = "INSERT INTO eleve(IdEleve,nomprenom,Datenaiss,Genre,Adresse,numtelp) values ('$id','$np','$dn','$genre','$adr','$tel');";
$res=mysqli_query($con,$req);
$nb = mysqli_affected_rows($con);
if ($nb = 0) {
    echo"echec ajout";
}
else {
    
    echo"ajjout effectué avec succes";
}



?>