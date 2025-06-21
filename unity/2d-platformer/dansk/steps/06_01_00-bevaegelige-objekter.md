## Bevægelige objekter

Her er et script som kan få et objekt til at bevæge sig i mellem en
serie af punkter. Det kan bruges til at lave en bevægelig platform, men
også fjender som bevæger sig i et mønster. Ideen er beskrevet i denne
video:

Link:
<https://youtu.be/UlEE6wjWuCY?list=PLrnPJCHvNZuCVTz6lvhR81nnaf1a-b67U&t=198>

Scriptet oprettes i **Assets/Scripts/** og følgende indhold tilføjes:
(Scriptet er en del af *2dplatform* start pakke)

*WaypointFollower.cs*
```csharp
[SerializeField] GameObject[] waypoints;

int currentWaypointIndex = 0;

[SerializeField] float speed;

SpriteRenderer sr;

private void Start()
{
    sr = GetComponent<SpriteRenderer>();
}

void Update()
{
    int prevWaypointIndex;
    if (Vector2.Distance(waypoints[currentWaypointIndex].transform.position, transform.position) < 0.1f)
    {
        prevWaypointIndex = currentWaypointIndex;
        currentWaypointIndex++;

        if (currentWaypointIndex >= waypoints.Length)
            currentWaypointIndex = 0;

        // Change direction for default layer only
        if (gameObject.layer != LayerMask.NameToLayer("Ground"))
        {
            if (waypoints[currentWaypointIndex].transform.position.x > waypoints[prevWaypointIndex].transform.position.x)
                sr.flipX = true;
            else
                sr.flipX = false;
        }
    }

    transform.position = Vector2.MoveTowards(
        transform.position,
        waypoints[currentWaypointIndex].transform.position,
        Time.deltaTime * speed
    );
}
```

![Alt text](media/image64.png){ width=1.33333in height=0.86458in }Scriptet vender automatisk
objektet så det peger i ”den rigtige retning”, på nær hvis det er
**Ground** layer. På den måde kan scriptet bruges både til fjender som
bevæger sig og platforme som skal bevæge sig.

Det kan være en fordel at lave en objektgruppe i **Hierarchy**’et, så
objektet og waypoints er samlet.

Man tilføjer scriptet til det objekt som skal bevæge sig. I
**Inspector**’en laves der det antal Waypoints som man har brug for –
typisk 2. Dernæst laves et tilsvarende antal Waypoints i
**Hierarchy**’et og de kaldes *Waypoint1*, *Waypoint2*, … De skal så
trækkes over i **Inspector**’en en for en.

![Alt text](media/image65.png){ width=4.34444in height=1.41667in }

Hvis det er en platform, som skal bevæge sig er det vigtigt at man har
sat **Layer** til *Ground*. Hvis det ikke findes, skal det bare
oprettes.

![Alt text](media/image66.png){ width=4.38611in height=0.78125in }
