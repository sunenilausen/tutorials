**Nu skal vi lave vores Heks!**

For at få heksen ind i spillet, skal vi fortælle computeren det med kode.

1.  **Lav en "huske-seddel" til heksen:**
    Vi laver en *variabel* (en slags mærket kasse til at huske ting). Vi kalder kassen `p1SpriteId` og skriver:

    ```javascript
    let p1SpriteId = 1000
    ```

    * `let` betyder, at vi laver en ny kasse.
    * `p1SpriteId` er navnet på kassen (p1 står for spiller 1).
    * `=` betyder "put det her i kassen".
    * `1000` er et nummer, vi putter i kassen. Det er lidt ligesom et hemmeligt ID for vores heks.

2.  **Tegn heksen på skærmen:**
    Nu bruger vi koden til at *skabe* selve billedet af heksen (en *sprite*) og huske den i en ny kasse, vi kalder `heks`:

    ```javascript
    let heks = sprites.create(sprites.swamp.witchForward0, p1SpriteId)
    ```

    * Igen bruger vi `let` til at lave en ny kasse.
    * `heks` er navnet på kassen, hvor vi gemmer heksen.
    * `sprites.create(...)` er en kommando til at lave et billede på skærmen.
    * `sprites.swamp.witchForward0` fortæller computeren, *hvilket* billede den skal bruge (en heks fra sumpen, der kigger fremad).
    * `, p1SpriteId` fortæller computeren det hemmelige ID fra før, så den ved, at det er vores spiller 1 heks.

3.  **Fortæl spillet, hvem der styrer heksen:**
    Til sidst fortæller vi spillet, at det er spiller nummer 1, der skal styre `heks`:

    ```javascript
    let p1 = mp.playerSelector(1)
    ```

    * Vi laver en kasse, der hedder `p1`.
    * `mp.playerSelector(1)` er en kommando, der finder spiller nummer 1 i spillet. Nu ved `p1`, hvem det er.

**Hvad har vi gjort?**

Vi har givet vores spiller 1 heks et hemmeligt nummer, tegnet billedet af heksen på skærmen og fortalt spillet, at `p1` (den første spiller) skal være forbundet med den heks, vi lige har tegnet. Nu kan spillet vide, hvem der spiller som heksen!

```typscript
let p1SpriteId = 1000

let heks = sprites.create(sprites.swamp.witchForward0, p1SpriteId)

let p1 = mp.playerSelector(1)
```
