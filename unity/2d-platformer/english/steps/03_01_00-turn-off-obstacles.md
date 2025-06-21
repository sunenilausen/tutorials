## Turn on/off obstacles

This describes how to create a 'switch' that can turn an obstacle on or off. When the obstacle is turned off, it is completely gone (disabled).

1.  Find a good animation or a couple of still images and drag it into the **Scene** as you did when creating a fruit.

2.  Call it *Switch* and save it in the *Animator* folder. (If using still images, there won't be an animation – you'll need to add one yourself – see later section. If you choose <u>not</u> to have an animation, you must <u>delete</u> the code lines that control the animation.).

3.  Add **AudioSource**

4.  Create a C# script and call it *Switch*.

5.  Drag it over the *Switch* object in the **Hierarchy**.

6.  Open the script and insert the following code:
```csharp
[SerializeField] GameObject gameobj;
[SerializeField] bool ModeSet;
[SerializeField] AudioClip clickSound;

private void OnTriggerEnter2D(Collider2D collision)
{
    if (collision.gameObject.CompareTag("Player"))
    {
        AudioSource audioPlayer = GetComponent<AudioSource>();
        audioPlayer.PlayOneShot(clickSound, 1);

        BoxCollider2D coll = GetComponent<BoxCollider2D>();
        coll.enabled = false;

        Animator animC = gameObject.GetComponent<Animator>();
        animC.enabled = false;

        gameobj.SetActive(ModeSet);
    }
}
```

Fill in:

| Gameobj | The object to be controlled (on/off). Drag the object into this field. |
|:---|:---|
| Mode Set | If set, the object is turned on, otherwise it's turned off. |
| Click Sound | The sound when touching the switch |

![Alt text](media/image32.png){ width=4.71944in height=0.89583in }

This will turn on *MovingPlatform* when touching the Switch. This requires that *MovingPlatform* is turned off before starting the game. This is done by removing the checkmark in this field in the **Inspector** for *MovingPlatform*:

![Alt text](media/image33.png){ width=1.79167in height=0.93681in }

8.  Remember to create a PreFab.

You can easily create multiple variants – some that only turn on/off the script part. This way you can, for example, see a platform, but it doesn't move.
