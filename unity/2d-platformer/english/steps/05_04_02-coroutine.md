### Coroutine

This requires creating a new function for this and calling it in
a 'special' way.

```csharp
StartCoroutine(xxDelay());

...

IEnumerator xxDelay()
{
    // <do something>
    yield return new WaitForSeconds(2); // Wait 2 seconds
    // <do something>
}
```

Where xxDelay is the name of the new function.