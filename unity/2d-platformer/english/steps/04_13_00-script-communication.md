## Script Communication

If you need a script to be able to 'see' a state or variable in
another script, it can be done in the following way.

In this example, there is an object called **'Player'** that
has a script called **PlayerController** and this script has a
*public* variable called gameOver;

If you want to access this gameOver variable from another script, you should
do the following:

```csharp
PlayerController playerControllerScript;

void Start()
{
    playerControllerScript = GameObject.Find("Player").GetComponent<PlayerController>();
}

void Update()
{
    if (playerControllerScript.gameOver == false)
    {
        // do something
    }
}
```