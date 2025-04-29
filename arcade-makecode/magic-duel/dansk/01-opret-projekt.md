I denne vejledning skal vi lave et spil, hvor en heks og en fe kaster ildkugler efter hinanden.

**Vores Mål:** Byg et spil, hvor to *players* kontrollerer hver deres *sprite*, skyder *projectiles*, scorer *points* når de *hitter* den anden *player*, og den første til 10 *points* vinder\!

-----

**Lad os Starte med at Kode\!**

**Trin 1: Opsætning af Dit Projekt**

1.  Gå til MakeCode Arcade *websitet* (`arcade.makecode.com`).
2.  Klik på den store "**+ New Project**" knap.
3.  Navngiv dit *project* (f.eks. "Magic Duel Code") og klik "**Create**".

Du vil se:

  * **Simulator:** Hvor dit spil kører (til venstre).
  * **Toolbox:** Hvor alle *code blocks* findes (i midten).
  * **Workspace:** Hvor du bygger din *code* (til højre).

Læg mærke til `on start` *block'et*, som allerede er der?

  * **Coding Concept: Events.** Et "*event*" er noget, der sker i spillet. `on start` *block'et* er en **event handler** – den indeholder den *code*, der kun kører *én gang*, lige når spillet begynder. Det er ligesom startfløjten\!

**Trin 2: Tilføjelse af Multiplayer Værktøjer**

Vores spil skal have to *players*, så vi har brug for specielle *blocks*.

1.  Kig nederst i *toolbox'et* og klik på "**Extensions**".

![Extensions](../images/extensions.png)

2.  Find og klik på "**Multiplayer**" *extension'et*. Puff\! Nye turkise *blocks* vises i dit *toolbox*.

![Multiplayer](../images/multiplayer.png)
  * **Coding Concept: Libraries/Extensions.** Tænk på *extensions* som at tilføje ekstra *tools* til din *toolkit*. De giver dig nye *blocks* (nye kommandoer eller instruktioner), som lader dit *program* gøre specifikke ting, som f.eks. at håndtere to *players* på én gang.
