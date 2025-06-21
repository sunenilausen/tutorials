### Flip Player

The character should now look in the direction it's moving. This is done by
using the **Flip** field in the **Sprite Renderer**. This should of course
be done automatically from the *PlayerController* script.

8.  Add the missing code:
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

Now the character can turn left but not back to the right again.

9.  Add the two lines of code yourself that are missing so that *Player* can also
    turn right again.