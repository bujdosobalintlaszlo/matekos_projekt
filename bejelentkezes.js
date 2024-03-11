var login = true;

const AdatbazisEleres = () => {
    fetch("http://127.0.0.1:3000")
        .then(function (response) {
            if (!response.ok) {
                alert("Nem jó válasz érekezett az adatbázisból");
                return Promise.reject("Nem jó válasz érekezett az adatbázisból");
            }
            return response.json();
        })
        .then(function (response) {
            if (response.Error) {
                alert(response.Error);
                console.log(response.Error);
            } else {
                alert("Az adatbázis kapcsolat él, az adatokat eléri.");
                console.log("Táblák");
                response.forEach(element => {
                    console.log(element);
                });
            }
        });
}

AdatbazisEleres();

const LekerdezesEredmenye = (sql) => {
    //const lekerdezes = document.getElementById("lekerdezesText").value;
    const data = { lekerdezes: sql };
    return fetch("http://127.0.0.1:3000/lekerdezes", {
        method: "POST",
        headers: {
            'Content-Type': 'application/json; charset=utf-8',
        },
        body: JSON.stringify(data)
    })
        .then(function (response) {
            if (!response.ok) {
                //alert("Nem jó válasz érekezett az adatbázisból");
                return Promise.reject("Nem jó válasz érekezett az adatbázisból");
            }
            return response.json();
        })
        .then(function (response) {
            if (response.Error) {
                //alert(response.Error);
                return response.Error;
            } else {
                return response;
            }
        });
}

async function hash(string) {
    const utf8 = new TextEncoder().encode(string);
    return crypto.subtle.digest('SHA-256', utf8).then((hashBuffer) => {
        const hashArray = Array.from(new Uint8Array(hashBuffer));
        const hashHex = hashArray
            .map((bytes) => bytes.toString(16).padStart(2, '0'))
            .join('');
        return hashHex;
    });
}

function Login() {
    let regE = document.getElementById("regem").value;
    let pw = document.getElementById("fnjelsz").value;
    hash(pw).then((valasz)=>{
        let sql2 = `select f.felhasznaloNev from felhasznalok f where f.email = '${regE}' && f.jelszo = '${valasz}'`;
        console.log(sql2);
        LekerdezesEredmenye(sql2).then((valasz) => {
            console.log(valasz);
            if(valasz)
            {
                var nev = ""+valasz[0].felhasznaloNev;
                console.log(nev);
                let sql = `select f.jog from felhasznalok f where f.email = '${regE}'`;
                console.log(sql);
                localStorage.setItem("email",regE);
                localStorage.setItem("fn",valasz[0].felhasznaloNev);
                localStorage.setItem("login",true);
                //localStorage.setItem("osztaly",valasz[0].osztaly);
                
                LekerdezesEredmenye(sql).then((valasz2) => {
                  if(valasz2[0].jog == "1"){
                    nev +="(admin)";
                    console.log(nev);
                    localStorage.setItem("jog",valasz[0].jog);
                    FooldalgenReg(nev,regE);

                }else{
                    localStorage.setItem("jog",valasz[0].jog);
                    FooldalgenReg(nev,regE);
                }
            });
            }
            else
            {
                alert("hiba");
            }
        });
    });
}


function Regisztracio() {
    let felhasznalo = document.getElementById("regFf").value;
    let email = document.getElementById("regem").value;
    let jelszo1 = document.getElementById("fnjelsz").value;
    let jelszo2 = document.getElementById("fnjelszujra").value;
    
    JelszoMegvizsgal(jelszo1, jelszo2);

    hash(jelszo1).then((valasz1)=>{
    let reg = `Insert into `
    let sql = `SELECT * FROM felhasznalok f WHERE f.felhasznaloNev = '${felhasznalo}' AND f.jelszo = '${valasz1}' AND f.email = '${email}'`;
    console.log(sql);
    LekerdezesEredmenye(sql).then((valasz) => {
        if (valasz) {
            alert("Sikeres regisztráció");
            let nev = document.getElementById("regFf").value;
            FooldalgenReg(nev,email);
            localStorage.setItem("email",valasz[0].email);
            localStorage.setItem("fn",valasz[0].felhasznaloNev);
            localStorage.setItem("login",true);
            localStorage.setItem("osztaly",valasz[0].osztaly);
            localStorage.setItem("jog",valasz[0].jog);
        } else {
            alert("Nem sikerült a regisztráció");
        }
    });
  });
}

function JelszoMegvizsgal(jelsz1,jelsz2)
{
    if(jelsz1 != jelsz2)
    {
        alert("Nem egyezik a két jelszó");
        location.reload();
    }
}


function BejelentkezesGen()
{
    let kartya = document.getElementById("kartya");
    kartya.innerHTML =" ";
    kartya.innerHTML = `
    <br>
    <h1>Bejelentkezés</h1>
    <br>
    <form id="regForm" class="col-6 col-sm-12">
      <label for="regem">E-mail</label>
      <br>
      <input type="email" class="form-control" id="regem" placeholder="E-mail">
      <br>
      <label for="fnjelsz">Jelszó</label>
      <br>
      <input type="password" class="form-control" id="fnjelsz" placeholder="Jelszó">
      <br>
      <div class="text-center">
      <input type="button" class="btn btn-light col-12" value="Bejelentkezés" onclick="Login()"><br>
      <a onclick="RegGen()" id="reg">Nincs még fiókom</a>
      <br>
      <a onclick="Login()" id="elfjeszo">Elfelejtettem a jelszavam</a>
  </form>
  `;
}

