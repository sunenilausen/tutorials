### Restart game

When we die, we need a way to restart the game.

1.  Add the following lines to the code:

using UnityEngine.SceneManagement;

```csharp
Invoke("RestartLevel", 1);

private void RestartLevel()
{
    SceneManager.LoadScene(SceneManager.GetActiveScene().name);
}
```

The second line 'Invoke …' should be where we die. It is important to
remove Destroy(gameobject); as all the code in the script will otherwise stop!

When you die, the game should restart after one second.