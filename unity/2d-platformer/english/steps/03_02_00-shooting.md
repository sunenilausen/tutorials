## Shooting

![](media/image34.png){ width=0.43889in height=1.32153in }
This describes how to create something that can shoot. We start by creating the fireball itself. Under the **Assets/Graphics** folder, there are some images that can be used for it.

1.  Drag the *Fireball1* image into the **Scene**.

2.  Add a **Rigidbody 2D**.

3.  Add a collider and set **Is Trigger**.

4.  Set **Tag** to *Trap*.

5.  Create a script and call it *Fireball* and drag it over the *Fireball* object in the **Hierarchy**.

6.  Open the script and add the following code:

```csharp
float maxLifeTimeS = 6;

void Update()
{
    maxLifeTimeS -= Time.deltaTime;

    if (maxLifeTimeS <= 0)
        Destroy(gameObject);

    transform.Translate(0, -5 * Time.deltaTime, 0);
}

private void OnTriggerEnter2D(Collider2D collision)
{
    if (collision.gameObject.CompareTag("Player") ||
        (collision.gameObject.layer == LayerMask.NameToLayer("Ground")))
    {
        Destroy(gameObject);
    }
}
```

7.  Create a PreFab of it.

We now need to create the part that will shoot the fireball.

8.  Under **Traps/Fire** take the image file *Off* and drag it into the **Scene**.

9.  Rename the object to *Fire_shoot*.

10. Create a script called *Fire_shoot* and drag it over the *Fire_shoot* object

11. Add the following code to the file:

```csharp
[SerializeField] GameObject fireball;
[SerializeField] float fireRateSec = 2;

Quaternion rotation;
Vector3 pos;
float rateTimeS;

void Start()
{
    rateTimeS = 0;
    rotation = transform.rotation * Quaternion.Euler(0, 0, 180);
    pos = new Vector3(transform.position.x, transform.position.y, transform.position.z + 0.1f);
}

void Update()
{
    rateTimeS += Time.deltaTime;
    if (rateTimeS > fireRateSec)
    {
        // Shoot
        Instantiate(fireball, pos, rotation);
        rateTimeS = 0;
    }
}
```
    *PreFabs* folder into the *Fireball* field.

The shooting speed is controlled with the **Fire Rate Sec** field.

13. When everything works, create a PreFab.
