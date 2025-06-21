### Spillet over på Android enhed

Nu skal vi have spillet over på Android enheden.

1.  Åben Unity HUB’en og installer Android support
    (Install-\>![](media/image77.png){ width=0.16181in height=0.15625in }-\>Add modules). Unity
    GUI skal genstartes bagefter for at det virker.

![](media/image78.png){ width=2.25in height=0.94028in }

2.  Sæt Android enheden i *Developer mode* (søg på nettet – det er lidt
    overraskende hvad man skal gøre og kan afhænge af model). Det
    tilføjer et nyt menupunkt.

3.  Åbn **Udviklingsindstillinger** (Developer mode) og vælg
    **USB-fejlretning** (USB-debug mode)

4.  Forbind Android enheden til computeren med et USB-data kabel og giv
    den tilladelse til at debugge enheden.

5.  I Unity GUI vælg **File-\>Build Settings** og vælg *Android* og tryk
    **Switch Platform**.

6.  Tryk derefter på **Build And Run**, giv filen et navn og kryds
    fingrene. Med lidt held skulle spillet gerne starte op på Android
    enheden efter noget tid.

Spillet ligger nu på Android enheden (kik under programmer) og kan
spilles ’offline’. Navn mv kan sættes i **Player Settings** under
**Build Settings** (nede i venstre hjørne).

Hvis teksterne (Score mv) ikke lige sidder det rigtige sted på skærmen,
så kan man fikse det ved at bruge *anchors* for de enkelte tekster.

![](media/image79.png){ width=1.73958in height=1.02083in }
