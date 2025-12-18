# 5. Skyd med rumskibet

Nu vil vi gerne gøre så skud bevæger sig

Så vi skal sikre os vi er på kode fanen for Skud

Her skal vi bruge "når jeg starter som klon" fra Kontrol (orange)

![Når jeg starter som klon blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBajRDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--715ec6b2de9f7bf76143d42e6adb64826e2ac5d4/Screenshot%202025-04-07%20163941.png)

Så skal vi sætte skuddet til at starte ovenpå rumskibet.

Det gør vi ved at bruge "gå til (tilfældig position)" blokken, og sætte værdien til rumskib.

![Gå til rumskib blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa0VDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--5952fee4d97e60b58fee9e7564159fa03460f8ae/Screenshot%202025-04-07%20164432.png)

Så skal vi få den til at pege i samme retning som rumskibet så den kan flyve den vej

Så vi bruger "peg i retning" blokken, fra Bevægelse

![Peg i retning blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa0lDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--2720df4ff90279a6e031953bd3a3afbc95a27c82/Screenshot%202025-04-07%20164655.png)

Men vi skal også finde rumskibets retning. Det gør vi ved at finde "[baggrund] af (Scene)" blokken, og vælge rumskib i stedet for Scene

![Baggrund af scene blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa01DIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--14324cef6bee48cd58e3f28e373c6393187d1f63/Screenshot%202025-04-07%20164727.png)

Derefter vælger vi retning i den anden boks, og sætter den ind i "peg i retning"

![Retning indsat i blokken](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa1FDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--5ee43cf764102db63cab08d3bcca6518c3dfe7d7/Screenshot%202025-04-07%20164842.png)

Så skal vi bruge en for evigt og gå 10 trin  blok og sætte under

![For evigt gå frem](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa1VDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--7d0cd876ad7dd9b54675320c8160256bc31bff4a/Screenshot%202025-04-07%20165225.png)

Nu skal vi indsætte en "hvis blok" fra kontrol så vi kan gøre noget ved skud der ryger ud af banen

![hvis blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa1lDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a8041d45c86ed14c2c1cd38eb5c95782ab5bcd40/Screenshot%202025-04-07%20165300.png)

Vi skal så finde en 6 kantet blok i registrering der hedder "berører (musepil)" og indsætte den i hvis blokken.

![Registrer berører blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa2NDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--19f5c4ea54dea7b67ccf1133166fecc79dbed736/Screenshot%202025-04-07%20165440.png)

Den skal så have værdien "kant", så den aktiver hvis blokken når den rører kanten

![berører kant blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa2dDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--84462b729db1ef3253444694ea934425ccdece96/Screenshot%202025-04-07%20165627.png)

Så skal vi finde "slet denne klon" og indsætte den i midten af hvis blokken

![slet denne klon blok](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa2tDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--d1cdbc794b7da7d4b8f84053092631492c145128/Screenshot%202025-04-07%20165641.png)

For at oprette disse kloner skal vi gå over på rumskib.

Det er vigtigt du går over på rumskibet og sætter koden på den!

Her bruger vi en "når du trykker på mellemrum" blok, og så skal vi finde "opret en klon af (mig selv), men ændre det til skud

![Opret klon af skud når tryk på mellemrum](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa29DIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--621a3f6dfdc4741196b55cd2ce6e0cb3ac3e2bcb/Screenshot%202025-04-07%20165801.png)

For at bestemme hvor hurtigt den skyder, indsætter vi så en "vent (1) sekunder" blok, og ændrer værdien

![Skyd med vent sekunder](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa3NDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--98c90fce7c60f65f6905a8cca441ce4cbd77d051/Screenshot%202025-04-07%20170041.png)

Prøve at skyde for at se om det virker!

Til sidst kan du skjule den orignale skud ved at trykke på Skud sprite og skjul visningen

![Skjul skud sprite](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa3dDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dee445fccb1b82a6e3a9675fba00a9e179585fe7/Screenshot%202025-04-07%20170155.png)

Og finde vis blok, så vi viser klonen, ved at indsætte det under "når jeg starter som klon".

![Vis klon](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBazBDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--2f906091c44ccd1aecd1248303d5d8730b3bf26b/Screenshot%202025-04-07%20171424.png)

Prøv at skyde med dit rumskib og test om det stadig virker.
