### Stationær tekst

Hvis man vil lave en tekst som ikke følger kameraet, som fx et skilt, så
kan man gøre følgende.

1.  Lav et firkantet objekt (**2D Object-\>Sprites-\>Square**) og kald
    det fx *Skilt*.

2.  ![](media/image58.png){ width=1.0625in height=0.59375in }Ret **Scale** så firkanten
    får den rigtige størrelse.

3.  Vælg *Skilt* og indsæt en tekst (**UI-\>Text** el.
    **UI-\>Legacy-\>Text**).

4.  ![](media/image59.png){ width=4in height=0.58333in }I **Hierarchy**’et under
    *Skilt* vælg *Canvas* og i **Inspector**’en under **Canvas** sæt
    **Render Mode** til **World Space**.



    Stadig i **Inspector**’en under **Rect Tranform** sæt **Pos X**,
    **Pos Y** og **Pos Z** til 0.

![](media/image60.png){ width=5.20833in height=0.67153in }

I **Hierarchy**’et vælg *Text* og sæt **Scale** til 0.02 for både X og Y
og ret **Text** til det den skal være.

![](media/image61.png){ width=5.06319in height=0.33333in }

Prøv spillet og det skulle gerne se sådan ud nu (min tekst er ”\<- Den
vej”):

![](media/image62.png){ width=2.92708in height=1.61042in }

Farven på skiltet rettes under *Skilt* objektet, mens teksten formateret
under *Text* objektet.
