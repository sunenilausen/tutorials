**Nu laver vi projektilerne og får dem til at flyve!**

Først laver vi "huske-sedler" til ID'er for projektilerne, og billederne af dem. Så laver vi en smart måde at skyde på, og til sidst fortæller vi spillet, hvad der skal ske, når spillerne trykker på knappen.

1.  **Lav "huske-sedler" til projektil-ID'er:**
    Ligesom med spillerne, giver vi også projektilerne hemmelige ID'er:

    ```javascript
    let p1BallId = 1002
    let p2BallId = 1004
    ```

    * `p1BallId` er ID'et for heksens skud.
    * `p2BallId` er ID'et for feens skud. Igen skal de være forskellige!

2.  **Find billederne til projektilerne:**
    Nu fortæller vi spillet, hvilke billeder det skal bruge til skuddene:

    ```javascript
    let fireball = sprites.projectile.explosion1
    let iceball = img`
        . . . . . . . . . . . . . . . .
        . . . . . . . . . . . . . . . .
        . . . . . . . . . . . . . . . .
        . . . . . . . . . . . . . . . .
        . . . . . . . . . . . . . . . .
        . . . . . . . . . . . . . . . .
        . . . . . . . 6 6 . . . . . . .
        . . . . . . 6 1 1 6 . . . . . .
        . . . . . . 9 1 1 9 . . . . . .
        . . . . . . . 9 9 . . . . . . .
        . . . . . . . . . . . . . . . .
        . . . . . . . . . . . . . . . .
        . . . . . . . . . . . . . . . .
        . . . . . . . . . . . . . . . .
        . . . . . . . . . . . . . . . .
        . . . . . . . . . . . . . . . .
    `
    ```

    * `fireball` husker et indbygget billede af en eksplosion, som vi bruger som en ildkugle.
    * `iceball` bruger `img` til at tegne et helt nyt billede af en iskugle direkte i koden!

3.  **Lav en smart måde at skyde på (en *funktion*):**
    Nu laver vi en lille "opskrift" (en *funktion*) der hedder `shoot`, som kan få en spiller til at skyde et projektil:

    ```javascript
    function shoot(player: Sprite, projectile: Image, kind: number) {
        let shot = sprites.create(projectile, kind)
        shot.setPosition(player.x, player.y)
        shot.setVelocity(player.vx * 2, player.vy * 2)
    }
    ```

    * `function shoot(...)` laver vores egen "opskrift" med navnet `shoot`.
    * `(player: Sprite, projectile: Image, kind: number)` betyder, at "opskriften" har brug for tre ting: hvilken *sprite* skyder, hvilket billede skal projektilet have, og hvilken type projektil er det.
    * Inde i `{}` fortæller vi computeren, hvad den skal gøre:
        * `let shot = sprites.create(projectile, kind)` laver selve projektilet (billedet) med den rigtige type.
        * `shot.setPosition(player.x, player.y)` sætter projektilet lige der, hvor spilleren er.
        * `shot.setVelocity(player.vx * 2, player.vy * 2)` giver projektilet fart i samme retning som spilleren bevæger sig, bare dobbelt så hurtigt!

4.  **Fortæl spillet, hvad der sker, når 'A'-knappen trykkes:**
    Til sidst fortæller vi spillet, at når en spiller trykker på 'A'-knappen, skal de skyde:

    ```javascript
    mp.onButtonEvent(mp.MultiplayerButton.A,
        ControllerButtonEvent.Pressed,
        (player) => player == playerOne ? shoot(heks, fireball, p1BallId) : shoot(fe, iceball, p2BallId)
    )
    ```

    * `mp.onButtonEvent(...)` er en kommando, der lytter efter, når en knap bliver trykket på en af controllerne.
    * `mp.MultiplayerButton.A` fortæller den, at det er 'A'-knappen, vi er interesserede i.
    * `ControllerButtonEvent.Pressed` betyder, at det skal ske, lige når knappen bliver trykket ned.
    * `(player) => ...` er en måde at sige "for hver spiller der trykker på knappen, gør det her...". `player` er en "huske-seddel" for den spiller, der trykkede.
    * `player == playerOne ? ... : ...` er en smart måde at sige "hvis det er spiller nummer et (`playerOne`), så gør det her (`shoot` med heksen og ildkuglen), ellers (`:`) gør det her (`shoot` med feen og iskuglen)".

**Hvad har vi gjort?**

Vi har lavet billeder og ID'er til både ildkugler og iskugler. Vi har lavet en smart "opskrift" (`shoot`) der kan få en hvilken som helst spiller til at skyde det rigtige projektil. Og til sidst har vi fortalt spillet, at når spillerne trykker på 'A'-knappen, skal de bruge den "opskrift" til at skyde! Nu kan heksen skyde ildkugler, og feen kan skyde iskugler!


```typescript
let p1BallId = 1002
let p2BallId = 1004

let fireball = sprites.projectile.explosion1
let iceball = img`
    . . . . . . . . . . . . . . . .
    . . . . . . . . . . . . . . . .
    . . . . . . . . . . . . . . . .
    . . . . . . . . . . . . . . . .
    . . . . . . . . . . . . . . . .
    . . . . . . . . . . . . . . . .
    . . . . . . . 6 6 . . . . . . .
    . . . . . . 6 1 1 6 . . . . . .
    . . . . . . 9 1 1 9 . . . . . .
    . . . . . . . 9 9 . . . . . . .
    . . . . . . . . . . . . . . . .
    . . . . . . . . . . . . . . . .
    . . . . . . . . . . . . . . . .
    . . . . . . . . . . . . . . . .
    . . . . . . . . . . . . . . . .
    . . . . . . . . . . . . . . . .
`

function shoot(player: Sprite, projectile: Image, ballId: number) {
    let shot = sprites.create(projectile, ballId)
    shot.setPosition(player.x, player.y)
    shot.setVelocity(player.vx * 2, player.vy * 2)
}

mp.onButtonEvent(mp.MultiplayerButton.A,
    ControllerButtonEvent.Pressed,
    (player) => player == p1 ? shoot(p2, fireball, p1BallId) : shoot(fe, iceball, p2BallId)
)
```
