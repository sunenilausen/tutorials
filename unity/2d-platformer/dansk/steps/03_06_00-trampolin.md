## Trampolin

Her beskrives hvordan man laver en trampolin. Koden er lavet sådan at
for at trampolinen ’virker’ skal man hoppe på den. (Det er en fordel
hvis man har lavet Player animationer først).

1.  Find billedet af *Trampoline* (Jump) og træk den ind i **Scene**n
    som for frugterne og kald den *Trampoline* og gem den i *Animator*
    folderen.

2.  I **Hierarchy**’et rename objektet til Trampoline.

3.  Vælg *Trampoline* objektet i **Hierarchy**’et og tilføj en **Box
    Collider 2D** og tilpas den.

4.  Sæt også **Is Trigger**

5.  Giv den et **Tag** som hedder *Trampoline* (skal laves først).

6.  Åben **Animator** vinduet (Trampoline objektet skal være valgt) og
    tilføj en *trigger* **Parameter** som hedder *Jump*.

7.  Lav en **Make Transition** af *Trampoline* staten til sig selv – se
    blå pil på billedet nede i højre hjørne:

<img src="../media/image47.png"
style="width:5.77083in;height:1.81528in" />

8.  Vælg den nye *Transition* (pilen) og tilføj en **Conditions** og sæt
    den til *Jump*.

9.  Fjern også fluebenet ud for **Has Exit Time**.

<img src="../media/image48.png"
style="width:4.71875in;height:0.53403in" />

10. Vælg *Trampoline* i *Animator* folderen og fjern fluebenet i **Loop
    Time** (**Inspector**’en):

<img src="../media/image49.png"
style="width:0.80208in;height:0.90625in" /><img src="../media/image50.png"
style="width:4.89583in;height:0.54306in" />

11. Tilføj følgende linjer til *PlayerController* scriptet (i bunden af
    OnTriggerEnter2D(Collider2D collision))

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

12. Husk at lave en PreFab når det virker.
