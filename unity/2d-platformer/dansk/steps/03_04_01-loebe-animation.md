### Løbe animation (avanceret)

Vores *Player* har brug for mere end en animation, da han også skal have
en løbe animation (run).

1.  For hver ekstra animation man har bruge for, gentager man skridtene
    oven for. Husk at man skal vælge den rigtige animation i
    **Animation** vinduet, inden man kopierer billederne over.

![](media/image41.png){ width=2.75486in height=1.05833in }

Da man nu har flere animationer, er man nød til at fortælle Unity
hvilken animation man skal bruge hvornår.

2.  Åben Player **Animator**’en – dobbelt klip på:

![](media/image42.png){ width=0.52431in height=0.70764in }

Der kommer et billede frem som ser lidt ud som dette:

![](media/image43.png){ width=5.68889in height=2.51458in }

Det er et diagram, som viser de forskellige animationstilstande og
hvordan man kan komme fra den ene til den anden.

3.  Lav de to lodrette pile ved at højre-klikke på *Player_idle*, vælg
    **Make Transistion** og træk den til *Player_run*.

4.  Gør det samme modsat også, så der er to pile – en i hver retning –
    se billede.

5.  Tilføj en parameter ved at klikke på ’+’ i toppen ud til venstre
    (rød cirkel), vælg **Bool** og kald den *Run*.

6.  Klik nu på den pil som går fra *Player_idle*-\>*Player_run* og se på
    **Inspector**’en ude til højre.

![](media/image44.png){ width=5.61319in height=2.62708in }

7.  Tryk på ’+’ \[1\], hvilket automatisk laver \[2\]. Fjern markeringen
    i **Has Exit Time** \[3\].

8.  Gør det samme for den anden pil, men vælg denne gang **false** i
    \[2\].

Det er nu sat sådan op, at når *Run* er **true**, så skiftes til
*Player_run* state og når *Run* er **false**, så skiftes tilbage til
*Player_idle*. På den måde så afgør *Run* hvilken animation spilleren
har.

Nu skal vi derfor have vores Player script til at styre denne *Run*
parameter.

9.  Tilføj følgende linjer til *PlayerController* scriptet (de rigtige
    steder).

```csharp
Animator animator;

...

animator = GetComponent<Animator>();

...

if (dir == 0)
    animator.SetBool("Run", false);
else
    animator.SetBool("Run", true);
```

Hvis *dir* (vores bevægelse) er 0 (vi står stille), så sætter vi *Run*
til **false** (dvs. løb ikke), ellers sæt *Run* til **true** (løb).

Prøv at se hvordan det virker.
