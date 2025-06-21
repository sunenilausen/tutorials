## Player animations

![](media/image36.png){ width=0.70833in height=0.9375in }Now we need to animate our *Player*. Under the graphics folder where you found your Player (**Main Characters/**), there are some different "animations", i.e. series of images that, when shown at the right speed, create an animation. We'll start by creating an animation when the *Player* stands still (idle).

1.  In the *Animator* folder, **Create->Animation** and call the file *Player_idle*.

2.  Then drag the *Player_idle* file over the *Player* object in the **Hierarchy**. (This also creates a *Player controller* the first time you do it – see image on the right.)

3.  Then you need to open the animation window: **Window->Animation->Animation**.

4.  Then select the *Player* object in the **Hierarchy**.

5.  Now select all the images that make up the animation and drag them into the **Animator**. (This is done by finding the *Idle* animation file you want to use and clicking on the small arrow so you can see all the images, select them all and drag them into the animator with the mouse).

![](media/image37.png){ width=4.95278in height=1.46875in }

It should look like the image below.

6.  You can now see how it looks by pressing the play
    ![](media/image38.png){ width=0.19028in height=0.16667in } button, and adjust the speed by moving the blue line to the sides (see red arrow below).
    ![](media/image39.png){ width=5.88542in height=1.81319in }

7.  Since the animation should continue, remember to set *Loop Time* in the **Inspector** for *Player_idle*.

![](media/image40.png){ width=3.69792in height=1.63472in }

When you're done with the animation window, you can advantageously dock it to one of the other windows you have, e.g. the **Console** window, so it's easier to find next time.

Try the game and see if it works.
