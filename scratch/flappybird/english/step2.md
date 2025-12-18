# Gravity and jumping

By dragging blocks into the code area, we can make gravity.
Drag in "when green flag clicked" to start a new sequence of code. This sequence will be responsible for our gravity behavior.
In the sequence, we use a "forever" and a "change y by" block to make our sprite fall downwards.

![](images/Screenshot%202025-09-05%20195037.png)

To get real gravity, we need to accelerate toward the ground. We do this by having a variable that determines the speed toward the ground.
Create a new variable by clicking "Make a Variable," and call it upSpeed.

![](images/Screenshot%202025-09-05%20195323.png)

In our block sequence, drag a variable block into "forever," so that upSpeed gets larger in each loop cycle. Then we change y by upSpeed.

![](images/Screenshot%202025-09-05%20195344.png)

Now our gravity works!

But to reset our character to the start, we need to make a new block sequence.
Drag in another "when green flag clicked," then drag in a "go to x, y" block and set it to 0,0. This resets our position.

![](images/Screenshot%202025-09-05%20195427.png)

Also reset our variable to 0.

![](images/Screenshot%202025-09-05%20195433.png)

Then we make a third block sequence, where pressing the space key starts the code.
We set upSpeed to 10, which makes our character go upward.

![](images/Screenshot%202025-09-05%20195621.png)

Our code should now look like this:

![](images/Screenshot%202025-09-05%20195632.png)
