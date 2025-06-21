## Multiple levels

We need to create support for multiple levels. For this purpose we'll use a flag as a goal. It's located under **Checkpoints/Checkpoint** and is called *Checkpoint (Flag Idle)*.

1.  Drag the flag into the Scene at the end of Level1 and call it *FlagIdle* and place it in the Animator folder.

2.  In the Hierarchy call it *FlagEnd*.

3.  Add a **Box Collider 2D**

4.  Set **Is Trigger**.

5.  Create a new script and call it *LevelEnd* and drag it over *FlagEnd*.

We now need to add all our levels to the build settings.

6.  Save (Ctrl-S) and switch to the **Levels** folder.

7.  Select *Level1* and press Ctrl-D and call the new one *Level2*.

We now have two identical levels.

8.  Double click on *Level1* (to open it)

9.  Open **File->Build Settings**.

10. In **Build Settings** press **Add Open Scenes** (bottom right corner).

11. Repeat for *Level2* so you get the following image.

![](media/image51.png){ width=4.93403in height=1.44583in }

12. Close the window and open *Level1* again (double click).

13. Open the *LevelEnd* script and add the following lines.

```csharp
private void OnTriggerEnter2D(Collider2D collision)
{
    SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
}
```

14. The levels are now identical, but this is easily fixed by deleting everything you don't need from *Level2* and then drawing something new (Remember to select *Level2* first...).

15. You can also add a sound in the same way as described earlier. However, there's the problem that you don't get to hear the sound before the new level is loaded. This is solved by changing the code to:

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
