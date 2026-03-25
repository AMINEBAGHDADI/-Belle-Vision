<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Document</title>
</head>
<body class="body">
  <form action="maj.php" method="post" onsubmit="return verif()">
    <fieldset>
      <legend>Modifier les donnee d'un élève:</legend>
      <datalist name="id1">
          <option value="E001">E001</option>
          <option value="E001">E002</option>
          <option value="E001">E003</option>
          <option value="E001">E004</option>
      </datalist>
      <input class="input" type="text" name="id" id="id" placeholder="Identifiant Eleve" />
      <input type="text" class="input" id="np" name="np" placeholder="Nom & prénom" />
      <input class="input" type="date" name="dn" id="dn" placeholder="Date de Naissance" />
      <div class="element">
        <input type="radio" name="genre" id="m" value="M" checked />
        <label for="m">Masculin</label>
        <input type="radio" name="genre" id="f" value="F" />
        <label for="f">Feminin</label>
      </div>
      <input type="text" id="tel" name="tel" class="input" placeholder="Tel parent" />
      <input type="text" id="adr" name="adr" class="input" placeholder="Adresse" />
      <div id="boutton">
        <input type="submit" value="modifier" class="bt" />
        <input type="reset" value="Annuler" class="bt" />
      </div>
    </fieldset>
  </form>
</body>
</html>
<?php
$con = mysqli_connect("localhost","root","","bd_belle_vision") or die(mysqli_error());
extract($_POST);
$req="SELECT * FROM eleve WHERE IdEleve = '$id1';";
$res=mysqli_query($con,$req);
$nb = mysqli_num_rows($res);
if ($nb = 0) {
    echo"id inexistant";
}

    $req1="UPDATE eleve set IdEleve = '$id'AND nomprenom = '$np' AND Datenaiss = '$dn' AND Genre = '$genre' AND Adresse = '$adr'AND numtelp = '$tel WHERE IdEleve = '$id1'; ";
    $res=mysqli_query($con,$req1);
    $nb1 = mysqli_affected_rows($con);
    if ($nb1 > 0) {
    echo"modification avec succes";
}


?>