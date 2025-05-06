**Nu slutter spillet, når nogen vinder!**

Vi bruger endnu en kommando, der holder øje med scoren:

```typescript
mp.onScore(10, function (player) {
    mp.gameOverPlayerWin(player);
});
```

* `mp.onScore(10, ...)` er en kommando, der venter på, at en spillers score når 10.
* `function (player) { ... }` er "opskriften" på, hvad der skal ske, når det sker. `player` er en "huske-seddel" for den spiller, der har nået 10 point.
* `mp.gameOverPlayerWin(player);` er en kommando, der afslutter spillet og viser en besked, der fortæller, at den spiller, der er gemt i "huske-sedlen" `player`, har vundet!

**Hvad har vi gjort?**

Vi har fortalt spillet, at så snart en af spillerne får 10 point, skal spillet slutte, og den spiller skal kåres som vinder! Nu har vi et helt færdigt spil, hvor man kan skyde til hinanden og kæmpe om at blive den første til 10 point! Tillykke, du er en spiludvikler! 🎉

```typescript
mp.onScore(10, function (player) {
    mp.gameOverPlayerWin(player);
});
```
