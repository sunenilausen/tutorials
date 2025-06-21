## Interval check

Hvis man har en værdi som skal holder sig inde i et interval, fx antal
liv, så kan man bruge en Clamp funktion.

newLevel = Mathf.Clamp(level - 1, 0, 3);

Første parameter er den nye værdi som skal testes, næste er min og
derefter max. Funktionen returnerer en lovlig værdi så tæt på den nye
værdi som muligt.
