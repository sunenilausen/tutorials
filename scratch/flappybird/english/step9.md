# Challenge: More pipes

Now we might think it's time to have more pipes for the player to go through, so the distance between them is shorter.

We simply need more pipes, so let's copy our pipe sprite.

![](images/Screenshot%202025-09-05%20203013.png)

Then we need to hide and "pause" one of our pipes for a short time, and then show it again. This way it appears slightly offset.

First, find hide in Looks.

![](images/Screenshot%202025-09-05%20203031.png)

Then use a wait seconds block.

![](images/Screenshot%202025-09-05%20203048.png)

And then show the sprite again.

![](images/Screenshot%202025-09-05%20203055.png)

You can combine the three blocks like this:

![](images/Screenshot%202025-09-05%20203105.png)

Now the challenge for you is to figure out where to place these three blocks.

Remember: we also need to stop this copy of the pipe from moving left during the wait.
