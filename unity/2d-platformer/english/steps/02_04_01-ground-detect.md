### Ground Detect (advanced – can be done later)

You can jump while you're in the air, which is not the intention. You can
avoid this by checking if you're standing on the ground before jumping. The following
function checks if you're standing on the ground.

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

1.  Now put all the above lines in the "right" places in
    the script.

2.  The **Ground Layer** field in the **Inspector** should be set to *Ground*.

Use the function (GroundCheck()) to make an extra check before
jumping.

3.  You need to 'extend' if (jump) with an extra condition, and this can
    be done by writing if (jump && GroundCheck()). This means that both
    conditions must be met before you can jump.

Click **Play** and see that everything works.