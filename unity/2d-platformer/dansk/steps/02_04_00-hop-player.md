## Hop Player

Vi skal nu have *Player* til at kunne hoppe og det gøres ved at tilføje
noget mere kode til *PlayerController* scriptet. Selve hoppet virker ved
at tilføje en kræft til **Rigidbody** komponenten:

```csharp
rb.AddForce(Vector3.up * jumpPower);
```

Ridigbody komponenten skal først ’hentes’ (ligesom SpriteRenderer blev
det) og dette gøres på følgende måde (de skal stå samme sted i koden som
for SpriteRenderer):

```csharp
Rigidbody2D rb;

...

rb = GetComponent<Rigidbody2D>();
```

jumpPower skal være en synlig variabel i **Inspector**’en, så man senere
kan rette i den:

```csharp
[SerializeField] float jumpPower = 200;
```

Jump tasten aflæses på følgende måde:

```csharp
bool jump = Input.GetButtonDown("Jump");
```

1.  Sæt nu alle de ovenstående linjerne ind de ”rigtige” steder i
    scriptet. Kik på scriptet for at se hvor de tilsvarende linjer står.

2.  Tilføj en if sætning for at udføre hoppet når man trykker på *Space*
    tasken.

3.  Juster hoppe højden i **Inspector**’en med værdien **Jump Power**.

Hvis man synes at *Player* kan hoppe lidt for langt, så kan man i
**Inspector**’en øge **Rigidbody 2D-\>Gravity Scale** værdien til fx
*1.5*, det vil så kræve at man samtidig øger **Jump Power** feltet for
at opnå samme hoppehøjde. På den måde kan *Player* hoppe lige så højt,
men kortere.
