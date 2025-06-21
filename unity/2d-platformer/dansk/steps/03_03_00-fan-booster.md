## Fan booster

Her beskrives hvordan man laver en fan (blæser) som kan blæse en op i
luften.

1.  Find billedet af *Fan*’en (On) og træk det ind i **Scene**n som for
    frugterne og kald den *Fan* og gem den i *Animator* folderen.

2.  I **Hierarchy**’et rename objektet til *Fan*.

3.  Vælg *Fan* objektet og giv det et **Tag** som hedder *Fan* (skal
    laves først).

4.  Tilføj en **Polygon Collider 2D** og få den til at se sådan ud som
    på billedet nedenunder (den grønne streg). (Højden af trekanten er
    ikke så vigtig – bare noget der ligner billedet).

5.  Sæt **Is Trigger**.

![Alt text](media/image35.png){ width=0.85069in height=1.41667in }

6.  Tilføj følgende kode til *PlayerController* scriptet (nede i bunden
    af filen før den sidste ’}’).

```csharp
private void OnTriggerStay2D(Collider2D collision)
{
    if (collision.gameObject.CompareTag("Fan"))
    {
        float distX = collision.gameObject.transform.position.x - gameObject.transform.position.x;
        if (Mathf.Abs(distX) < 0.5f)
            distX = Mathf.Sign(distX) * 0.5f;

        float distY = Mathf.Abs(collision.gameObject.transform.position.y - gameObject.transform.position.y);
        float forceY = jumpPower / (7 * distY * distY);
        float forceX = -jumpPower / (4 * distX);

        if ((distY < 3) && (rb.velocity.y < 0))
            forceY *= 3;

        if (Mathf.Abs(forceY) > 450)
            forceY = Mathf.Sign(forceY) * 450;

        rb.AddForce(new Vector2(forceX, forceY));
    }
}
```

7.  Man skal også tilføje en linje til Update() funktionen (den skal stå
    lige efter transform.Translate kaldet - det er kun linjen med
    **fed** som skal tilføjes):

```csharp
transform.Translate(dir * speed * Time.deltaTime, 0, 0);
```

**rb.velocity = new Vector2(0, rb.velocity.y);**

8.  Husk at lave en PreFab når det virker.
