# Tagsági alkalmazás

A feladatban meg szeretnénk oldani egy jóga egyesület jógázóinak nyilvántartását. Kétféle jógázó van: bérletes és napi jegyes. Az egyes jógaalkalmak elején ezeket regisztrálni kell a rendszerben az esetleges új bérletvásárlásokkal együtt.

A cél egy olyan alkalmazás lefejlesztése, ami internetkapcsolat nélkül mobiltelefonon is el tud futni, de külön kérésre a szerverrel is szinkronizálható.

## Funkciók

* Aktív jógások lekérése a szerverről, kapcsolódó bérletadatokkal együtt. Adatok letárolása a telefonon.
* Jógaórák objektum: egyszerű név (alapértelmezett értékkel)
* Offline módban keresés a jógások közt, hogy az illető részt vett az órán
* Bérletvásárlás regisztrálása offline módban
* Jógán résztvevők és bérletvásárlások feltöltése a szerverre

## Objektumok

### Bérlet

* tulajdonos
* kezdete
* vége
* fizetett összeg (default=8000)

### Jógázó

* név
* becenév
* e-mailcím

###  Jógaóra

* megnevezés
vagy
* időpont és helyszín

###  Jógán résztvevő

* -> Jógaóra
* -> Jógázó
* -> Bérlet (opcionális)      
* fizetett összeg (default=1000)

## Nézetek

### Jógaóra nézet

Itt lehet megadni az aktuális óra megnevezését, majd alatta egy auto-complete szöveges mezőben lehet a jógázót kiválasztani vagy új név esetén új jógázót felvenni

Összeg megadása opcionális

### Bérletvásárlás nézet

Egy auto-complete szöveges mezőben lehet a jógázót kiválasztani vagy új név esetén új jógázót felvenni.

Összeg megadása kötelező

### Szinkronizálás nézet

Két gomb: lekérjük vagy felküldjük az adatokat

## Technológiák

### Kliens oldalon

* Localstorage-ban letárolt adatok a mobilon 
* PhoneGap/Titanium az alkalmazás környezetéhez (sima webview elegendő)

### Szerver oldalon

* Django + REST framework 

### Adatszinkronizálás

* adatkonfliktusra nem kell számítani
* egyszerű GET, POST, PUT műveletek
* csak authentikált felhasználónak érhető el 