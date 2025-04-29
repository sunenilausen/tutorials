# Oprettelse af Spiller 2

Spiller 2 skal have sin egen variabel og en *anden* Type, så vi kan kende dem fra hinanden.

1.  **Definér en Ny Type:** Vi har brug for en speciel kategori kun til Spiller 2. Tilføj denne kodeblok helt øverst i din fil, måske ovenover hvor du deklarerede `playerRed`:

    ```typescript
    namespace SpriteKind {
        export const Player2 = SpriteKind.create();
    }
    ```

    * **Kodekoncept: Navnerum (Namespaces)**: Et `namespace` er ligesom en mappe til at holde relateret kode organiseret. Vi tilføjer en ny Type kaldet `Player2` inde i `SpriteKind` navnerummet. `export const` gør denne nye Type tilgængelig for os at bruge.

2.  **Deklarér Spiller 2's Variabel:** Tilføj denne linje tæt på hvor du deklarerede `playerRed`:

    ```typescript
    let playerBlue: Sprite = null;
    ```

3.  **Skab Spiller 2's Sprite:** Tilføj disse linjer under Spiller 1's opsætningskode:

    ```typescript
    playerBlue = sprites.create(sprites.castle.princess2Back, SpriteKind.Player2); // Brug den nye Type!
    mp.setPlayerSprite(mp.playerSelector(mp.PlayerNumber.Two), playerBlue);
    ```

    * Bemærk at vi bruger `SpriteKind.Player2` her - den brugerdefinerede Type, vi oprettede!
    * Vi vælger også `mp.PlayerNumber.Two` og tildeler kontrol til `playerBlue` *spriten*.

**Trin 6: Få Spiller 2 til at Bevæge Sig**

Tilføj bevægelseskommandoen for Spiller 2:

```typescript
mp.moveWithButtons(mp.playerSelector(mp.PlayerNumber.Two), 100, 100);
```

*Prøv Det\!* Kør koden. Du burde se begge figurer, og du burde kunne bevæge dem uafhængigt ved hjælp af Spiller 1 og Spiller 2's kontrol.
