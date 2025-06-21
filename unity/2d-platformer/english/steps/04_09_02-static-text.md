### Static Text

If you want to create text that doesn't follow the camera, like a sign,
you can do the following.

1.  Create a square object (**2D Object->Sprites->Square**) and call
    it for example *Sign*.

2.  ![Alt text](media/image58.png){ width=1.0625in height=0.59375in }Adjust **Scale** so the square
    gets the right size.

3.  Select *Sign* and insert text (**UI->Text** or
    **UI->Legacy->Text**).

4.  ![Alt text](media/image59.png){ width=4in height=0.58333in }In **Hierarchy** under
    *Sign* select *Canvas* and in the **Inspector** under **Canvas** set
    **Render Mode** to **World Space**.



    Still in the **Inspector** under **Rect Transform** set **Pos X**,
    **Pos Y** and **Pos Z** to 0.

![Alt text](media/image60.png){ width=5.20833in height=0.67153in }

In **Hierarchy** select *Text* and set **Scale** to 0.02 for both X and Y
and change **Text** to what it should be.

![Alt text](media/image61.png){ width=5.06319in height=0.33333in }

Try the game and it should look like this now (my text is "<- This
way"):

![Alt text](media/image62.png){ width=2.92708in height=1.61042in }

The color of the sign is adjusted under the *Sign* object, while the text is formatted
under the *Text* object.
