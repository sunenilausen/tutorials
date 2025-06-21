### Overfør point

Når man starter på den næste bane (level) har man ’tabt’ alle sine
point. Det skyldes at alt bliver nulstillet. Det løses på følgende måde.

1.  For *Level1* tilføjes et tomt objekt, som man kalder *Init*

2.  Lav et C# script som hedder *Init* og træk det op over *Init*
    objektet.

3.  I *Init* scriptet skriver man følgende (det sletter ’alt’ første
    gang):

```csharp
private void Awake()
{
    PlayerPrefs.DeleteAll();
}
```

4.  I *PlayerController* scriptet skriver man følgende:

```csharp
// i Start()
point = PlayerPrefs.GetInt("Score");

// Hver gang man opdaterer point
PlayerPrefs.SetInt("Score", point);
```

Den sidste linje <u>gemmer</u> *Score* og den første linje <u>henter</u>
*Score*.

Nu skulle point’ne gerne blive overført fra level til level.
