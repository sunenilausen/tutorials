## Simple forhindringer

Indtil nu har spillet været ret fredeligt, så det er på tide at tilføje
nogle forhindringer. Der ligger en liste af forhindringer og fælder
under **Pixel Adventures 1/Assets/Traps** folderen.

1.  Under *Spikes* vælg *Idle* og træk den ind i **Scene**n et godt
    sted.

2.  I **Hierarchy**’et rename den til *Pigge*.

3.  Vælg *Pigge* og tilføj en **Collider** og tilpas størrelsen

4.  Sæt **Is Trigger**.

5.  Tilføj også et **Tag** som hedder *Trap*.

6.  Tilføj nu følgende linjer i *PlayerController* scriptet, i
    funktionen private void OnTriggerEnter2D(Collider2D collision)

```csharp
if (collision.gameObject.CompareTag("Trap"))
{
    Destroy(gameObject);
}
```

7.  Put flere forskellige ’forhindringer’ ind, som saven (**Saw**), og
    søg for at den er animeret (så det ser ud som om den kører rundt).

(Pro tip: Hvis man gerne vi have at kun en del af saven er synlig, som
fx at den stikker op af jorden, skal man sætte **Position** **Z** til
1.)

8.  Husk at lave **PreFabs** af de forskellige forhindringer, så de er
    lettere at genbruge.
