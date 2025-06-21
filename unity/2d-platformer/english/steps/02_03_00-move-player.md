## Move Player

To get *Player* to move we need to create our first
script.

1.  In the folder **Assets/Scripts/** right-click and create a **Create->C#
    Script** and call it *PlayerController*. (It's important to do this
    in one flow – you must not rename the file...!)

2.  Now drag this script up over *Player* in the **Hierarchy**.

3.  Double-click on the script to open it in the MVS editor.

The code here is written in C# and it's intended that you should add
the code that's missing depending on what you want to achieve.

If you want a walkthrough of C# here's a link to a good guide in
Danish, made specifically for Unity:
[https://github.com/Grailas/CodingPiratesAalborg/blob/master/Guides/Hj%C3%A6lpeguide.pdf](https://github.com/Grailas/CodingPiratesAalborg/blob/master/Guides/Hjælpeguide.pdf)

4.  Write the following lines in the Update() function (the new lines are shown
    in **bold**):

```csharp
void Update()
{
    float dir = Input.GetAxisRaw("Horizontal");
    Debug.Log(dir);
}
```

5.  Look at the **Console** window and click **Play**.

Now press the *arrow keys* and see what happens. The Debug line writes out
every time you press an arrow key. (Also works with A and D). It's
the Debug.Log() line that prints to the **Console** and is an important
tool when you need to debug your code.

6.  Now change the file to the following (you're supposed to change
    the file yourself so it matches the below):
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

Click **Play** and see if it works.

7.  You can change the speed in the **Inspector** by changing the
    **Speed** value.

![Alt text](media/image10.png){ width=3.875in height=0.72431in }
