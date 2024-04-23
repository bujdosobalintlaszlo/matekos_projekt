function FooldalgenReg(nev,email){
    document.body.innerHTML +="";
    document.body.innerHTML =`<nav class="navbar navbar-expand-lg" id="nav">
    <div class="container-fluid">
      <a class="navbar-brand" href="#" id="fnhely"></a><span>   </span>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
      <span><li class="nav-item">
      <button class="btn btn-light terKoz" type="button" data-bs-toggle="dropdown" aria-expanded="false" onclick="Feladatok()">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="blue" class="bi bi-list" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5"/>
</svg> Feladatok
      </button>
      </li></span>
      <span id="dolgozat" style="display :none"><li class="nav-item">
      <button class="btn btn-light terKoz" type="button" data-bs-toggle="dropdown" aria-expanded="false" onclick="DolgozatokGen()">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-clipboard2-plus" viewBox="0 0 16 16">
  <path d="M9.5 0a.5.5 0 0 1 .5.5.5.5 0 0 0 .5.5.5.5 0 0 1 .5.5V2a.5.5 0 0 1-.5.5h-5A.5.5 0 0 1 5 2v-.5a.5.5 0 0 1 .5-.5.5.5 0 0 0 .5-.5.5.5 0 0 1 .5-.5z"/>
  <path d="M3 2.5a.5.5 0 0 1 .5-.5H4a.5.5 0 0 0 0-1h-.5A1.5 1.5 0 0 0 2 2.5v12A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-12A1.5 1.5 0 0 0 12.5 1H12a.5.5 0 0 0 0 1h.5a.5.5 0 0 1 .5.5v12a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5z"/>
  <path d="M8.5 6.5a.5.5 0 0 0-1 0V8H6a.5.5 0 0 0 0 1h1.5v1.5a.5.5 0 0 0 1 0V9H10a.5.5 0 0 0 0-1H8.5z"/>
</svg> Dolgozat
      </button>
      </li></span>
      <span><li class="nav-item">
      <button class="btn btn-light terKoz" type="button" data-bs-toggle="dropdown" aria-expanded="false" onclick="Kijelentkezes()">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="orange" class="bi bi-person-x" viewBox="0 0 16 16">
  <path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0M8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4m.256 7a4.5 4.5 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10q.39 0 .74.025c.226-.341.496-.65.804-.918Q8.844 9.002 8 9c-5 0-6 3-6 4s1 1 1 1z"/>
  <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m-.646-4.854.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 0 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 .708-.708"/>
</svg> Kijelentkezés
      </button>
      </li></span>
      <span style="display :none" id="feltoltes"><li class="nav-item">
      <button class="btn btn-light terKoz" type="button" data-bs-toggle="dropdown" aria-expanded="false" onclick="Feltoltes()">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="green" class="bi bi-file-earmark-plus" viewBox="0 0 16 16">
  <path d="M8 6.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V11a.5.5 0 0 1-1 0V9.5H6a.5.5 0 0 1 0-1h1.5V7a.5.5 0 0 1 .5-.5"/>
  <path d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5z"/>
</svg> Feltöltés
      </button>
      </li></span>
      <span><li class="nav-item">
      <button class="btn btn-light terKoz" type="button" data-bs-toggle="dropdown" aria-expanded="false" onclick="Mod()">
       Mód
      </button>
      </li></span>
      <span style="display :none" id="dolgozatKitoltes"><li class="nav-item">
      <button class="btn btn-light terKoz" type="button" data-bs-toggle="dropdown" aria-expanded="false" onclick="DolgozatKitoltes()">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-file-earmark-plus" viewBox="0 0 16 16">
  <path d="M8 6.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V11a.5.5 0 0 1-1 0V9.5H6a.5.5 0 0 1 0-1h1.5V7a.5.5 0 0 1 .5-.5"/>
  <path d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5z"/>
</svg> Dolgozatkitöltés
      </button>
      </li></span>
      <span id="lenyilo"><li class="nav-item">
      <span><li class="nav-item"><div class="dropdown">
      <button class="btn btn-light dropdown-toggle terKoz" type="button" data-bs-toggle="dropdown" aria-expanded="false">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="black" class="bi bi-bookmarks" viewBox="0 0 16 16">
  <path d="M2 4a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v11.5a.5.5 0 0 1-.777.416L7 13.101l-4.223 2.815A.5.5 0 0 1 2 15.5zm2-1a1 1 0 0 0-1 1v10.566l3.723-2.482a.5.5 0 0 1 .554 0L11 14.566V4a1 1 0 0 0-1-1z"/>
  <path d="M4.268 1H12a1 1 0 0 1 1 1v11.768l.223.148A.5.5 0 0 0 14 13.5V2a2 2 0 0 0-2-2H6a2 2 0 0 0-1.732 1"/>
</svg> Témák
      </button>
      <ul class="dropdown-menu" id="temakor">
    
        </ul>
  </div>
    </ul>
      </li></span>
      </div>
      </div>
    </div>
  </nav>
  <div class="scrollmenu" style="vertical-align: middle;">
  <input type="button" value="Összes" style="color:black;" class="btn btn-light terKoz" id="osszes" onclick="Osszes()">
  <input type="button" value="Középszint" style="color:green;" class="btn btn-light terKoz" id="konnyuSzur" onclick="KozepSzur()">
  <input type="button" value="Emeltszint" style="color:orange" class="btn btn-light terKoz" id="emeltSzur" onclick="EmeltSzur()">
  <input type="button" value="Verseny feladat" style="color:red" class="btn btn-light terKoz" id="versenySzur" onclick="VersenySzur()">
  <input type="button" value="Jelöletlen nehézség" style="color:black" class="btn btn-light terKoz" id="jelSzur" onclick="JelSzur()">
  <input type="button" value="Kategória" style="color:brown" data-bs-toggle="dropdown" aria-expanded="false" class="btn btn-light terKoz dropdown-toggle" id="kategoriaSzur" onclick="KategoriaSzur()">
  <input type="button" value="Random feladat" style="color:purple" class="btn btn-light terKoz" id="randomFeladat" onclick="RandomFeladat()">
</div>
  </div>
    <div class="container col-12" id="jobb">
    </div>
    </div>
    `;
  KategoriakGen();
  let sql = `select f.jog from felhasznalok f where f.email = '${email}'`;
  console.log(sql);
  LekerdezesEredmenye(sql).then((valasz) => {
    console.log(valasz);
    if (valasz[0].jog == "1") {
        document.getElementById("feltoltes").style.display="block";
        document.getElementById("dolgozat").style.display="block";
      }else
      {
        document.getElementById("dolgozatKitoltes").style.display="block";
      }
  });
  document.getElementById("fnhely").innerHTML=nev;
  FeladatListaz();
  
  }
