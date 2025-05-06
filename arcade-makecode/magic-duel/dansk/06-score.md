**Nu tæller vi point!**

Vi skal fortælle spillet, hvad der skal ske, når en ildkugle rammer feen, og når en iskugle rammer heksen. Det gør vi ved at "lytte" efter, når projektilerne overlapper hinanden.

1.  **Hvad sker der, når en ildkugle rammer feen?**
    Vi bruger en kommando, der holder øje med, om to forskellige *sprites* rører hinanden:

    ```javascript
    sprites.onOverlap(p1BallId,
        p2SpriteId,
        function (sprite, otherSprite) {
            mp.changePlayerStateBy(playerOne, MultiplayerState.score, 1);
            sprites.destroy(sprite, effects.fire, 100);
        }
    );
    ```

    * `sprites.onOverlap(...)` er en kommando, der gør noget, når to *sprites* overlapper hinanden.
    * `p1BallId` er ID'et for heksens ildkugler.
    * `p2SpriteId` er ID'et for feens iskugler. Så denne kode kører, når en ildkugle (`sprite`) rammer en iskugle (`otherSprite`).
    * `function (sprite, otherSprite) { ... }` er "opskriften" på, hvad der skal ske, når de rammer hinanden.
        * `mp.changePlayerStateBy(playerOne, MultiplayerState.score, 1);` betyder, at spiller nummer et (`playerOne`) får 1 point til deres score (`MultiplayerState.score`).
        * `sprites.destroy(sprite, effects.fire, 100);` betyder, at den ildkugle, der ramte (`sprite`), forsvinder med en lille brandeffekt, der varer 100 millisekunder.

2.  **Hvad sker der, når en iskugle rammer heksen?**
    Vi gør næsten det samme, men omvendt:

    ```javascript
    sprites.onOverlap(p2BallId,
        p1SpriteId,
        function (sprite, otherSprite) {
            mp.changePlayerStateBy(playerTwo, MultiplayerState.score, 1);
            sprites.destroy(sprite, effects.fountain, 100);
        }
    );
    ```

    * Igen bruger vi `sprites.onOverlap(...)`.
    * Nu lytter vi efter, om en iskugle (`p2BallId`) rammer heksen (`p1SpriteId`).
    * Inde i "opskriften":
        * `mp.changePlayerStateBy(playerTwo, MultiplayerState.score, 1);` giver spiller nummer to (`playerTwo`) 1 point.
        * `sprites.destroy(sprite, effects.fountain, 100);` får iskuglen til at forsvinde med en lille fontæneeffekt.

**Hvad har vi gjort?**

Vi har fortalt spillet, at når en af spillernes skud rammer den anden spiller, så skal den skydende spiller få et point, og projektilet skal forsvinde med en sej effekt! Nu kan spillerne kæmpe om at få flest point!

```typescript
sprites.onOverlap(p1BallId,
    p2SpriteId,
    function (sprite, otherSprite) {
        mp.changePlayerStateBy(p1, MultiplayerState.score, 1);
        sprites.destroy(sprite, effects.fire, 100);
    }
);

sprites.onOverlap(p2BallId,
    p1SpriteId,
    function (sprite, otherSprite) {
        mp.changePlayerStateBy(p2, MultiplayerState.score, 1);
        sprites.destroy(sprite, effects.fountain, 100);
    }
);
```
