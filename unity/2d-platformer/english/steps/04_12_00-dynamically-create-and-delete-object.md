## Dynamically Create and Delete an Object

If you want to dynamically create an object, for example for a shot, you should
do the following. Create a Prefab of the object in the GUI.

In the script, create a variable to hold the Prefab that you want to create.

```csharp
[SerializeField] GameObject objPrefab;
```

You must then go into the GUI and 'drag' the Prefab you want to use
into the field that has appeared in the script (**objPrefab**).

After that, the Prefab can be generated in the following way:

Instantiate(objPrefab, pos, objPrefab.transform.rotation);

Where pos is a vector that specifies where the object should be generated.

If a dynamic object 'disappears' off the screen or is otherwise
not active anymore, it is important that it is deleted again, as there will otherwise
be far too many 'dead' objects over time. You create a script
that should be attached to the object that should expire. The script can look like this
– here you examine whether the object is outside the area, and if so
it is deleted.

```csharp
void Update()
{
    // Destroy object if x position is less than leftLimit
    if (transform.position.x < leftLimit)
    {
        Destroy(gameObject);
    }
}
```