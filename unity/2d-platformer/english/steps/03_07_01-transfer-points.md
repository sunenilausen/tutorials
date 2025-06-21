### Transfer points

When you start the next level, you've 'lost' all your points. This is because everything gets reset. This is solved in the following way.

1.  For *Level1* add an empty object, which you call *Init*

2.  Create a C# script called *Init* and drag it over the *Init* object.

3.  In the *Init* script write the following (this deletes 'everything' the first time):

```csharp
private void Awake()
{
    PlayerPrefs.DeleteAll();
}
```

4.  In the *PlayerController* script write the following:

```csharp
// in Start()
point = PlayerPrefs.GetInt("Score");

// Every time you update points
PlayerPrefs.SetInt("Score", point);
```

The last line <u>saves</u> *Score* and the first line <u>retrieves</u> *Score*.

Now the points should be transferred from level to level.