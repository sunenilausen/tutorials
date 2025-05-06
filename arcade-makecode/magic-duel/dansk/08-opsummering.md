```typescript
let p1SpriteId = 1000
let heks = sprites.create(sprites.swamp.witchForward0, p1SpriteId)

let p1 = mp.playerSelector(1)
heks.x = 50;
mp.setPlayerSprite(p1, heks)
mp.moveWithButtons(p1, 50, 50)

let p2SpriteId = 1001
let fe = sprites.create(sprites.castle.princess2Front, p2SpriteId)

let p2 = mp.playerSelector(2)
fe.x = 100;
mp.setPlayerSprite(p2, fe)
mp.moveWithButtons(p2, 50, 50)

let p1BallId = 1002
let p2BallId = 1003

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
    (player) => player == p1 ? shoot(heks, fireball, p1BallId) : shoot(fe, iceball, p2BallId)
)

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

mp.onScore(10, function (player) {
    mp.gameOverPlayerWin(player);
});
```

```typescript
let p1SpriteId = 1000
let p2SpriteId = 1001
let p1BallId = 1002
let p2BallId = 1003

let heks = sprites.create(sprites.swamp.witchForward0, p1SpriteId)
let fe = sprites.create(sprites.castle.princess2Front, p2SpriteId)

let p1 = mp.playerSelector(1)
let p2 = mp.playerSelector(2)

heks.x = 50;
fe.x = 100;

mp.setPlayerSprite(p1, heks)
mp.setPlayerSprite(p2, fe)

mp.moveWithButtons(p1, 50, 50)
mp.moveWithButtons(p2, 50, 50)

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
    (player) => player == p1 ? shoot(heks, fireball, p1BallId) : shoot(fe, iceball, p2BallId)
)

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

mp.onScore(10, function (player) {
    mp.gameOverPlayerWin(player);
});
```
