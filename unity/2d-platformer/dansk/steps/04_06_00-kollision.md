## Kollision

Når to objekter, som begge har en **Collider** blok, rører hinanden, så
har man en kollision. En kollision kan enten være en ’normal’ kollision
eller en ’trigger’ kollision. En ’normal’ kollision vil forhindre at de
to objekter overlapper hinanden, fx som en person som går på et gulv,
hvor en ’trigger’ kollision blot er en indikation at to objekter
overlapper, som hvis en person skal tage en ting. Hvis den ene af de to
objekter har ’triggeren’ sat, så bliver det en ’trigger’ kollision.
’Triggeren’ sættes i **Inspector**’en under **Collider**’en.

![Alt text](media/image54.png){ width=2.17708in height=0.26042in }

I scriptet kan man så lave en aktion på kollisionen, på følgende måde:

Normal kollision:

```csharp
// Normal kollision:
private void OnCollisionEnter2D(Collision2D collision)
{
    if (collision.gameObject.name == "Player")
    {
        // ...
    }
}

// Trigger kollision:
private void OnTriggerEnter2D(Collider2D collision)
{
    if (collision.gameObject.CompareTag("Cherry"))
    {
        // ...
    }
}
```

For at det virker skal mindst det ene objekt også have en *Rigidbody*
komponent. Læg mærke til at der er vist to forskellige måde at ’se’
hvilket objekt som man rammer – det er *ikke* afhængig af trigger
metoden, men kun vist for at der er lidt at vælge imellem.
