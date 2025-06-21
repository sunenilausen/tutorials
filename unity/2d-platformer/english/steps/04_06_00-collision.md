## Collision

When two objects, both having a **Collider** component, touch each other,
you have a collision. A collision can either be a 'normal' collision
or a 'trigger' collision. A 'normal' collision will prevent the
two objects from overlapping each other, for example like a person walking on a floor,
while a 'trigger' collision is merely an indication that two objects
overlap, like when a person should pick up an item. If one of the two
objects has the 'trigger' set, it becomes a 'trigger' collision.
The 'trigger' is set in the **Inspector** under the **Collider**.

<img src="../media/image54.png"
style="width:2.17708in;height:0.26042in" />

In the script, you can then create an action on the collision in the following way:

Normal collision:

```csharp
// Normal collision:
private void OnCollisionEnter2D(Collision2D collision)
{
    if (collision.gameObject.name == "Player")
    {
        // ...
    }
}

// Trigger collision:
private void OnTriggerEnter2D(Collider2D collision)
{
    if (collision.gameObject.CompareTag("Cherry"))
    {
        // ...
    }
}
```

For this to work, at least one object must also have a *Rigidbody*
component. Note that two different ways to 'see'
which object you hit are shown – this is *not* dependent on the trigger
method, but only shown so there is something to choose from.