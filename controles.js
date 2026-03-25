function alpha(ch) {
  i = 0;
  ch = ch.toUpperCase();
  while (i < ch.length && ch[i] >= "A" && ch[i] <= "Z") {
    i++;
  }
  return i == ch.length;
}

function verif() {
  id = document.getElementById("id").value;
  ff = true;

  if (id.length != 4 || id[0] != "E") {
      alert("id");
    ff = false;
  }
  alert(ff);
  np = document.getElementById("np").value;
  if (alpha(np) == false || np.length < 10) {
    ff = false;
    alert("np");
  }
  tel = document.getElementById("tel").value;
  if (tel.length != 8) {
    alert("tel");
    ff = false;
  }
  return ff;
}
function verif2(){
    id2 = document.getElementById("id2").value;
  ff = true;

  if (id2.length != 4 || id2[0] != "E") {
    alert("id2");
    ff = false;
  }
  np2 = document.getElementById("np2").value;
  if (alpha(np2) == false || np2.length < 10) {
    ff = false;
    alert("np2");
  }
}
