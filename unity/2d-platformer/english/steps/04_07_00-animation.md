## Animation

When you want your character and objects' graphics to move, you need
to use an Animator. This is described in this video:
<https://youtu.be/GChUpPnOSkg?list=PLrnPJCHvNZuCVTz6lvhR81nnaf1a-b67U&t=14>

Here is how you create your first animation for your *Player* (requires
you to have watched the video...). If you don't have a folder called *Animator*
under *Assets*, it should be created first.

1.  In the *Animator* folder, **Create->Animation** and call the file something
    'sensible', for example *Player_idle*.

2.  Then drag the *Player_idle* file to the *Player* object in
    **Hierarchy**. (This also creates a *Player controller* the first
    time you do it.)

3.  Then you need to open the animation window:
    **Window->Animation->Animation**.

4.  Then select the *Player* object in **Hierarchy**.

5.  Now select all the images that make up the animation and drag them over into
    the **Animator**.

6.  You can now see how it looks by pressing *play*, and adjust
    the speed by moving the blue line to the sides (see image
    below).

7.  If the animation should continue, you must remember to set *Loop Time* in
    the **Inspector**.

![Alt text](media/image39.png){ width=5.88542in height=1.81319in }

When you are done with the animation window, you can advantageously dock it
to one of the other windows you have, so it is easier to find next
time.
