## Moving objects

We now want some of our obstacles to move.
The script we need for this is located in **Assets/Scripts** and is called
*WaypointFollower*. The script can be used both to get platforms to
move, but also enemies to walk in a pattern, i.e. between a
list of points.

In the following we will get the circular saw to move to the sides, i.e.
between two points.

1.  Create an empty object and call it *MovingSaw*. (Remember to set
    **Transform->Position->Z** = 0.)

2.  Add *Saw* (use Prefab) under *MovingSaw*

3.  Add the script *WaypointFollower* to *Saw*.

4.  In the **Inspector** for *Saw* create the number of Waypoints you
    need – in this case 2. Open **Waypoints** and click on
    '+' to add Waypoints.

5.  Create a corresponding number of *Waypoints* (**Create Empty**) in
    the **Hierarchy** under *MovingSaw* and call them *Waypoint1*,
    *Waypoint2*, …

6.  The *Waypoints* are dragged over to the **Inspector** for *Saw* one by one.
    It should now look like this:

![Alt text](media/image24.png){ width=5.16944in height=0.61458in }

![Alt text](media/image25.png){ width=1.29167in height=0.8125in }

7.  Set **Speed** to **5** in the **Inspector** for Saw. This is the
    speed at which it should move and should be trimmed later when
    everything is running.

Now everything is prepared, but we still need to place the two *Waypoints* in the
right places.

8.  Select *Waypoint1* and in the **Inspector** click on the small cube in
    the top left corner and select one of the colors in the bottom row.

![Alt text](media/image26.png){ width=2.41528in height=1.56042in }

The waypoint now becomes visible in the **Scene** window.

9.  Move it to one endpoint.

10. Do the same for *Waypoint2*, but place it as the other
    endpoint.

![Alt text](media/image27.png){ width=2.87569in height=0.8125in }

Now everything should work. Remember that you can change the speed with
**Speed**. Note that the *Waypoints* are not visible in the **Game**
window.

11. Remember to create a **PreFab**, so it's easy to reuse it.

12. Select another object and get it to move, e.g. *Spike
    Head*.

It can also be an advantage to have a few different PreFabs of e.g.
the saw, one for left/right and one for up/down. This makes it easier to
use later when you want to create more levels.
