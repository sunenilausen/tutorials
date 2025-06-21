## Komponenter

Komponenter er alle de ’egenskaber’ som man har tilknyttet til sit
objekt, som *Sprite Render*, *Colliders*, etc.

Man har tit brug for at kunne tilgå disse komponenter og de kan ’hentes’
på følgende måde:

```csharp
xxComp = GetComponent<Rigidbody2D>();
```

![](media/image53.png){ width=1.67708in height=0.33333in }De enkelte komponentnavne kan
findes i **Inspector**’en, hvor man bare skal fjerne eventuelle
mellemrum fra navnet. Fx Rigidbody 2D -\> Rigidbody2D

Komponenten **Transform** er der altid og tilgåes direkte med transform.

Hvis man her flere af den samme komponent, så skal man bruge:

```csharp
xxCompList = GetComponents<CapsuleCollider2D>();
```

Funktionen har fået et ’s’ på og xxCompList er en liste af komponenter.
