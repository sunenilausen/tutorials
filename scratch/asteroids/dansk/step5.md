# 5. Skyd med rumskibet

Nu vil vi gerne gøre så skud bevæger sig

Så vi skal sikre os vi er på kode fanen for Skud

Her skal vi bruge "når jeg starter som klon" fra Kontrol (orange)

![Når jeg starter som klon blok](images/Naar_jeg_starter_som_klon_blok.png)

Så skal vi sætte skuddet til at starte ovenpå rumskibet.

Det gør vi ved at bruge "gå til (tilfældig position)" blokken, og sætte værdien til rumskib.

![Gå til rumskib blok](images/Gaa_til_rumskib_blok.png)

Så skal vi få den til at pege i samme retning som rumskibet så den kan flyve den vej

Så vi bruger "peg i retning" blokken, fra Bevægelse

![Peg i retning blok](images/Peg_i_retning_blok.png)

Men vi skal også finde rumskibets retning. Det gør vi ved at finde "[baggrund] af (Scene)" blokken, og vælge rumskib i stedet for Scene

![Baggrund af scene blok](images/Baggrund_af_scene_blok.png)

Derefter vælger vi retning i den anden boks, og sætter den ind i "peg i retning"

![Retning indsat i blokken](images/Retning_indsat_i_blokken.png)

Så skal vi bruge en for evigt og gå 10 trin  blok og sætte under

![For evigt gå frem](images/For_evigt_gaa_frem.png)

Nu skal vi indsætte en "hvis blok" fra kontrol så vi kan gøre noget ved skud der ryger ud af banen

![hvis blok](images/hvis_blok.png)

Vi skal så finde en 6 kantet blok i registrering der hedder "berører (musepil)" og indsætte den i hvis blokken.

![Registrer berører blok](images/Registrer_beroerer_blok.png)

Den skal så have værdien "kant", så den aktiver hvis blokken når den rører kanten

![berører kant blok](images/beroerer_kant_blok.png)

Så skal vi finde "slet denne klon" og indsætte den i midten af hvis blokken

![slet denne klon blok](images/slet_denne_klon_blok.png)

For at oprette disse kloner skal vi gå over på rumskib.

Det er vigtigt du går over på rumskibet og sætter koden på den!

Her bruger vi en "når du trykker på mellemrum" blok, og så skal vi finde "opret en klon af (mig selv), men ændre det til skud

![Opret klon af skud når tryk på mellemrum](images/Opret_klon_af_skud_naar_tryk_paa_mellemrum.png)

For at bestemme hvor hurtigt den skyder, indsætter vi så en "vent (1) sekunder" blok, og ændrer værdien

![Skyd med vent sekunder](images/Skyd_med_vent_sekunder.png)

Prøve at skyde for at se om det virker!

Til sidst kan du skjule den orignale skud ved at trykke på Skud sprite og skjul visningen

![Skjul skud sprite](images/Skjul_skud_sprite.png)

Og finde vis blok, så vi viser klonen, ved at indsætte det under "når jeg starter som klon".

![Vis klon](images/Vis_klon.png)

Prøv at skyde med dit rumskib og test om det stadig virker.
