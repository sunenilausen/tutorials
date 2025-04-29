# Creating Player 2

Player 2 needs its own variable and a *different* Kind so we can tell them apart.

1.  **Define a New Kind:** We need a special category just for Player 2. Add this code block near the very top of your file, maybe above where you declared `playerRed`:

    ```typescript
    namespace SpriteKind {
        export const Player2 = SpriteKind.create();
    }
    ```

    * **Coding Concept: Namespaces**: A `namespace` is like a folder to keep related code organized. We're adding a new Kind called `Player2` inside the `SpriteKind` namespace. `export const` makes this new Kind available for us to use.

2.  **Declare Player 2's Variable:** Add this line near where you declared `playerRed`:

    ```typescript
    let playerBlue: Sprite = null;
    ```

3.  **Create Player 2's Sprite:** Add these lines below Player 1's setup code:

    ```typescript
    playerBlue = sprites.create(sprites.castle.princess2Back, SpriteKind.Player2); // Use the new Kind!
    mp.setPlayerSprite(mp.playerSelector(mp.PlayerNumber.Two), playerBlue);
    ```

    * Notice we use `SpriteKind.Player2` here - the custom Kind we created!
    * We also select `mp.PlayerNumber.Two` and assign controls to the `playerBlue` sprite.

**Step 6: Making Player 2 Move**

Add the movement command for Player 2:

```typescript
mp.moveWithButtons(mp.playerSelector(mp.PlayerNumber.Two), 100, 100);
```

*Try It!* Run the code. You should see both characters, and you should be able to move them independently using Player 1 and Player 2 controls.
