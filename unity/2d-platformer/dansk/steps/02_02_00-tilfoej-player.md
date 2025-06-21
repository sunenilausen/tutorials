## Tilføj player

Vi skal nu vælge den figur vi vil bruge som vores Player i spillet. Der
er 4 forskellige at vælge imellem og de ligger alle i folderen **Pixel
Adventures 1/Assets/Main Characters/**. Kik dem igennem og find den du
bedst kan lide.

1.  Vælg en figur type under **Main Characters**. Tryk på billedet af
    **idle** (1) versionens pil til højre (2).

2.  Tryk på det første billede (3) som kommer frem og træk det ind i
    **Scene**.

![Alt text](media/image4.png){ width=2in height=2.04375in }

Det skal nu gerne se sådan ud.

![Alt text](media/image5.png){ width=1.54167in height=1.01944in }

Der kommer også et nyt objekt ind i **Hierarchy**’et som hedder noget
med ”Idle …”.

3.  Rename nu ’Idle …’ til *Player*. Husk stort P!

Man kan ændre størrelsen af figuren i **Inspector**’en ved at ændre
**Scale** værdierne.

![Alt text](media/image6.png){ width=4.58333in height=1.07847in }

![Alt text](media/image7.png){ width=1.65625in height=0.70069in }Tryk på **Play** i toppen af
skærmen og se hvordan det ser ud. Der sker ingen ting, *Player* bliver
’flyvende’ i luften.

4.  Vælg *Player* i **Hierarchy**’et og i **Inspector**’en (ude til
    højre) tryk **Add Component** og vælg **Rigidbody 2D**.

Rigidbody komponenten gør, at *Player* bliver håndteret af fysikmotoren,
hvilket blandt andet vil sige at den bliver påvirket af tyngdekraften.

Tryk **Play** og se hvad der sker! Nu falder *Player* gennem platformen.
Det skyldes at den ikke har nogen Collider.

5.  I **Inspector**’en tilføj nu en **Box Collider 2D**

Tryk **Play** igen. Nu skal figuren gerne falde ned og stå på
platformen.

6.  Tilpas **Collider**’en så den bedre passer til størrelsen af figuren
    ved at trykke på **Edit Collider**
    ![Alt text](media/image8.png){ width=0.27083in height=0.21875in } og derefter tilpasse
    ’firkanten’ i **Scene**n.

7.  Man skal under **Rigidbody 2D** sætte følgende (ellers kan figuren
    vælte):

![Alt text](media/image9.png){ width=2.10417in height=0.62292in }
