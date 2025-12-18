# Gravity and jumping

By dragging blocks into the code area, we can make gravity.
Drag in “when green flag clicked” to start a new sequence of code. This sequence will be responsible for our gravity behavior.
In the sequence, we use a “forever” and a “change y by” block to make our sprite fall downwards.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbzBDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--d668711e0c78ba2971c57851b40513a5472f1403/Screenshot%202025-09-05%20195037.png)

To get real gravity, we need to accelerate toward the ground. We do this by having a variable that determines the speed toward the ground.
Create a new variable by clicking “Make a Variable,” and call it upSpeed.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbzRDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--866daf04a2902a609933f41805459e84b1a1b41e/Screenshot%202025-09-05%20195323.png)

In our block sequence, drag a variable block into “forever,” so that upSpeed gets larger in each loop cycle. Then we change y by upSpeed.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbzhDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f0078117960e85a0fe2db7f1deadea4fdb280491/Screenshot%202025-09-05%20195344.png)

Now our gravity works!

But to reset our character to the start, we need to make a new block sequence.
Drag in another “when green flag clicked,” then drag in a “go to x, y” block and set it to 0,0. This resets our position.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcEFDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--3051273c02ad66409cbaa3b370a910a76ca0e21f/Screenshot%202025-09-05%20195427.png)

Also reset our variable to 0.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcEVDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ff6382d0acffdebbafd8a1c458d34ee1ee128c59/Screenshot%202025-09-05%20195433.png)

Then we make a third block sequence, where pressing the space key starts the code.
We set upSpeed to 10, which makes our character go upward.

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcElDIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--57fba894f3a89d4c63eb571bdd8a2f3b711a5cce/Screenshot%202025-09-05%20195621.png)

Our code should now look like this:

![](https://guides.codingpirates.dk/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcE1DIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6d19a0e90cc3bd8ddf6a6a799117e441a3e1aeac/Screenshot%202025-09-05%20195632.png)
