## Movement

When you have figured out which movement of the character you need,
the actual movement is done in the following way:

```csharp
transform.Translate(xSpeed, ySpeed, 0); // Move

rb = GetComponent<Rigidbody2D>();

rb.AddForce(new Vector2(xForce, yForce)); // Jump

If you need to mirror your character so it looks in the
right direction, it can be done like this:

sprite = GetComponent<SpriteRenderer>();

sprite.flipX = true; // Flip image
```

A complete example could look like this:
```csharp
[SerializeField] float speed;

Rigidbody2D rb;
SpriteRenderer sprite;

void Start()
{
    rb = GetComponent<Rigidbody2D>();
    sprite = GetComponent<SpriteRenderer>();
}

void Move(float dir)
{
    transform.Translate(dir * speed * Time.deltaTime, 0, 0);

    if (dir > 0)
        sprite.flipX = false;
    else if (dir < 0)
        sprite.flipX = true;
}
```

Instead of using transform.Translate(...), you can also write:

```csharp
rb.velocity = new Vector2(dir * speed, rb.velocity.y);
```

However, this can cause some problems with moving the *Player* sometimes
(it 'gets stuck' in the ground). This is solved by changing the **Box Collider
2D** to **Capsule Collider 2D**.