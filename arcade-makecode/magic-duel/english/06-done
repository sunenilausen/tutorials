
**Step 14: YOU ARE A CODER!**

Awesome! You've written the game using TypeScript code. You learned about:

* **Syntax:** `let`, `:`, `;`, `{}`, `()`, `.`
* **Variables:** Declaring (`let`) and assigning (`=`).
* **Functions:** Calling functions like `sprites.create()` and `mp.moveWithButtons()`.
* **Parameters:** Giving information to functions `(...)`.
* **Properties:** Accessing sprite info like `.x`, `.vx`.
* **Kinds & Namespaces:** Organizing sprite types.
* **Event Handlers:** Running code on events (`onButtonEvent`, `onOverlap`, `onScore`).
* **Callback Functions:** `function (...) { ... }` used by event handlers.
* **Conditional Logic:** `if` and `else if`.
* **Image Literals:** ``img`...```

This is how programmers build complex games and apps! Keep practicing and experimenting. Try changing the speeds, the winning score, the projectile images, or the effects by modifying the code you wrote.

---

**(Optional) Full Code Reference:**

Here is the complete code you should have:

```typescript
// Define special kinds for Player 2 and Player 2's projectiles
namespace SpriteKind {
    export const Player2 = SpriteKind.create();
    export const Projectile2 = SpriteKind.create();
}

// Declare global variables for player sprites
let playerRed: Sprite = null;
let playerBlue: Sprite = null;

// --- Game Setup Code (Runs Once at Start) ---
playerRed = sprites.create(sprites.swamp.witchBack0, SpriteKind.Player);
playerBlue = sprites.create(sprites.castle.princess2Back, SpriteKind.Player2);

mp.setPlayerSprite(mp.playerSelector(mp.PlayerNumber.One), playerRed);
mp.setPlayerSprite(mp.playerSelector(mp.PlayerNumber.Two), playerBlue);

mp.moveWithButtons(mp.playerSelector(mp.PlayerNumber.One), 100, 100);
mp.moveWithButtons(mp.playerSelector(mp.PlayerNumber.Two), 100, 100);

mp.setPlayerState(mp.playerSelector(mp.PlayerNumber.One), MultiplayerState.score, 0);
mp.setPlayerState(mp.playerSelector(mp.PlayerNumber.Two), MultiplayerState.score, 0);


// --- Event Handlers (Run when events happen) ---

// Event Handler: When Player 2's projectile overlaps with Player 1's sprite
sprites.onOverlap(SpriteKind.Projectile2, SpriteKind.Player, function (sprite, otherSprite) {
    mp.changePlayerStateBy(mp.playerSelector(mp.PlayerNumber.Two), MultiplayerState.score, 1);
    sprites.destroy(sprite, effects.fountain, 100);
});

// Event Handler: When Player 1's projectile overlaps with Player 2's sprite
sprites.onOverlap(SpriteKind.Projectile, SpriteKind.Player2, function (sprite, otherSprite) {
    mp.changePlayerStateBy(mp.playerSelector(mp.PlayerNumber.One), MultiplayerState.score, 1);
    sprites.destroy(sprite, effects.fire, 100);
});

// Event Handler: When any player presses the 'A' button
mp.onButtonEvent(mp.MultiplayerButton.A, ControllerButtonEvent.Pressed, function (player) {
    let shot: Sprite = null; // Temporary variable for the projectile

    // Check if Player 1 pressed the button
    if (mp.isButtonPressed(mp.playerSelector(mp.PlayerNumber.One), mp.MultiplayerButton.A)) {
        shot = sprites.create(sprites.projectile.explosion1, SpriteKind.Projectile);
        shot.setPosition(playerRed.x, playerRed.y);
        shot.setVelocity(playerRed.vx, playerRed.vy);
    }
    // Otherwise, check if Player 2 pressed the button
    else if (mp.isButtonPressed(mp.playerSelector(mp.PlayerNumber.Two), mp.MultiplayerButton.A)) {
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
            `, SpriteKind.Projectile2); // Use the different Kind
        shot.setPosition(playerBlue.x, playerBlue.y);
        shot.setVelocity(playerBlue.vx, playerBlue.vy);
    }
});

// Event Handler: When any player's score reaches 10
mp.onScore(10, function (player) {
    mp.gameOverPlayerWin(player);
});

```
