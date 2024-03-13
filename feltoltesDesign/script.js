function BeirCim()
{
    var nev = document.getElementById("feladatNevForm").value;
    console.log(nev);
    document.getElementById("FeladatNev").innerHTML = `${nev}`;
}

function BeirFeladat() {
    var feladatInput = document.getElementById("feladatForm").value;
    var arr = feladatInput.split("|");
    console.log(arr);
    var mathjaxFormattedFeladat = "\\( " + arr[1] + " \\)";
    var feladatText = "A feladat: " + arr[0];

    document.getElementById("FeladatNev").innerHTML = feladatText + "<br>" + mathjaxFormattedFeladat;
    MathJax.typeset();
}

function BeirMegoldas()
{
    var nev = document.getElementById("megoldasForm").value;
    console.log(nev);
    document.getElementById("megoldas").placeholder = `${nev}`;
}

function BeirNehezeseg()
{
    var nev = document.getElementById("szintForm").value;
    console.log(nev);
    document.getElementById("szint").innerHTML = `${nev}`;
}

function BeirPontszam()
{
    var nev = document.getElementById("pontszamForm").value;
    console.log(nev);
    document.getElementById("pontszam").innerHTML = `${nev}`;
}

