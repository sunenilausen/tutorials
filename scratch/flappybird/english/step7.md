# Bonus: Rotate the beak

To make your game harder, we can add the beak swinging. It will tilt toward the ground when we don’t press the space key.

Go to Motion and find turn.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcUlDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4484f68c10956314f38c94981d0f84a812fb0cba/Screenshot%202025-09-05%20201835.png)

Then drag the turn block into the forever loop so it continuously turns counterclockwise. Check what happens in the game!

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcVlDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--8e0a6665ed116f528077582f543c6a8f1acf80bd/Screenshot%202025-09-05%20202348.png)

We also want it to tilt upward when we press space. Take a point in direction block, click the number, and choose a slightly upward direction.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcU1DIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--aade140427be5baa4165598342e6446ae9ddde57/Screenshot%202025-09-05%20202248.png)

We also need to reset the direction when the game starts.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcVFDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dbd8532bd78ffab2aae4e40a21d494f9ae7df6b7/Screenshot%202025-09-05%20202252.png)

Your code for the bird should now look like this:

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcVVDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4290333873dbff8a9fb8455af8f040805cab3399/Screenshot%202025-09-05%20202315.png)