//Feladatok az adatbázisból  
var feladatok = [];
var megoldottFeladatok = [];
//Adatbázisból lekéri az összes feladatot, ezeket pedig a feladatok tömbben tárolja el.
function FeladatListaz() {
    let sqlFeladatok = `select if(f.id in (select f.id 
        from feladatok f , felhaszesfeladkapcs ff
        where f.id=ff.feladatId),"1","0") as megoldott, f.*
        from feladatok f;`;
    LekerdezesEredmenye(sqlFeladatok).then((valasz) => {
        valasz.forEach(adat => {
            feladatok.push({
                id: adat.id,
                temakorId: adat.temakorID,
                megoldas: adat.megoldas,
                nehezseg: adat.nehezseg,
                pontszam: adat.pontszam,
                nev: adat.nev,
                feladat: adat.feladat,
                megoldott: adat.megoldott
            });
        });
        console.log(feladatok,"feladatok: ");
        FeladatokFeltolt("jobb");
    });

}
function EloreLep()
{

}

function VisszaLep()
{
    
}

function FeladatokFeltolt(divId) {    
    var hely = document.getElementById(divId);
    feladatok.forEach(adattag => {
        let div = document.createElement("div");
        div.id = adattag.id;
        if(adattag.megoldott == 0){
            div.style.opacity = 1;
        }else{
            div.style.opacity = 0.70;
            div.style.backgroundColor = "lightgreen";
            // div.style.color = "darkgreen";
            // div.style.fontWeight = "bold";
        }
        div.classList.add("feladat");
        div.classList.add("col-12");
        div.classList.add("row");
        // div.classList.add("megoldott");
        div.addEventListener("click",FeladatMegjelenit);
        let szinResult = Szinez(adattag.nehezseg);
        div.innerHTML = `
            <div class="sorszam col-3 text-center" style="background-color: ${szinResult.color}">
                <p>${adattag.id}.</p>
            </div>
            <div class="feladatNev col-5">
                <p>${adattag.nev}</p>
            </div>
            <div class="feladatTemakor col-5">
                <p id="${adattag.id}temakorP"></p>
            </div>
        `;
        TemakorBeiir(adattag.temakorId,`${adattag.id}temakorP`);
        hely.appendChild(div);
        hely.appendChild(document.createElement("br"));
    });
}
function TemakorBeiir(id, pId){
    let sql = `select temakor from temakor t where t.id = ${id}`;
    LekerdezesEredmenye(sql).then((valasz) =>{
        document.getElementById(pId).innerHTML = valasz[0].temakor;   
    });
}
//A kártyák nehézségi színtjét jelzi színekkel. Ezt nehézség alapján dönti el.
function Szinez(nehezseg) 
{
let result = {
    color: "",
    text: ""
};

if (nehezseg == "0") {
    result.color = "green";
    result.text = "Középszint";
} else if (nehezseg == "1") {
    result.color = "orange";
    result.text = "Emeltszint";
} else if (nehezseg == "2") {
    result.color = "red";
    result.text = "Verseny feladat";
} else {
    result.color = "black";
    result.text = "-";
}

return result;
}
  
  //Kijelentkezés(sessionstorage ürítés + frissíti az oldalt)
function Kijelentkezes(){
sessionStorage.clear();
location.reload();
}
  
//Oldalfrissítés esetén meghívja a BejelentkezettE() functiont ami eldöndi, hogy be van-e jelenkezve és annak megfelelően generálja ki az oldalt. 
window.onload = function() {
BejelentkezettE();
};

//Frissítés utáni generálás bejelentkezési állapottól függően
function BejelentkezettE() {
const nev = sessionStorage.getItem("fn");
const email = sessionStorage.getItem("email");
if (nev && email) {
    FooldalgenReg(nev, email);
} else {
    console.log("Nem vagy bejelentkezve!");
}
}

//Dropdown menüben lévő kategóriák kigenerálása
function KategoriakGen(){
var hely = document.getElementById("temakor");
let sql = `select * from temakor`
LekerdezesEredmenye(sql).then((valasz) =>{
    valasz.forEach(elem =>{
        hely.innerHTML +=
        `<div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="${elem.id}" onclick="TemakorSzures(${elem.id})">
                <label class="form-check-label" for="flexCheckDefault">${elem.temakor}</label>
        </div>`;
        });
    }); 
}

function Feladatok()
{

}

function DolgozatKitoltes()
{

}

function RandomFeladat(){
    let sql = `SELECT MIN(id) AS minID, MAX(id) AS maxID FROM feladatok;`;
    LekerdezesEredmenye(sql).then((ids)=>{
        let id = randomNum(ids[0].minID,ids[0].maxID);
        RandomFeladatMegjelenit(id);
    });
}

var randomNum = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;
