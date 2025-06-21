## Tag frugt animation

Vi skal nu lave en animation når man tager en frugt. (Det er en fordel
hvis man har lavet Player animationer først).

Nede i **Assets** folderen under **Fruits** ligger en animation som
hedder *Collected* og som skal bruges når man tager en frugt.

1.  Under **Animator** folderen højreklik og **Create-\>Animation** og
    kald den *Collected*.

2.  Træk den nu op over en af frugterne i **Hierarchy**’et..

3.  Åben **Animator** vinduet og vælg derefter denne frugt. Der er nu
    kommet en ny tilstand som hedder *Collected*.

4.  Lav en pil mellem **Any State** og **Collected** staten.

5.  Opret en **Parameter (Trigger)** og kald den *Taken* og vælg den for
    pilen i **Inspector**’en.

![](media/image45.png){ width=4.93403in height=1.50694in }

6.  I **Animation**s vinduet vælg *Collected* og træk billederne fra
    *Collected* filen over i **Animation**s vinduet og trim hastigheden
    så det ser godt ud.

Derefter skal vi have tilføjet nogle specielle tilstande, så vi kan
styre at man kun får point én gang og at objektet bliver disabled efter
animationen.

7.  Tryk på **Add Property** og tryk derefter på pilen ud for **Box
    Collider 2D** og derefter på ’**+**’ ud for *Enable*.

8.  Gør det samme for **Sprite Renderer**. Se billede længere nede.

9.  Tryk derefter i det blå område (\[1\] på billedet) og tryk derefter
    på \[2\] så markeringen forsvinder (det laver også en lille
    diamant).

10. Fjern derefter ’diamanten’ ved \[3\] (højreklik **Delete Key**).

11. Klik nu i det blå område over \[3\] og fjern markeringen i \[4\].

![](media/image46.png){ width=6.77222in height=1.39653in }

12. I *PlayerController* scriptet ændrer nu i OnTriggerEnter2D til
    følgende:

```csharp
Animator animC = collision.gameObject.GetComponent<Animator>();
animC.SetTrigger("Taken");
//Destroy(collision.gameObject);
```

Nu skulle det gerne virke.

Det er vigtigt at lave det for alle frugter, men det er meget lettere
nu, da man kun skal lave et par af punkterne.

1.  \(2\) Fra **Assets/Animator** folderen træk *Collected* over frugten
    i **Hierarchy**’et.

2.  (4-5) Vælg frugten og i **Animator** vinduet, lav pilen, opret
    parameteren *Taken* og vælg den for pilen.

3.  Det gøres for alle frugter.

Samme metode kan bruges til at lave en animation når *Player* dør. Der
er nogle specielle grafikbilleder til det, under *Main Characters*
folderen.
