Vi skal fortælle computeren, at den skal skabe vores heks.

1.  **Deklarér en Variabel:** Før vi skaber *spriten*, har vi brug for et sted at gemme den. Skriv dette tæt på toppen af din *code* fil:

    ```typescript
    let playerRed: Sprite = null;
    ```

    * **Kodekoncept: Variabler (`let`)**: `let` er et nøgleord, der betyder "Jeg opretter en ny variabel". `playerRed` er det navn, vi har valgt til vores variabel (ligesom en mærket kasse). `: Sprite` fortæller computeren, at denne kasse er beregnet til at indeholde et `Sprite` objekt. `= null` betyder, at kassen er tom lige nu. Semikolonnet `;` markerer slutningen af denne instruktion.

2.  **Skab Spriten:** Nu, inde i `on start` *block'et* (hvis du ser et) eller bare på en ny linje, hvis din *editor* er tom, skriv:

    ```typescript
    playerRed = sprites.create(sprites.swamp.witchBack0, SpriteKind.Player);
    ```

    * **Kodekoncept: Funktioner (`sprites.create(...)`)**: `sprites.create()` er en **funktion** – en kommando, der udfører en handling. Vi fortæller `sprites`-delen af *game'et* at `create` (skabe) noget.
    * **Kodekoncept: Parametre (`(...)`)**: Tingene inde i parenteserne `()` er **parametre** – ekstra information, som funktionen har brug for.
        * `sprites.swamp.witchBack0` fortæller funktionen *hvilket billede* den skal bruge (MakeCode har indbyggede billeder).
        * `SpriteKind.Player` fortæller den hvilken **Kind** (type) *spriten* er. `SpriteKind` er ligesom en kategori, og `Player` er det specifikke mærke. Dette hjælper os med at identificere *player sprites* senere.
    * **Kodekoncept: Tildeling (`=`)**: Det enkelte lighedstegn `=` tildeler resultatet af `sprites.create()` funktionen (selve *sprite* objektet) til vores `playerRed` variabel.

3.  **Forbind til Player 1 Kontrol:** Tilføj denne linje under den forrige:

    ```typescript
    mp.setPlayerSprite(mp.playerSelector(mp.PlayerNumber.One), playerRed);
    ```

    * Dette kalder en anden funktion fra Multiplayer (`mp`) værktøjerne.
    * `mp.setPlayerSprite` forbinder et *player number* til en *sprite* variabel.
    * `mp.playerSelector(mp.PlayerNumber.One)` vælger *Player* 1.
    * `playerRed` er den *sprite*, vi ønsker, at *Player* 1 skal kontrollere.

4.  **Få Player 1 til at Bevæge Sig:**

    Tilføj denne linje for at få heksen til at reagere på knaptryk:

    ```typescript
    mp.moveWithButtons(mp.playerSelector(mp.PlayerNumber.One), 100, 100);
    ```

    * **Kodekoncept: Flere Parametre**: `mp.moveWithButtons` funktionen tager *playeren* (`mp.playerSelector(...)`) og valgfrit hastigheder for venstre/højre (`vx` - det første `100`) og op/ned (`vy` - det andet `100`).

    *Prøv Det\!* Klik på "Download" eller "Run" knappen øverst for at se dit *game* i *simulatoren*. Din heks burde dukke op og bevæge sig med *Player* 1's kontrol\!
