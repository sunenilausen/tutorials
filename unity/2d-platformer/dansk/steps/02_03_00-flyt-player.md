## Flyt Player

For at få *Player* til at flytte sig skal vi oprette vores første
script.

1.  I folderen **Assets/Scripts/** højreklik og opret et **Create-\>C#
    Script** og kald det *PlayerController*. (Det er vigtigt at gøre det
    i et flow – man må ikke rename filen …!)

2.  Træk nu dette script op over *Player* i **Hierarchy**’et.

3.  Dobbelt klik på scriptet for at åbne det i MVS editoren.

Koden her er skrevet i C# og det er meningen at man selv skal tilføje
den kode som mangler alt efter hvad man vil opnå.

Hvis man ønsker en gennemgang af C# er her en link til en god guide på
dansk, lavet specielt til Unity:
[https://github.com/Grailas/CodingPiratesAalborg/blob/master/Guides/Hj%C3%A6lpeguide.pdf](https://github.com/Grailas/CodingPiratesAalborg/blob/master/Guides/Hjælpeguide.pdf)

4.  Skriv følgende linjer i Update() funktionen (de nye linjer er vist
    med **fed**):

```csharp
void Update()
{
    float dir = Input.GetAxisRaw("Horizontal");
    Debug.Log(dir);
}
```

5.  Kik på **Console** vinduet og tryk på **Play**.

Tryk nu på *piletaskerne* og se hvad der sker. Debug linjen skriver ud
hver gang man trykker på en piletast. (Virker også med A og D). Det er
linjen Debug.Log() som printer ud på **Consolen** og er et vigtigt
redskab når man skal debugge sin kode.

6.  Ændre nu filen til følgende (det er meningen at man selv skal ændre
    filen så den matcher nedenstående):
    ```csharp
    public class PlayerController : MonoBehaviour
    {
        [SerializeField] float speed = 10;

        // Start is called before the first frame update
        void Start()
        {
        }

        // Update is called once per frame
        void Update()
        {
            float dir = Input.GetAxisRaw("Horizontal");
            transform.Translate(dir * speed * Time.deltaTime, 0, 0);
        }
    }
    ```

Tryk på **Play** og se om det virker.

7.  Man kan ændre hastigheden i **Inspector**’en ved at ændre på
    **Speed** værdien.

![](media/image10.png){ width=3.875in height=0.72431in }
