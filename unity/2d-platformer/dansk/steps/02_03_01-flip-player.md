### Flip Player

Figuren skal nu kikke i den retning som den bevæger sig. Det gøres ved
at bruge **Flip** feltet i **Sprite Renderer**. Dette skal selvfølgelig
gøres automatisk fra *PlayerController* scriptet.

8.  Tilføj den manglende kode:
```csharp
public class PlayerController : MonoBehaviour
{
    [SerializeField] float speed = 10;
    SpriteRenderer sr;

    // Start is called before the first frame update
    void Start()
    {
        sr = GetComponent<SpriteRenderer>();
    }

    // Update is called once per frame
    void Update()
    {
        float dir = Input.GetAxisRaw("Horizontal");
        transform.Translate(dir * speed * Time.deltaTime, 0, 0);
        if (dir < 0)
            sr.flipX = true;
    }
}
```

Nu kan figuren vende til venstre men ikke tilbage igen til højre.

9.  Tilføj selv de to linjer kode som mangler for at *Player* også kan
    vende til højre igen.
