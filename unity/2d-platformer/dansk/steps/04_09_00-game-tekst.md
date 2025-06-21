## Game tekst

![Alt text](media/image18.png){ width=0.9375in height=0.35417in }Man indsætter en tekst på
skærmen i spillet ved at lave et objekt med **UI-\>Text**. (2021.3
**UI-\>Legacy-\>Text**) Det vil automatisk lave to objekter: **Canvas**
og **objektet**. Dette objekt skal så ’linkes’ til scriptet i score
feltet – se nedenfor.

Efter man har oprettet objektet, kan det konfigureres i
**Inspector**’en. Når man gør størrelsen større, så kan teksten godt
pludselig ”forsvinde”. Det skyldes at den boks som teksten står i er for
lille. Det rettes ved at vælge teksten og så rettet boksen størrelse i
**Scene**’en.

```csharp
using UnityEngine.UI;

[SerializeField] Text score;

score.text = "Score: " + point;
```

Link:
<https://youtu.be/pXn9icmreXE?list=PLrnPJCHvNZuCVTz6lvhR81nnaf1a-b67U&t=966>
