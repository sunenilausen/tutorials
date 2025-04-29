# 02 - Funktioner

Gå til Konsol-vinduet igen (`Ctrl` + `Shift` + `i` eller højreklik "Undersøg").

Prøv dette:

```javascript
window.prompt()
```

Det laver en spørgeboks\!

Lad os nu huske svaret:

```javascript
name = window.prompt("Hvad er dit navn?")
```

Skriv `name` for at se det\! `prompt()` er en **funktion** – et værktøj der stiller spørgsmål.

Lad os lave vores egen **funktion**\!

Skriv først dette i din konsol

```javascript
hello("Bert", 10)
```

Bemærk at den ikke eksisterer\!

Lad os oprette den ved at skrive dette:

```javascript
function hello(name, age) {
    return "Hej " + name + ". Du er " + age + " år gammel."
}
```

Brug den nu:

```javascript
hello("Vens Navn", Deres Alder)
```

Det laver en sætning\!

Her er en anden **funktion**:

```javascript
function whoAreYou() {
    name = window.prompt("Hvad er dit navn?")
    age = window.prompt("Hvad er din alder?")
    console.log(hello(name, age))
}
```

Prøv `whoAreYou()`\! **Funktioner** er ligesom mini-programmer, der får computeren til at gøre ting. ✨
