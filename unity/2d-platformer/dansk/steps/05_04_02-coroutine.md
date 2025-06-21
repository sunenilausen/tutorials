### Coroutine

Dette kræver at man laver en ny funktion til dette og at den kaldes på
en ’speciel’ måde.

```csharp
StartCoroutine(xxDelay());

...

IEnumerator xxDelay()
{
    // <lav noget>
    yield return new WaitForSeconds(2); // Vent 2 sekunder
    // <lav noget>
}
```

Hvor xxDelay er navnet på den nye funktion.
