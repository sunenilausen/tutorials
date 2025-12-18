# Move obstacle

First, we make a block sequence that places our obstacle at the right side (x position 250 or similar).

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcGtDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--cb59a7cf4354d01a69d593384e87e184041bad10/Screenshot%202025-09-05%20200454.png)

Then we make another block sequence that moves our obstacle to the left (the negative x-direction).

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcG9DIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--5e663dca6e6dadc972ca685ea46e1185a655943b/Screenshot%202025-09-05%20200615.png)

Finally, we make a block sequence that moves our obstacle back to the right side of the screen once it reaches the left side.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcHNDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4f734b5cd6cd03a3297eb398bc0c8d8001d38e52/Screenshot%202025-09-05%20200720.png)

Our code should now look like this:

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcHdDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--06f12b98d346ce0dff462a5a974bec6a55a21cb2/Screenshot%202025-09-05%20200835.png)
