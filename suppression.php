<?php
$con = mysqli_connect("localhost","root","","bd_belle_vision") or die(mysqli_error());
extract($_POST);
$req="DELETE FROM eleve WHERE IdEleve = '$id';";
$res = mysqli_query($con,$req);
$nb = mysqli_affected_rows($con);
if ($nb > 0) {
    echo"suppresion effectue avec succes";
    
}
else {
    echo"echec suppresion";
    
    
}
?>