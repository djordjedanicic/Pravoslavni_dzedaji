
function loadPocetna(){
    if(localStorage.getItem("ulogovan")==null || localStorage.getItem("ulogovan")=="false"){
        localStorage.setItem("ulogovan","false");
    }else{   
        setKorisnika();
    }
}

function setKorisnika(){
    //iz baze uzeti prava imena
    document.getElementsByClassName('set_kor')[0].innerHTML="Korisnik: Pera Peric <br/> Bodovi: 125 <br/> <button onclick= \"odjaviKorisnika()\">Odjavi se</button>";
}

function setGosta(){
    //iz baze uzeti prava imena
    document.getElementsByClassName('set_kor')[0].innerHTML="<button onclick=\"window.location.href = 'reg_uloguj_se.html';\">Registruj/Uloguj Se</button>";
}

function loadMojeNarudz(){
    setKorisnika();
}

function loadMeni(){
    if(localStorage.getItem("ulogovan")==null || localStorage.getItem("ulogovan")=="false"){  
        setGosta();
    }else{
        setKorisnika();
    }
}

function MojeNarudz(){
    if(localStorage.getItem("ulogovan")=="false"){   
        alert("niste ulogovani, nemate prava pristupa opciji 'Moje Narudzbine'");
    }else{
        window.open("../html/mojeNarudzbine.html", "_self");
    }
}

function postaviKom(){
    if(localStorage.getItem("ulogovan")=="false"){   
        alert("niste ulogovani, nemate pravo da postavite komentar");
    }else{
       // ako moze dodaj u bazu i ucitaj ponovo stranicu
    }
}

function dodajUKorpu(){
    if(localStorage.getItem("ulogovan")=="false"){   
        alert("niste ulogovani, nemate prava pristupa opciji 'Dodaj u korpu'");
    }else{
       // ako moze dodaj u bazu 
    }
}

function oceniRestoran(){
    if(localStorage.getItem("ulogovan")=="false"){   
        alert("niste ulogovani, nemate prava pristupa opciji 'Oceni'");
    }else{
       // ako moze dodaj u bazu 
    }
}

function potvrdaLogovanja(){
    //vazi samo u if ako je sve dobro uneto u formi
    localStorage.setItem("ulogovan","true");
    window.open("../html/pocetna.html","_self");
}
function odjaviKorisnika(){
    localStorage.setItem("ulogovan","false");
    window.open("../html/pocetna.html","_self");
    setGosta();
}