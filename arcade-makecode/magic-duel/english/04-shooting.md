# Shooting fireballs
**Setting Up the Shooting Action (Button Event)**

We need code that runs *only* when the 'A' button is pressed.

Add this entire block of code. This defines an **event handler**:

```typescript
mp.onButtonEvent(mp.MultiplayerButton.A, ControllerButtonEvent.Pressed, function (player) {
    // Code inside these curly braces {} runs when A is pressed

}); // Don't forget the closing parenthesis and semicolon!
```

* **Coding Concept: Event Handlers (`mp.onButtonEvent(...)`)**: This function tells the game: "When a specific button event happens, run the code I provide."
* **Parameters:**
    * `mp.MultiplayerButton.A`: Specifies the 'A' button.
    * `ControllerButtonEvent.Pressed`: Specifies the event type (when the button is *pressed down*).
    * `function (player) { ... }`: This is the **callback function**. It's the block of code that will actually run when the event happens. The `player` inside the `()` is a special variable given to us by the event handler, telling us *which* player pressed the button.
* **Coding Concept: Code Blocks (`{ ... }`)**: The curly braces `{}` define a block of code that belongs together, usually inside a function or a control structure like `if`.

**Step 8: Coding the Shot - If Player 1 Shoots**

Inside the curly braces `{}` of the `mp.onButtonEvent` function, add this code:

```typescript
    let shot: Sprite = null; // Variable just for this shot

    // Check if Player 1 pressed the button
    if (mp.isButtonPressed(mp.playerSelector(mp.PlayerNumber.One), mp.MultiplayerButton.A)) {
        // Player 1 shot! Create their projectile
        shot = sprites.create(sprites.projectile.explosion1, SpriteKind.Projectile);
        shot.setPosition(playerRed.x, playerRed.y);
        shot.setVelocity(playerRed.vx, playerRed.vy);
    }
```

* **Coding Concept: Local Variables**: We declare `let shot: Sprite = null;` *inside* the function. This makes `shot` a **local variable**, meaning it only exists while this function is running.
* **Coding Concept: If Statements (`if (...) { ... }`)**: An `if` statement checks a condition. The code inside its `{}` only runs if the condition in the `()` is true.
* **Condition:** `mp.isButtonPressed(...)` checks if Player 1 is currently holding 'A'.
* **Creating the Shot:** If the condition is true, we create the sprite (`SpriteKind.Projectile` is a built-in kind for shots).
* **Coding Concept: Properties (`.x`, `.y`, `.vx`, `.vy`)**: Sprites have **properties** we can access using a dot (`.`). `playerRed.x` gives us the X coordinate of `playerRed`. We use these to set the shot's starting position (`shot.setPosition(...)`) and velocity (`shot.setVelocity(...)`).

**Step 9: Coding the Shot - If Player 2 Shoots**

We need to handle the case where Player 2 shot. Add this `else if` block right after the closing `}` of the `if` block (but *before* the closing `}` of the main function):

```typescript
    else if (mp.isButtonPressed(mp.playerSelector(mp.PlayerNumber.Two), mp.MultiplayerButton.A)) {
        // Player 2 shot! Create their projectile

        // First, make sure Projectile2 Kind exists (add to the namespace at the top if needed)
        // namespace SpriteKind { export const Projectile2 = SpriteKind.create(); }

        shot = sprites.create(img`
            . . . . . . . . . . . . . . . .
            . . . . . . . . . . . . . . . .
            . . . . . . . . . . . . . . . .
            . . . . . . . . . . . . . . . .
            . . . . . . . . . . . . . . . .
            . . . . . . . . . . . . . . . .
            . . . . . . . 6 6 . . . . . . .
            . . . . . . 6 9 9 6 . . . . . .
            . . . . . . 8 9 9 8 . . . . . .
            . . . . . . . 8 8 . . . . . . .
            . . . . . . . . . . . . . . . .
            . . . . . . . . . . . . . . . .
            . . . . . . . . . . . . . . . .
            . . . . . . . . . . . . . . . .
            . . . . . . . . . . . . . . . .
            . . . . . . . . . . . . . . . .
            `, SpriteKind.Projectile2); // Use the new Kind!

        shot.setPosition(playerBlue.x, playerBlue.y);
        shot.setVelocity(playerBlue.vx, playerBlue.vy);
    }
```

* **Coding Concept: Else If (`else if (...) { ... }`)**: This checks a *second* condition only if the first `if` was false.
* **Projectile2 Kind**: We need a separate Kind for Player 2's shots. Make sure you add `export const Projectile2 = SpriteKind.create();` inside the `SpriteKind` namespace you created earlier (near the top of your file).
* **Coding Concept: Image Literals (``img`...```)**: The `img` followed by backticks ``` ``` is a special MakeCode way to draw pictures directly in your code!
* We use `SpriteKind.Projectile2` and get position/velocity from `playerBlue`.

*Try It!* Run the code. Both players should now be able to shoot their different-looking projectiles!
