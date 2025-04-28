We need to tell the computer to create our witch.

1.  **Declare a Variable:** Before we create the sprite, we need a place to store it. Type this near the top of your code file:

    ```typescript
    let playerRed: Sprite = null;
    ```

    * **Coding Concept: Variables (`let`)**: `let` is a keyword that says "I'm creating a new variable". `playerRed` is the name we chose for our variable (like a labeled box). `: Sprite` tells the computer that this box is meant to hold a `Sprite` object. `= null` means the box is empty for now. The semicolon `;` marks the end of this instruction.

2.  **Create the Sprite:** Now, inside the `on start` block (if you see one) or just on a new line if your editor is empty, type:

    ```typescript
    playerRed = sprites.create(sprites.swamp.witchBack0, SpriteKind.Player);
    ```

    * **Coding Concept: Functions (`sprites.create(...)`)**: `sprites.create()` is a **function** – a command that performs an action. We're telling the `sprites` part of the game to `create` something.
    * **Coding Concept: Parameters (`(...)`)**: The things inside the parentheses `()` are **parameters** – extra information the function needs.
        * `sprites.swamp.witchBack0` tells the function *what picture* to use (MakeCode has built-in pictures).
        * `SpriteKind.Player` tells it what **Kind** the sprite is. `SpriteKind` is like a category, and `Player` is the specific label. This helps us identify player sprites later.
    * **Coding Concept: Assignment (`=`)**: The single equals sign `=` assigns the result of the `sprites.create()` function (the actual sprite object) to our `playerRed` variable.

3.  **Connect to Player 1 Controls:** Add this line below the previous one:

    ```typescript
    mp.setPlayerSprite(mp.playerSelector(mp.PlayerNumber.One), playerRed);
    ```

    * This calls another function from the Multiplayer (`mp`) tools.
    * `mp.setPlayerSprite` links a player number to a sprite variable.
    * `mp.playerSelector(mp.PlayerNumber.One)` selects Player 1.
    * `playerRed` is the sprite we want Player 1 to control.
4. **Making Player 1 Move:**

    Add this line to make the witch respond to button presses:

    ```typescript
    mp.moveWithButtons(mp.playerSelector(mp.PlayerNumber.One), 100, 100);
    ```

    * **Coding Concept: More Parameters**: The `mp.moveWithButtons` function takes the player (`mp.playerSelector(...)`), and optionally, speeds for left/right (`vx` - the first `100`) and up/down (`vy` - the second `100`).

    *Try It!* At the top, click the "Download" or "Run" button to see your game in the simulator. Your witch should appear and move with Player 1's controls!
