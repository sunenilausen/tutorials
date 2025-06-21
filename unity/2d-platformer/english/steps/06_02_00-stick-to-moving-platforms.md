## Stick to Moving Platforms

If you stand on a platform that moves, it is important that
the character moves together with the platform, otherwise the character will fall off.
The script is created in **Assets/Scripts/** and added to the platforms
that should have this property. It is important that your character is named
*Player*, otherwise you can just change it in the script.

(The script is part of the *2dplatform* starter package)

*StickyPlatform.cs*
```csharp
private void OnCollisionEnter2D(Collision2D collision)
{
    if (collision.gameObject.name == "Player")
    {
        collision.gameObject.transform.SetParent(transform);
    }
}

private void OnCollisionExit2D(Collision2D collision)
{
    if (collision.gameObject.name == "Player")
    {
        collision.gameObject.transform.SetParent(null);
    }
}
```