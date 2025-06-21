## Game tekst og point

Når man samler frugter og andre ting i spiller, skal man have point for
det. Disse point skal selvfølgelig vises på skærmen.

Man starter med at indsætte en tekst i **Scene**n på følgende måde:

1.  ![Alt text](media/image18.png){ width=0.9375in height=0.35417in }Lav et objekt i
    **Hierarchy**’et og vælg **UI-\>Text** og kald det *Score*. (Hvis
    man kører på Unity version 2021.3 ligger det i
    **UI-\>Legacy-\>Text**.) Det vil automatisk lave to objekter:
    **Canvas** og **Score**.

2.  Start med at vælge *Canvas* og sæt følgende i **Inspector**’en:

![Alt text](media/image19.png){ width=6.77222in height=0.50208in }

Efter man har oprettet *Score*, skal det konfigureres i **Inspector**’en
(se billedet nedenunder).

3.  Ret **Text** til *Score: 0*.

4.  Ud for **Font**, tryk på ![Alt text](media/image20.png){ width=0.17708in height=0.20833in } og vælg
    *PressStart2P-Regular*.

5.  Sæt **Font Style** til *Bold*

6.  Sæt **Font Size** til 16.

7.  Vælg en god farve i **Color**.

![Alt text](media/image21.png){ width=5.8125in height=1.36667in }

Kik nu i **Game** vinduet og se at teksten står helt nede i venstre
hjørne. Det er lidt mærkeligt (men sådan er det bare).

8.  Flyt nu teksten op i toppen af skærmen (**Scene** vinduet), ved at
    trække den op (her skal man kikke på **Game** vinduet, men flytte
    teksten i **Scene** vinduet!).

Når man zoomer ud i **Scene** vinduet kan man se at der kommer en hvid
firkant frem – det skal stå i toppen af denne firkant! (Hele jeres spil
er i den røde cirkel nede i venstre hjørne – så langt skal man zoome
ud!)

![Alt text](media/image22.png){ width=5.47153in height=3.08125in }

9.  Placer nu teksten et godt sted og sæt størrelsen op så den er
    lettere at se.

Når man gør størrelsen større, så kan teksten godt pludselig
”forsvinde”. Det skyldes at den boks som teksten står i er for lille.
Det rettes ved at vælge teksten og så rette boksens størrelse i
**Scene**’en. Husk samtidig at lave boksen lang nok til den tekst som vi
senere skal skrive. (Træk i de blå punkter for at ændre boks
størrelsen).

![Alt text](media/image23.png){ width=2.08333in height=0.51042in }

10. I *PlayerController* scriptet tilføj nu følgende linjer ’de rigtige
    steder i koden’.

```csharp
using UnityEngine.UI;

[SerializeField] Text scoreText;

scoreText.text = "Score: ";
```

Den sidste linje skal stå i bunden af Update() funktionen.

11. Træk *Score* objektet i **Hierarchy**’et over i
    **Inspector**’en**:** **Player Controller-\>Score Text** feltet.

Kør koden og se at det virker.
