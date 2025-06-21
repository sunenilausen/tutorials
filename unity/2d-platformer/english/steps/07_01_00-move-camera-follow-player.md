## Move camera to follow player

If you want the camera to follow the character, you need to create the
following script and add it to the **Main** **Camera** object. (Remember
to set the character in the **player** field in the **Inspector**.)

(The script is part of the *2dplatform* starter package)

*CameraFollower.cs*
```csharp
[SerializeField] Transform player;

void Update()
{
    transform.position = new Vector3(player.position.x, transform.position.y, transform.position.z);

    if (player.position.y > 5)
    {
        transform.position = new Vector3(transform.position.x, player.position.y - 5, transform.position.z);
    }

    if (player.position.y < -3)
    {
        transform.position = new Vector3(transform.position.x, player.position.y + 3, transform.position.z);
    }
}
```