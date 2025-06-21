### Game over to Android device

Now we need to get the game over to the Android device.

1.  Open Unity HUB and install Android support
    (Install->![Alt text](media/image77.png){ width=0.16181in height=0.15625in }->Add modules). Unity
    GUI must be restarted afterwards for it to work.

![Alt text](media/image78.png){ width=2.25in height=0.94028in }

2.  Put the Android device in *Developer mode* (search online – it's a bit
    surprising what you have to do and can depend on the model). This
    adds a new menu item.

3.  Open **Developer options** (Developer mode) and select
    **USB debugging** (USB-debug mode)

4.  Connect the Android device to the computer with a USB data cable and give
    it permission to debug the device.

5.  In Unity GUI select **File->Build Settings** and select *Android* and click
    **Switch Platform**.

6.  Then click **Build And Run**, give the file a name and cross
    your fingers. With a bit of luck, the game should start up on the Android
    device after some time.

The game is now on the Android device (look under programs) and can
be played 'offline'. Name etc. can be set in **Player Settings** under
**Build Settings** (bottom left corner).

If the texts (Score etc.) are not positioned correctly on the screen,
you can fix it by using *anchors* for the individual texts.

![Alt text](media/image79.png){ width=1.73958in height=1.02083in }
