## Time Handling

For each frame in the game, time has passed since the last frame. This time
is useful when you want to move a character in each loop, for example. The time is in
seconds (i.e. a decimal number):

Time.deltaTime;

So if you want to create a speed that is independent of the frame rate, it
can be done in the following way:

```csharp
move = speed * Time.deltaTime;
```

where speed specifies a factor for how fast something should move.

When you want to create a delay between, for example, two shots, you can do the following:

```csharp
timeWait += Time.deltaTime;

if (timeWait > 2) { // 2 seconds
    // <shot>
    timeWait = 0;
}
```
