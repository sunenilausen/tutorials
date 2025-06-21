## Android support (avanceret)

Her er en overordnet (kort) beskrivelse af hvordan man kan få spillet
til at køre på en Android enhed (telefon eller tablet). **Det vil kræve
at man selv kæmper lidt med det for at få det til at virke**!

En Android enhed har ikke nogen knapper, så første skridt er at få lavet
nogle knapper på skærmen, så man har noget at trykke på.

![Alt text](media/image73.png){ width=3.72917in height=2.10069in }

Der ligger en Unity package som indeholder disse knapper samt den logik
der skal til at aflæse dem her:

<https://github.com/mhfalken/unity/blob/main/android-knapper.unitypackage>

Start med at import denne pakke.

Knapperne skal ’ligge’ under *Canvas* i **Hierarchy**’et, men inden de
kan det skal det ændres lidt.

For *Canvas* skal man rettet følgende i **Inspector**’en:

1.  **Render Mode**: Screen Space – Camera

2.  **Render Camera**: Træk *Main Camera* over i dette felt.

3.  **Plane Distance**: 0

![Alt text](media/image74.png){ width=5.05278in height=1.16667in }

Nu vil de nuværende tekster (Score mv) med stor sandsynlighed blive
’usynlige’. Det skal rettes ved at rode med **Pos Z** værdierne for
teksterne i **Inspector**’en.

Husk de skal være synlige både i **Scene** view og **Game** view for at
virke! Test at alt virker som før.

Inden man fortsætter er det vigtigt at nedenstående option er sat, som
beskrevet tidligere (hvis ikke så er der lidt ekstra arbejde her…).

![Alt text](media/image75.png){ width=4.375in height=0.49167in }

Under *PreFabs* find *Knapper* og træk det op over *Canvas* i
**Hierarchy**’et, så det ser sådan ud:

![Alt text](media/image76.png){ width=1.27083in height=0.70833in }

Nu skulle der gerne komme nogle knapper frem. Hvis de ikke er synlige i
**Game** view, så skal **Pos Z** fikses. Det skal nu gerne ligne det
ovenstående billede af spillet med knapperne.

Vi skal nu have tilføjet nogle linjer til vores *PlayerController*
script. Linjerne er ’pakket’ ind i kompiler optioner, så de kun er
aktive når man er i Android mode. Hvor de enkelte linjer skal stå
afhænger lidt af hvordan koden allerede ser ud, så det kan godt være at
vejledningen ikke passer perfekt til din kode!

Helt oppe i toppen af filen (linje 1) skal stå følgende (det er for at
gøre det lettere at teste og debugge):

```csharp
#if UNITY_ANDROID

#define SCREEN_BUTTONS

#endif
```

Under ’globale’ variable skal stå:

```csharp
#if SCREEN_BUTTONS

Knapper knapperObj;

#endif
```

I Start() skal stå (det er ikke afgørende hvor):

```csharp
#if SCREEN_BUTTONS

Debug.Log("SCREEN_BUTTONS");

knapperObj = GameObject.Find("Knapper").GetComponent<Knapper>();

#else

GameObject.Find("Knapper").SetActive(false);

#endif
```

Disse linjer skal stå i Update() umidbart efter at man har <u>læst</u>
*dir* og *jump* med Input.GetAxisraw().
```csharp
#if SCREEN_BUTTONS

dir = knapperObj.GetDirX();

jump = knapperObj.GetJump();

#endif
```

For at teste om det virker skal man sætte følgende linje ind i linje 4
(det tvinger koden til at aktivere knapperne selvom man ikke er i
Android mode):
```csharp
#define SCREEN_BUTTONS
```

Kør spillet og tryk med musen på knapperne og se at de virker (tasterne
virker ikke i Android mode). Når det virker så slet \#define
SCREEN_BUTTONS linjen igen.

Når man ikke er i Android mode (eller debug) så forsvinder knapperne
automatisk når man kører spillet. Prøv og se at de er væk nu når spillet
køres og at det ellers virker normalt.
