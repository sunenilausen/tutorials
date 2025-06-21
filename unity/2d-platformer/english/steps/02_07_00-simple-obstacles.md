## Simple obstacles

Until now the game has been quite peaceful, so it's time to add
some obstacles. There is a list of obstacles and traps
under the **Pixel Adventures 1/Assets/Traps** folder.

1.  Under *Spikes* select *Idle* and drag it into the **Scene** at a good
    location.

2.  In the **Hierarchy** rename it to *Spikes*.

3.  Select *Spikes* and add a **Collider** and adjust the size

4.  Set **Is Trigger**.

5.  Also add a **Tag** called *Trap*.

6.  Now add the following lines in the *PlayerController* script, in
    the function private void OnTriggerEnter2D(Collider2D collision)

```csharp
if (collision.gameObject.CompareTag("Trap"))
{
    Destroy(gameObject);
}
```

7.  Put several different 'obstacles' in, like the saw (**Saw**), and
    make sure it is animated (so it looks like it's running).

(Pro tip: If you want only part of the saw to be visible, like
having it stick up from the ground, you should set **Position** **Z** to
1.)

8.  Remember to create **PreFabs** of the different obstacles, so they are
    easier to reuse.