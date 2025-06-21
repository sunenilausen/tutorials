### Ground detekt (avanceret – kan laves senere)

Man kan hoppe mens man er i luften, hvilket jo ikke er meningen. Det kan
man undgå ved at checke om man står på jorden inden man hopper. Følgende
funktion undersøger om man står på jorden.

```csharp
[SerializeField] LayerMask groundLayer;
BoxCollider2D bc;

void Start()
{
    bc = GetComponent<BoxCollider2D>();
}

bool GroundCheck()
{
    return Physics2D.CapsuleCast(
        bc.bounds.center,
        bc.bounds.size,
        0f, 0f,
        Vector2.down,
        0.5f,
        groundLayer
    );
}
```

1.  Sæt nu alle de ovenstående linjerne ind de ”rigtige” steder i
    scriptet.

2.  **Ground Layer** feltet i **Inspector**’en skal sættes til *Ground*.

Brug funktionen (GroundCheck()) til at lave et ekstra check inden man
hopper.

3.  Man skal ’udvide’ if (jump) med en ekstra betingelse, og det kan
    gøres ved at skrive if (jump && GroundCheck()). Det betyder at begge
    betingelser skal være opfyldt inden man kan hoppe.

Tryk **Play** og se at det hele virker.