function RegGen()
{
    let kartya = document.getElementById("kartya");
    kartya.innerHTML =" ";
    kartya.innerHTML =`
    <br>
    <h1>Regisztráció</h1>
    <br>
    <form id="regForm" class="col-6 col-sm-12">
    <label for="regfn">Felhasználónév</label>
    <br>
    <input type="text" class="form-control" placeholder="Felhasználónév" id="regFf">
    <label for="regem">E-mail</label>
    <br>
    <input type="email" class="form-control" id="regem" placeholder="E-mail">
    <br>
    <label for="regem">Osztály</label>
    <br>
    <input type="text" class="form-control" id="regem" placeholder="12C">
    <br>
    <label for="fnjelsz">Jelszó</label>
    <br>
    <input type="password" class="form-control" id="fnjelsz" placeholder="Jelszó">
    <br>
    <input type="password" class="form-control" id="fnjelszujra" placeholder="Jelszó újra">
    <br>
    <div class="text-center">
    <input type="button" class="btn btn-light col-12" value="Regisztráció" onclick="Regisztracio()">
    <br>
    <a onclick="BejelentkezesGen()" id="bejelentkezes">Van már fiókom</a>
  </div>`;

}


function FooldalgenReg(nev,email){
    document.body.innerHTML +="";
    document.body.innerHTML =`<nav class="navbar navbar-expand-lg" id="nav">
    <div class="container-fluid">
      <a class="navbar-brand" href="#" id="fnhely"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
      <span><li class="nav-item">
        <input type="button" value="Feladatok" class="btn btn-light">
      </li></span>
      <span><li class="nav-item">
        <input type="button" value="Dolgozatok" class="btn btn-light">
      </li></span>
      <span><li class="nav-item">
        <input type="button" value="Kijelentkezés" class="btn btn-light" onclick="Kijelentkezes()">
      </li></span>
      
      <span><li class="nav-item"><div class="dropdown">
      <button class="btn btn-secondary dropdown-toggle" id="feladatGomb" type="button" data-bs-toggle="dropdown" aria-expanded="false">
        Feladatok
      </button>
      <ul class="dropdown-menu">
      <div class="form-check">
      <br>
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        Abszolútérték, gyök
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Bizonyítások
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Egyenletek, egyenlőtlenségek, egyenletrendszerek
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Egyszerűsítések, átalakítások
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Értelmezési tartomány, értékkészlet
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Exponenciális és logaritmusos feladatok
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Függvények, analízis
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Halmazok
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Kombinatorika
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Logika, gráfok
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Síkgeometria
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Sorozatok
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Statisztika
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Számelmélet
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Szöveges feladatok
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Térgeometria
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Trigonometria
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
          Valószínűségszámítás
      </label>
    </div>
      </ul>
    </div>
      </ul>
      </li></span>
      </div>

      <span style="display :none" id="feltoltes"><li class="nav-item">
        <input type="button" value="Feltöltés" class="btn btn-light">
      </li></span>
    </ul>
      </div>
    </div>
  </nav>
  <div>


      
      <div class="col-12" id="feladatok">
        <br>
      </div>

  </div>
    `;
  let sql = `select f.jog from felhasznalok f where f.email = '${email}'`;
  console.log(sql);
  LekerdezesEredmenye(sql).then((valasz) => {
    console.log(valasz);
    if (valasz[0].jog == "1") {
        document.getElementById("feltoltes").style.display="block";
      }
});
  document.getElementById("fnhely").innerHTML=nev;
  FeladatListaz();

}

var feladatok = [];
function FeladatListaz() {
  let sqlFeladatok = `Select * from feladatok`;

  LekerdezesEredmenye(sqlFeladatok).then((valasz) => {
      valasz.forEach(adat => {
          feladatok.push({
              id: adat.id,
              temakor: adat.temakor,
              megoldas: adat.megoldas,
              nehezseg: adat.nehezseg,
              pontszam: adat.pontszam,
              nev: adat.nev,
              check: false
          });
      });

      FeladatokFeltolt(); // Csak itt hívd meg a FeladatokFeltolt függvényt
  });
}

function FeladatokFeltolt() {
  var hely = document.getElementById("feladatok");
  feladatok.forEach(adattag => {
      let div = document.createElement("div");
      div.id = adattag.id;
      div.classList.add("feladat");
      //div.classList.add("col-8");

      // Call Szinez function to get color and text
      let szinResult = Szinez(adattag.nehezseg);

      div.innerHTML = `<div class="sorszam" id="${adattag.id}">
          <p class="sorszamP">${adattag.id}.</p>
      </div>

      <div class="feladatNev col-2">
          <p class="feladatNevP">${adattag.nev}</p>
      </div>

      <div class="nehezseg col-2">
          <p class="nehezsegP" style="color: ${szinResult.color}">${szinResult.text}</p>
      </div>

      <div class="temakor col-1">
          <p class="temakorP">${adattag.temakor}</p>
      </div>

      <div class="pontszam col-2">
          <p class="pontszamP">${adattag.pontszam}-pont</p>
      </div><br>`;

      hely.appendChild(div);
      hely.appendChild(document.createElement("br"));
  });
}

function Szinez(nehezseg) {
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



function FeladatokSzurese(){

}



function Kijelentkezes(){
  localStorage.clear();
  location.reload();
}