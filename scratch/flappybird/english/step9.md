# Challenge: More pipes

Now we might think it’s time to have more pipes for the player to go through, so the distance between them is shorter.

We simply need more pipes, so let’s copy our pipe sprite.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcW9DIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--2b606a7b274adfc42db56815a4b1a12cd22213da/Screenshot%202025-09-05%20203013.png)

Then we need to hide and “pause” one of our pipes for a short time, and then show it again. This way it appears slightly offset.

First, find hide in Looks.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcXNDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--74b66975e95909c7b83941cca2f97076ed843fb1/Screenshot%202025-09-05%20203031.png)

Then use a wait seconds block.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcXdDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--27de598479309b9f0ca21640319323f4315526ee/Screenshot%202025-09-05%20203048.png)

And then show the sprite again.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcTBDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e7d0d9c4d4c6ca9a3a1a5b275a7f113dfc494dce/Screenshot%202025-09-05%20203055.png)

You can combine the three blocks like this:

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcTRDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--8b3d08c345dd6f270eaaa42986ea6195fa6d8611/Screenshot%202025-09-05%20203105.png)

Now the challenge for you is to figure out where to place these three blocks.

Remember: we also need to stop this copy of the pipe from moving left during the wait.
