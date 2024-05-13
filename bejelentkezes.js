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
                return Promise.reject("Nem jó válasz érekezett az adatbázisból");
            }
            return response.json();
        })
        .then(function (response) {
            if (response.Error) {
                return response.Error;
            } else {
                return response;
            }
        });
}
//------------------------------

//Jelszo hashelése
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
//------------------------------

//Login funkció ellenőrzésekkel
function Login() {

    let regE = document.getElementById("regem");
    let pw = document.getElementById("fnjelsz");
    const regExpEmail = /[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$/;
    const regExpPw = /[A-Za-z0-9\.\_]{8,16}$/;

    if (regExpEmail.test(regE.value) && regExpPw.test(pw.value)) {

        hash(pw.value).then((valasz) => {
            let sql2 = `select f.felhasznaloNev,f.id,f.osztaly from felhasznalok f where f.email = '${regE.value}' && f.jelszo = '${valasz}'`;
            console.log(sql2);
            LekerdezesEredmenye(sql2).then((valasz2) => {
                console.log(valasz);
                if (valasz2) {
                    console.log(valasz2 +"valasz2");
                    var nev = "" + valasz2[0].felhasznaloNev;
                    console.log(nev);
                    let sql = `select f.jog from felhasznalok f where f.email = '${regE.value}'`;
                    console.log(sql);
                    // Beállítások a sessionStorage-ban
                    sessionStorage.setItem("email", regE.value);
                    sessionStorage.setItem("fn", valasz2[0].felhasznaloNev);
                    sessionStorage.setItem("login", true);
                    sessionStorage.setItem("fnid", valasz2[0].id);
                    sessionStorage.setItem("osztalya", valasz2[0].osztaly);

                    LekerdezesEredmenye(sql).then((valasz3) => {
                        if (valasz2[0].jog == "1") {
                            nev += "(admin)";
                            console.log(nev);
                            sessionStorage.setItem("jog", valasz3[0].jog);
                            FooldalgenReg(nev, regE.value);

                        } else {
                            sessionStorage.setItem("jog", valasz3[0].jog);
                            FooldalgenReg(nev, regE.value);
                        }
                    });
                    let sqlfeldatok = `Select f.id from feladatsor f where f.osztaly = '${sessionStorage.osztalya}'`;
                    TeendokLekerdez(sqlfeldatok);
                }
                else {
                    alert("hiba");
                }
            })
        });
        
    } else {
        if (!regExpEmail.test(regE)) {
            document.getElementById("emailspan").innerHTML =" *"; 
            document.getElementById("jelszospan").innerHTML =" *";
            //regE.style.border = "1px solid red";
        } if (!regExpPw.test(pw.value)) {
            document.getElementById("emailspan").innerHTML =" *"; 
            document.getElementById("jelszospan").innerHTML =" *";
        } if (!regExpEmail.test(regE) && !regExpPw.test(pw.value)) {
            document.getElementById("emailspan").innerHTML =" *"; 
            document.getElementById("jelszospan").innerHTML =" *";
        }
    }
}
function TeendokLekerdez(sqlfeldatok){
    LekerdezesEredmenye(sqlfeldatok).then((soridk) => {
        console.log(soridk);
    });
}
//------------------------------
async function Regisztracio() {
    document.getElementById("info").innerHTML = "";
    //Bejelentkezési információk lekérése
    let felhasznalo = document.getElementById("regFf");
    let email = document.getElementById("regem");
    let jelszo1 = document.getElementById("fnjelsz");
    let jelszo2 = document.getElementById("fnjelszujra");
    let osztaly = document.getElementById("aktOsztaly");
    var gomb = document.getElementById("bejelentkezes");
    gomb.disabled = true;
        let joe = true;
    //-----
    //---
    document.getElementById("fnspan").innerHTML ="";
    document.getElementById("emailspan").innerHTML ="";
    //document.getElementById("osztalyspan").innerHTML ="";
    document.getElementById("jelszospan").innerHTML ="";
    if (felhasznalo.value == "") {
        //felhasznalo.style.border = "1px solid red";
        document.getElementById("fnspan").innerHTML = " *";
    }else{
        const regExpFn = /[A-Za-z0-9]{5,16}$/;
        if (!regExpFn.test(felhasznalo.value)) {
            joe = false;
            gomb.disabled = true;
            console.log("hiba - fn");
            //felhasznalo.style.border = "1px solid red";
            document.getElementById("fnspan").innerHTML = " *Hibás felhasználónév!";
        } else {
            sql = "select count(*) as darab from felhasznalok where felhasznaloNev='" + felhasznalo.value + "'";
            console.log(sql);
            LekerdezesEredmenye(sql).then((valasz) => {
                if (valasz[0].darab != undefined && valasz[0].darab != 0) {
                    gomb.disabled = true;
                    joe = false;
                    //felhasznalo.style.border = "1px solid red";
                    document.getElementById("fnspan").innerHTML = " *A felhasználónév már létezik!";
                    //alert("A felhasználónév már létezik! Válassz mást vagy szólj a rendszergazdának")
                }
            });
        }
    }
    //---
    if(email.value == "")
    {
        //email.style.border = "1px solid red";
        document.getElementById("emailspan").innerHTML = " *";
    }else
    {
        const regExpEmail = /[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$/;
        if (!regExpEmail.test(email.value)) {
            joe = false;
            gomb.disabled = true;
            //email.style.border = "1px solid red";
            document.getElementById("emailspan").innerHTML = " *Hibás e-mail cím!";

        } else {
            sql = "select count(*) as darab from felhasznalok where email='" + email.value + "'";
            LekerdezesEredmenye(sql).then((valasz) => {
                if (valasz[0].darab != "0") {
                    joe = false;
                    document.getElementById("emailspan").innerHTML = " *Az emailcím már használatban van!";
                }
            });
        }
    }
    //----
    // if(osztaly.value =="")
    // {
    //     //osztaly.style.border = "1px solid red";
    //     document.getElementById("osztalyspan").innerHTML = " *";
    // }else{
    //     const osztalyRegExp = /^(9|10|11|12|13)([A-C]|K)$/;
    //     if (!osztalyRegExp.test(osztaly.value) && osztaly.value != "non") {
    //         joe = false;
    //         gomb.disabled = true;
    //         document.getElementById("osztalyspan").innerHTML = " *Hibás osztály! ";
    //     }
    // }

    //----
    if(jelszo1.value == "" && jelszo2.value == "")
    {
        document.getElementById("jelszospan").innerHTML = " *";
    }else
    {
        if (jelszo1.value != jelszo2.value) {
            joe = false;
            gomb.disabled = true;
            document.getElementById("jelszospan").innerHTML = " *A két jelszó nem egyezik!";

        } else {

            if (!ErosE(jelszo1.value, felhasznalo.value) && jelszo1.value != "" && felhasznalo.value != "") {
                joe = false;
                gomb.disabled = false;
                document.getElementById("jelszospan").innerHTML = " *A jelszavad gyenge! ";
            }
        }
    }
        //Ha minden jó adatbázisbaküldés,sessionstorageba mentés
        if (joe && felhasznalo.value != "" && email.value != "" && jelszo1.value != "" && jelszo2 != "" && osztaly.innerText != "Osztály") {
            hash(jelszo1.value).then((hash) => {
                let sql = "INSERT INTO felhasznalok VALUES (null, '" + email.value + "', '" + hash + "','" + felhasznalo.value + "', 0, '" + osztaly.innerText + "');";
                console.log(sql);
                LekerdezesEredmenye(sql).then((valasz) => {
                    console.log(valasz);
                    let sql2 = `SELECT f.id as id FROM felhasznalok f WHERE f.felhasznaloNev = '${felhasznalo.value}' AND f.jelszo = '${hash}' AND f.email = '${email.value}'`;
                    let utolsoid = `SELECT f.id FROM felhasznalok f ORDER BY f.id DESC LIMIT 1;`;
                    
                    console.log(sql2);
                    LekerdezesEredmenye(sql2).then((valasz) => {
                        if (valasz) {
                            console.log(`osztaly${osztaly.value}`);
                            console.log(valasz);
                            alert("Sikeres regisztráció");
                            let nev = document.getElementById("regFf").value;
                            sessionStorage.setItem("email", email.value);
                            sessionStorage.setItem("fn", felhasznalo.value);
                            sessionStorage.setItem("fnid", valasz[0].id);
                            sessionStorage.setItem("login", true);
                            sessionStorage.setItem("jog", "0");
                            sessionStorage.setItem("osztalya",osztaly.innerText);
                            LekerdezesEredmenye(utolsoid).then((idja) =>{
                                console.log(`fnidja(${idja[0].id})`);
                                sessionStorage.setItem("fnid",idja[0].id);
                            });
                            RegTeendokGet(sessionStorage.osztalya);
                            FooldalgenReg(nev, email);
                        } else {
                            alert("Nem sikerült a regisztráció");
                        }
                    });
                });
            });
        }
        //------------
    }
function RegTeendokGet(osztaly){
    let sqlfeldatok = `Select f.id from feladatsor f where f.osztaly = '${osztaly}'`;
    console.log(sqlfeldatok);
    console.log(osztaly);
    TeendokLekerdez(sqlfeldatok);
}
function JelszoMegvizsgal(jelsz1, jelsz2) {
    if (jelsz1 != jelsz2) {
        alert("nem egyezik a jelszo");
        location.reload();
    }
}
function ErosE(jelsz, felhasz) {
    if (jelsz.includes(felhasz)) {
        return false;
    }

    if (jelsz.length < 5 || jelsz.length > 16) {
        return false;
    }

    let kicsi = false;
    let nagy = false;
    let szam = false;
    let spec = false;
    for (let i = 0; i < jelsz.length - 2; i++) {
        if (jelsz[i].charCodeAt() + 1 === jelsz[i + 1].charCodeAt() && jelsz[i + 1].charCodeAt() + 1 === jelsz[i + 2].charCodeAt()) {
            return false;
        }
    }
    for (let i = 0; i < jelsz.length; i++) {
        if (/[a-z]/.test(jelsz[i])) {
            kicsi = true;
        } else if (/[A-Z]/.test(jelsz[i])) {
            nagy = true;
        } else if (/[0-9]/.test(jelsz[i])) {
            szam = true;
        } else if (/[\.\_]/.test(jelsz[i])) {
            spec = true;
        }
        else {
            return false;
        }
    }
    return kicsi && nagy && szam && spec;
}

function BejelentkezesGen() {
    let kartya = document.getElementById("kartya");
    kartya.innerHTML = " ";
    kartya.innerHTML = `
    <br>
            <h1>Bejelentkezés</h1>
            <br>
            <form id="regForm" class="col-12">
              <label for="regem">E-mail</label><span id="emailspan" style="color: red"></span>
              <br>
              <input type="email" class="form-control" id="regem" placeholder="E-mail">
              <br>
              <label for="fnjelsz">Jelszó</label><span style="color: red" id="jelszospan"></span>
              <br>
              <input type="password" class="form-control" id="fnjelsz" placeholder="Jelszó">
              <br>
              <div class="text-center">
              <input type="button" class="btn btn-light col-12" value="Bejelentkezés" onclick="Login()"><br>
              <a onclick="RegGen()" id="reg">Nincs még fiókom</a>
              <br>
              <a onclick="Login()" id="elfjeszo">Elfelejtettem a jelszavam</a>
          </form>`;
}

function RegGen() {
    let kartya = document.getElementById("kartya");
    kartya.innerHTML = " ";
    kartya.innerHTML = `
    <br>
    <h1>Regisztráció <span id="infoSpan" onmouseover="showHovered()" onmouseout="hideHovered()">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
            <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
        </svg>
    </span>
    <span id="hoveredInfoSpan" onclick="Info()" data-bs-toggle="modal" data-bs-target="#exampleModal">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle-fill" viewBox="0 0 16 16">
            <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16m.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2"/>
        </svg>
    </span> </h1>
    <br>
    <form id="regForm" class="col-12">
      <label for="regfn">Felhasználónév</label><span style="color: red;" id="fnspan"></span>
      <br>
      <input type="text" class="form-control col-sm-12" placeholder="Felhasználónév" id="regFf" required pattern="[A-Za-z0-9._]{5,16}$" style="height: 3rem;">

      <label for="regem">E-mail</label><span id="emailspan" style="color: red;"></span>
      <br>
      <input type="email" class="form-control" id="regem" placeholder="E-mail" required pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" style="height: 3rem;">
      <br>
      <label for="regem">Osztály</label><span id="osztalyspan" style="color: red;" style="height: 3rem;"></span>
      <br>
      <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" id="aktOsztaly">
    Osztály
  </button>
  <ul class="dropdown-menu" id="osztalyNevek">
    
  </ul>
</div>
      <br>
      <label for="fnjelsz">Jelszó</label><span id="jelszospan" style="color: red;" ></span>
      <br>
      <input type="password" class="form-control" id="fnjelsz" placeholder="Jelszó" required style="height: 3rem;">
      <br>
      <input type="password" class="form-control" id="fnjelszujra" placeholder="Jelszó újra" required style="height: 3rem;">
      <br>
      <div class="text-center">
      <input type="button" class="btn btn-light col-12" value="Regisztráció" onclick="Regisztracio()" style="height: 3rem;">
      <br>
      <a onclick="BejelentkezesGen()" id="bejelentkezes">Van már fiókom</a>
    </div>
  </form>
  <p id="info" class="text-center" style="color: black;"></p>`;
FeltoltOsztaly();
}
function FeltoltOsztaly(){
    console.log("osztalyNev");
    var hely = document.getElementById("osztalyNevek");
    let sql = `select * from osztalyok`;
    LekerdezesEredmenye(sql).then((valasz)=>{
        console.log(valasz, "osztaly");
        valasz.forEach(elem=>{
            hely.innerHTML +=
            `
        <li onclick="OsztalyAtir('${elem.osztaly}','${elem.id}')"><a class="dropdown-item" href="#" id="kateg${elem.id}">${elem.osztaly} </a></li>`;
        })

    })

}
function OsztalyAtir(osztaly,id){
    var gomb = document.getElementById("aktOsztaly");
  //document.getElementById("feltoltId").value=id;
  gomb.innerText = ""+osztaly;
}

function showHovered() {
    document.getElementById('infoSpan').style.display = 'none';
    document.getElementById('hoveredInfoSpan').style.display = 'inline';
}

function hideHovered() {
    document.getElementById('infoSpan').style.display = 'inline';
    document.getElementById('hoveredInfoSpan').style.display = 'none';
}

function Info() {
    const modal = new bootstrap.Modal(document.getElementById('exampleModal'));
    modal.show();
}
