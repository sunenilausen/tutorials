## Flere baner

Vi skal nu lave support for flere baner. Til det formål skal vi bruge et
flag, som mål. Det ligger under **Checkpoints/Checkpoint** og hedder
*Checkpoint (Flag Idle)*.

1.  Træk flaget ind i Scenen ved enden af Level1 og kald det *FlagIdle*
    og placer det i Animator folderen.

2.  I Hierarchy’et kald det *FlagEnd*.

3.  Tilføj en **Box Collider 2D**

4.  Sæt **Is Trigger**.

5.  Lav et nyt script og kald det *LevelEnd* og træk det op over
    *FlagEnd*.

Vi skal nu have tilføjet alle vores levels til buildsettings.

6.  Gem (Ctrl-S) og skift til folderen **Levels**.

7.  Vælg *Level1* og tryk Ctrl-D og kald den nye *Level2*.

Vi har nu to ens levels.

8.  Dobbelt klik på *Level1* (for at åbne det)

9.  Åben **File-\>Build Settings**.

10. I **Build Settings** tryk på **Add Open Scenes** (nede i højre
    hjørne).

11. Gentag for *Level2* så man får følgende billede.

![Alt text](media/image51.png){ width=4.93403in height=1.44583in }

12. Luk vinduet og åben *Level1* igen (dobbelt klik).

13. Åben *LevelEnd* scriptet og tilføj følgende linjer.

```csharp
private void OnTriggerEnter2D(Collider2D collision)
{
    SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
}
```

14. Banerne er nu ens, men det fikset let ved at man sletter alt det man
    ikke skal bruge fra *Level2* og så tegne noget nyt (Husk at vælge
    *Level2* inden…).

15. Man kan også tilføje en lyd på samme måde som beskrevet tidligere.
    Der er dog det problem at man ikke når at høre lyden inden det nye
    level bliver loadet. Det løses ved at ændre koden til:

```csharp
private void OnTriggerEnter2D(Collider2D collision)
{
    if (collision.gameObject.name == "Player")
    {
        audioPlayer.PlayOneShot(finishSound, 1);
        Invoke("CompleteLevel", 2f);
    }
}

private void CompleteLevel()
{
    SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
}
```
