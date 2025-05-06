**Nu skal vi placere heksen og lade spiller 1 styre den!**

Nu hvor vi har lavet heksen og ved, hvem der er spiller 1, skal vi sætte heksen det rigtige sted og give spilleren kontrol.

1.  **Sæt heksen på plads:**
    Vi bestemmer, hvor på skærmen heksen skal starte:

    ```javascript
    heks.x = 50;
    ```

    * `heks` er vores hekse-kasse fra før.
    * `.x` er en måde at sige "den vandrette position" på heksen.
    * `=` betyder "sæt den til".
    * `50` er tallet for, hvor langt inde fra venstre siden heksen skal stå.

2.  **Kobl spiller 1 sammen med heksen:**
    Vi sørger for, at den spiller, vi kaldte `playerOne`, nu styrer den heks, vi kaldte `heks`:

    ```javascript
    mp.setPlayerSprite(playerOne, heks)
    ```

    * `mp.setPlayerSprite(...)` er en kommando, der forbinder en spiller med en *sprite*.
    * `playerOne` er vores kasse med information om spiller nummer 1.
    * `heks` er vores kasse med selve hekse-billedet. Nu ved spillet, at det er spiller 1, der skal styre heksen.

3.  **Giv spiller 1 mulighed for at bevæge heksen:**
    Til sidst giver vi spiller 1 mulighed for at flytte heksen rundt med knapperne:

    ```javascript
    mp.moveWithButtons(playerOne, 50, 50)
    ```

    * `mp.moveWithButtons(...)` er en kommando, der gør, at spilleren kan bevæge sin *sprite* med knapperne.
    * `playerOne` fortæller kommandoen, hvilken spiller det drejer sig om.
    * `50, 50` er hastigheden, heksen skal bevæge sig med (50 til siden og 50 op og ned). Du kan prøve at ændre de tal for at se, hvad der sker!

**Hvad har vi gjort?**

Vi har flyttet heksen lidt ind på skærmen, sørget for at spiller nummer 1 styrer lige præcis den hekse-figur, og givet spiller 1 mulighed for at bevæge heksen rundt med knapperne på controlleren! Nu begynder det at ligne et rigtigt spil!

```typescript
p2.x = 50;


mp.setPlayerSprite(p1, p2)


mp.moveWithButtons(p1, 50, 50)
```
