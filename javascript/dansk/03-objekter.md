# 03 - Objekter

Skriv dette i Konsollen:

```javascript
sune = { name: "Sune", age: 34 }
```

`sune` er et **objekt**, ligesom en kasse med ting indeni. `name` og `age` er **attributter** (tingene).

For at se Sunes alder, skriv:

```javascript
sune.age
```

Punktummet `.` hjælper dig med at få ting fra indeni objektet.

Objekter kan også indeholde **funktioner** (handlinger)\! Prøv dette:

```javascript
sune = {
    name: "Sune",
    age: 34,
    hello: function() {
        console.log("Hej " + this.name)
    }
}
```

Nu er `hello` en **attribut**, der er en funktion. For at få Sune til at sige hej, skriv:

```javascript
sune.hello()
```

**Objekter** holder information (**attributter**) og handlinger (**funktioner**) sammen\! ✨
