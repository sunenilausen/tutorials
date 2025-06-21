## Tænd/slut forhindringer

Her beskrives hvordan man laver en ’kontakt’ som kan tænde eller slukke
for en forhindring. Når forhindringen er slukket så er den ’helt væk’
(disabled).

1.  Find en god animation eller et par stillbilleder og træk den ind i
    **Scene**n som da du lavede en frugt.

2.  Kald den *Switch* og gem den i *Animator* folderen. (Hvis det er
    stillbilleder, så kommer der ikke nogen animation – den skal man
    selv tilføje – se senere afsnit. Hvis man vælger <u>ikke</u> at have
    en animation, så skal man <u>slette</u> de linjer kode som styrer
    animationen.).

3.  Tilføj **AudioSource**

4.  Lav et C# script og kald det *Switch*.

5.  Træk det over *Switch* objektet i **Hierarch**y’et.

6.  Åben scriptet og indsæt følgende kode:
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

udfyldes:

| Gameobj | Det objekt som skal styres (on/off). Træk objektet over i dette felt. |
|:---|:---|
| Mode Set | Hvis set, så tændes objektet, ellers slukkes det. |
| Click Sound | Lyden når man rører switchen |

![](media/image32.png){ width=4.71944in height=0.89583in }

Dette vil tænde for *MovingPlatform* når man rører Switchen. Det kræver
at *MovingPlatform* er slukket inden man startet spillet. Dette gøres
ved at fjerne fluebenet i dette felt i **Inspector**’en for
*MovingPlatform*:

![](media/image33.png){ width=1.79167in height=0.93681in }

8.  Husk at lave en PreFab.

Man kan let lave flere varianter – nogen som kun tænder/slukker for
script delen. På den måde kan man fx se en platform, men den bevæger sig
ikke.
