**Nu laver vi spiller 2 og sætter feen på skærmen!**

Ligesom med heksen, skal vi lave en "huske-seddel" og tegne feen for spiller 2.

1.  **Lav en "huske-seddel" til feen (spiller 2):**
    Vi laver en ny *variabel* til feens hemmelige ID:

    ```javascript
    let p2SpriteId = 1001
    ```

    * `let` laver en ny kasse.
    * `p2SpriteId` er navnet (p2 for spiller 2).
    * `= 1001` putter et nyt hemmeligt ID i kassen for feen. Det er vigtigt, at det er et andet nummer end heksens!

2.  **Tegn feen på skærmen:**
    Nu laver vi billedet af feen (*sprite*) og husker den:

    ```javascript
    let fe = sprites.create(sprites.castle.princess2Front, p2SpriteId)
    ```

    * `let fe` laver en kasse til feen.
    * `sprites.create(...)` tegner billedet.
    * `sprites.castle.princess2Front` er billedet af feen fra et slot.
    * `, p2SpriteId` giver feen sit eget hemmelige ID.

3.  **Fortæl spillet, hvem der styrer feen:**
    Vi fortæller spillet, at det er spiller nummer 2:

    ```javascript
    let playerTwo = mp.playerSelector(2)
    ```

    * `let playerTwo` laver en kasse til spiller 2.
    * `mp.playerSelector(2)` finder spiller nummer 2.

4.  **Sæt feen på plads:**
    Vi bestemmer, hvor feen skal starte:

    ```javascript
    fe.x = 100;
    ```

    * `fe` er vores fe-kasse.
    * `.x = 100` sætter feen lidt længere inde fra venstre end heksen.

5.  **Kobl spiller 2 sammen med feen:**
    Vi sørger for, at spiller 2 styrer feen:

    ```javascript
    mp.setPlayerSprite(playerTwo, fe)
    ```

    * `mp.setPlayerSprite(...)` forbinder spiller 2 (`playerTwo`) med feen (`fe`).

6.  **Giv spiller 2 mulighed for at bevæge feen:**
    Nu kan spiller 2 også flytte sin figur:

    ```javascript
    mp.moveWithButtons(playerTwo, 50, 50)
    ```

    * `mp.moveWithButtons(...)` giver spiller 2 (`playerTwo`) mulighed for at bevæge feen med knapperne, med samme hastighed som heksen.

**Hvad har vi gjort?**

Vi har gjort næsten præcis det samme som med heksen, men for spiller nummer 2 og med et billede af en fe! Nu har vi to spillere med hver deres figur, som de kan bevæge rundt på skærmen!

```typescript
et p2SpriteId = 1001


let fe = sprites.create(sprites.castle.princess2Front, p2SpriteId)


let p2 = mp.playerSelector(2)


fe.x = 100;


mp.setPlayerSprite(p2, fe)


mp.moveWithButtons(p2, 50, 50)
```
