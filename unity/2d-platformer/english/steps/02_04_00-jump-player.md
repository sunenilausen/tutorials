## Jump Player

We need to get *Player* to be able to jump and this is done by adding
some more code to the *PlayerController* script. The jump itself works by
adding a force to the **Rigidbody** component:

```csharp
rb.AddForce(Vector3.up * jumpPower);
```

The Rigidbody component must first be 'retrieved' (just like SpriteRenderer was
done) and this is done in the following way (they should be placed in the same place in the code as
for SpriteRenderer):

```csharp
Rigidbody2D rb;

...

rb = GetComponent<Rigidbody2D>();
```

jumpPower should be a visible variable in the **Inspector**, so you can later
adjust it:

```csharp
[SerializeField] float jumpPower = 200;
```

The Jump key is read in the following way:

```csharp
bool jump = Input.GetButtonDown("Jump");
```

1.  Now put all the above lines in the "right" places in
    the script. Look at the script to see where the corresponding lines are.

2.  Add an if statement to perform the jump when you press the *Space*
    key.

3.  Adjust the jump height in the **Inspector** with the **Jump Power** value.

If you think *Player* can jump a bit too far, you can
increase the **Rigidbody 2D->Gravity Scale** value to e.g.
*1.5* in the **Inspector**, which will then require you to increase the **Jump Power** field to
achieve the same jump height. This way *Player* can jump just as high,
but shorter.