## Flyt kamera efter spiller

Hvis man gerne vil have kameraet til at følge figuren, så skal man lave
følgende script og tilføje det til **Main** **Camera** objektet. (Husk
at sætte figuren ind i **player** feltet i **Inspector**’en.)

(Scriptet er en del af *2dplatform* start pakke)

*CameraFollower.cs*
```csharp
[SerializeField] Transform player;

void Update()
{
    transform.position = new Vector3(player.position.x, transform.position.y, transform.position.z);

    if (player.position.y > 5)
    {
        transform.position = new Vector3(transform.position.x, player.position.y - 5, transform.position.z);
    }

    if (player.position.y < -3)
    {
        transform.position = new Vector3(transform.position.x, player.position.y + 3, transform.position.z);
    }
}
```
