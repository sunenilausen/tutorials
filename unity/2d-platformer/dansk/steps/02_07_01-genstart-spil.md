### Genstart spil

Når vi er døde, skal vi have en måde at genstarte spillet på.

1.  Tilføj følgende linjer til koden:

using UnityEngine.SceneManagement;

```csharp
Invoke("RestartLevel", 1);

private void RestartLevel()
{
    SceneManager.LoadScene(SceneManager.GetActiveScene().name);
}
```

Anden linje ’Invoke …’ skal stå der hvor vi dør. Det er vigtigt at man
fjerner Destroy(gameobject); da al koden i scriptet ellers stopper!

Når man dør skulle spillet gerne starte forfra efter et sekund.
