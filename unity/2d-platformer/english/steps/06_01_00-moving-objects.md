## Moving Objects

Here is a script that can make an object move between a
series of points. It can be used to create a moving platform, but
also enemies that move in a pattern. The idea is described in this
video:

Link:
<https://youtu.be/UlEE6wjWuCY?list=PLrnPJCHvNZuCVTz6lvhR81nnaf1a-b67U&t=198>

The script is created in **Assets/Scripts/** and the following content is added:
(The script is part of the *2dplatform* starter package)

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

![](media/image64.png){ width=1.33333in height=0.86458in }The script automatically turns
the object so it points in "the right direction", except if it is
on the **Ground** layer. This way the script can be used for both enemies that
move and platforms that should move.

It can be advantageous to create an object group in the **Hierarchy**, so
the object and waypoints are collected together.

You add the script to the object that should move. In
the **Inspector** you create the number of Waypoints you need –
typically 2. Next, you create a corresponding number of Waypoints in
the **Hierarchy** and call them *Waypoint1*, *Waypoint2*, … They should then
be dragged into the **Inspector** one by one.

![](media/image65.png){ width=4.34444in height=1.41667in }

If it is a platform that should move, it is important that you have
set the **Layer** to *Ground*. If it doesn't exist, it should just
be created.

![](media/image66.png){ width=4.38611in height=0.78125in }
