
**Step 10: Keeping Score (Starting Score)**

We need to set the scores to 0 when the game starts. Add these lines at the end of your initial setup code (before any event handlers like `mp.onButtonEvent`):

```typescript
mp.setPlayerState(mp.playerSelector(mp.PlayerNumber.One), MultiplayerState.score, 0);
mp.setPlayerState(mp.playerSelector(mp.PlayerNumber.Two), MultiplayerState.score, 0);
```

* `mp.setPlayerState` is used to set built-in player properties like `MultiplayerState.score`. We set it to `0` for both players.

**Step 11: Scoring Points! (Player 1 Hits Player 2)**

How do we detect hits? With another event handler! Add this entire code block:

```typescript
sprites.onOverlap(SpriteKind.Projectile, SpriteKind.Player2, function (sprite, otherSprite) {
    // Player 1's shot (sprite) hit Player 2 (otherSprite)
    mp.changePlayerStateBy(mp.playerSelector(mp.PlayerNumber.One), MultiplayerState.score, 1);
    sprites.destroy(sprite, effects.fire, 100);
});
```

* **Coding Concept: Overlap Event (`sprites.onOverlap(...)`)**: This function sets up a check: "When a sprite of the first Kind overlaps with a sprite of the second Kind, run this code."
* **Parameters:**
    * `SpriteKind.Projectile`: The first kind (Player 1's shot).
    * `SpriteKind.Player2`: The second kind (Player 2's character).
    * `function (sprite, otherSprite) { ... }`: The callback function. `sprite` refers to the projectile that hit, and `otherSprite` refers to the Player 2 sprite that got hit.
* **Inside the function:**
    * `mp.changePlayerStateBy(...)`: Increases Player 1's score by 1.
    * `sprites.destroy(...)`: Destroys the projectile (`sprite`) with a fire effect for 100 milliseconds.

**Step 12: Scoring Points! (Player 2 Hits Player 1)**

Add a similar overlap handler for when Player 2 scores:

```typescript
sprites.onOverlap(SpriteKind.Projectile2, SpriteKind.Player, function (sprite, otherSprite) {
    // Player 2's shot (sprite) hit Player 1 (otherSprite)
    mp.changePlayerStateBy(mp.playerSelector(mp.PlayerNumber.Two), MultiplayerState.score, 1);
    sprites.destroy(sprite, effects.fountain, 100);
});
```

* Notice the Kinds are changed: `Projectile2` hitting `Player`.
* We increase Player 2's score (`mp.PlayerNumber.Two`).
* We use a different effect (`effects.fountain`).

*Try It!* Run the game. Shoot the other player. Their score should increase at the top of the screen, and the projectile should disappear!

**Step 13: Winning the Game!**

How does the game end? Add this event handler:

```typescript
mp.onScore(10, function (player) {
    mp.gameOverPlayerWin(player);
});
```

* **Coding Concept: Score Event (`mp.onScore(...)`)**: This runs its function when *any* player's score reaches the specified value (`10`).
* **Parameter:** The `player` variable automatically holds *which* player reached the score.
* `mp.gameOverPlayerWin(player)` ends the game and shows the winning player.
