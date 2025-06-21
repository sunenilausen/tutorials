## Trampoline

This describes how to create a trampoline. The code is made so that for the trampoline to 'work' you need to jump on it. (It's an advantage if you've created Player animations first).

1.  Find the image of *Trampoline* (Jump) and drag it into the **Scene** as you did for the fruits and call it *Trampoline* and save it in the *Animator* folder.

2.  In the **Hierarchy** rename the object to Trampoline.

3.  Select the *Trampoline* object in the **Hierarchy** and add a **Box Collider 2D** and adjust it.

4.  Also set **Is Trigger**

5.  Give it a **Tag** called *Trampoline* (must be created first).

6.  Open the **Animator** window (Trampoline object must be selected) and add a *trigger* **Parameter** called *Jump*.

7.  Create a **Make Transition** from the *Trampoline* state to itself – see blue arrow in the image below in the bottom right corner:

![Alt text](media/image47.png){ width=5.77083in height=1.81528in }

8.  Select the new *Transition* (the arrow) and add a **Conditions** and set it to *Jump*.

9.  Also remove the checkmark next to **Has Exit Time**.

![Alt text](media/image48.png){ width=4.71875in height=0.53403in }

10. Select *Trampoline* in the *Animator* folder and remove the checkmark in **Loop Time** (**Inspector**):

![Alt text](media/image49.png){ width=0.80208in height=0.90625in }![Alt text](media/image50.png){ width=4.89583in height=0.54306in }

11. Add the following lines to the *PlayerController* script (at the bottom of OnTriggerEnter2D(Collider2D collision))

```csharp
if (collision.gameObject.CompareTag("Trampoline"))
{
    Animator animC = collision.gameObject.GetComponent<Animator>();
    float forceY = Mathf.Abs(rb.velocity.y * jumpPower / 8);

    if (forceY > 100)
    {
        if (forceY > 800)
            forceY = 800;

        animC.SetTrigger("Jump");
        rb.velocity = new Vector2(rb.velocity.x, 0);
        rb.AddForce(new Vector2(0, forceY));
    }
}
```

12. Remember to create a PreFab when it works.
