### Multiple Animations (Advanced)

If you need several different animations for the same character,
like standing and running, you repeat the steps above for each animation.

Now you need to add some transitions and parameters to control it with
(see video). These parameters can then be accessed from the script in the following way:

```csharp
animator = GetComponent<Animator>();

animator.SetTrigger("Die");

animator.SetFloat("Velocity", speed);
```

Remember that the parameters must be spelled exactly the same as in
the **Animator** (Die/Velocity)!