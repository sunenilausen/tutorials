## Add Player

We need to select the character we want to use as our Player in the game. There
are 4 different ones to choose from and they are all in the folder **Pixel
Adventures 1/Assets/Main Characters/**. Look through them and find the one you
like best.

1.  Select a character type under **Main Characters**. Click on the image of
    **idle** (1) version's arrow to the right (2).

2.  Click on the first image (3) that appears and drag it into the
    **Scene**.

![Alt text](media/image4.png){ width=2in height=2.04375in }

It should now look like this.

![Alt text](media/image5.png){ width=1.54167in height=1.01944in }

A new object also appears in the **Hierarchy** called something
like "Idle ...".

3.  Rename 'Idle ...' to *Player*. Remember capital P!

You can change the size of the character in the **Inspector** by changing
the **Scale** values.

![Alt text](media/image6.png){ width=4.58333in height=1.07847in }

![Alt text](media/image7.png){ width=1.65625in height=0.70069in }Click **Play** at the top of
the screen and see how it looks. Nothing happens, *Player* becomes
'floating' in the air.

4.  Select *Player* in the **Hierarchy** and in the **Inspector** (out to
    the right) click **Add Component** and select **Rigidbody 2D**.

The Rigidbody component makes *Player* handled by the physics engine,
which among other things means it will be affected by gravity.

Click **Play** and see what happens! Now *Player* falls through the platform.
This is because it doesn't have a Collider.

5.  In the **Inspector** now add a **Box Collider 2D**

Click **Play** again. Now the character should fall down and stand on
the platform.

6.  Adjust the **Collider** so it better fits the size of the character
    by clicking **Edit Collider**
    ![Alt text](media/image8.png){ width=0.27083in height=0.21875in } and then adjusting
    the 'rectangle' in the **Scene**.

7.  Under **Rigidbody 2D** you must set the following (otherwise the character
    can tip over):

![Alt text](media/image9.png){ width=2.10417in height=0.62292in }
