## Stå fast på platforme som bevæger sig

Hvis man står på en platform der bevæger sig, så er det vigtigt at
figuren bevæger sig sammen med platformen for ellers falder figuren af.
Scriptet oprettes i **Assets/Scripts/** og tilføjes til de platforme,
som skal have denne egenskab. Det er vigtigt at ens figur hedder
*Player*, ellers kan man bare rette det i scriptet.

(Scriptet er en del af *2dplatform* start pakken)

*StickyPlatform.cs*
```csharp
private void OnCollisionEnter2D(Collision2D collision)
{
    if (collision.gameObject.name == "Player")
    {
        collision.gameObject.transform.SetParent(transform);
    }
}

private void OnCollisionExit2D(Collision2D collision)
{
    if (collision.gameObject.name == "Player")
    {
        collision.gameObject.transform.SetParent(null);
    }
}
```
