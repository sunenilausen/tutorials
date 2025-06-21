## Game text and points

When you collect fruits and other items in the game, you should get points for
it. These points should of course be displayed on the screen.

You start by inserting text into the **Scene** in the following way:

1.  ![](media/image18.png){ width=0.9375in height=0.35417in }Create an object in the
    **Hierarchy** and select **UI->Text** and call it *Score*. (If
    you are running Unity version 2021.3 it is located in
    **UI->Legacy->Text**.) This will automatically create two objects:
    **Canvas** and **Score**.

2.  Start by selecting *Canvas* and set the following in the **Inspector**:

![](media/image19.png){ width=6.77222in height=0.50208in }

After you have created *Score*, it should be configured in the **Inspector**
(see the image below).

3.  Change **Text** to *Score: 0*.

4.  Next to **Font**, click on ![](media/image20.png){ width=0.17708in height=0.20833in } and select
    *PressStart2P-Regular*.

5.  Set **Font Style** to *Bold*

6.  Set **Font Size** to 16.

7.  Choose a good color in **Color**.

![](media/image21.png){ width=5.8125in height=1.36667in }

Look now in the **Game** window and see that the text is located all the way down in the left
corner. This is a bit strange (but that's just how it is).

8.  Now move the text up to the top of the screen (**Scene** window), by
    dragging it up (here you should look at the **Game** window, but move
    the text in the **Scene** window!).

When you zoom out in the **Scene** window you can see that a white
rectangle appears – it should be at the top of this rectangle! (Your entire game
is in the red circle down in the left corner – you have to zoom out that far!)

![](media/image22.png){ width=5.47153in height=3.08125in }

9.  Now place the text in a good location and increase the size so it is
    easier to see.

When you make the size larger, the text can suddenly
"disappear". This is because the box that the text is in is too small.
This is fixed by selecting the text and then adjusting the box size in
the **Scene**. Remember to also make the box long enough for the text we
will write later. (Drag the blue dots to change the box
size).

![](media/image23.png){ width=2.08333in height=0.51042in }

10. In the *PlayerController* script now add the following lines 'in the right
    places in the code'.

```csharp
using UnityEngine.UI;

[SerializeField] Text scoreText;

scoreText.text = "Score: ";
```

The last line should be at the bottom of the Update() function.

11. Drag the *Score* object in the **Hierarchy** over to the
    **Inspector**: **Player Controller->Score Text** field.

Run the code and see that it works.
