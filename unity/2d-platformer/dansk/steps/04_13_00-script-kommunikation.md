## Script kommunikation

Hvis man har brug for at et script kan ’se’ en tilstand eller variable i
et andet script, så kan det gøres på følgende måde.

I dette eksempel, så findes der et objekt som hedder **’Player’** som
har et script som hedder **PlayerController** og dette script har en
*public* variabel som hedder gameOver;

Hvis man vil tilgå denne gameOver variabel fra et andet script, skal man
gøre følgende:

```csharp
PlayerController playerControllerScript;

void Start()
{
    playerControllerScript = GameObject.Find("Player").GetComponent<PlayerController>();
}

void Update()
{
    if (playerControllerScript.gameOver == false)
    {
        // gør noget
    }
}
```
