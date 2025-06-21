## Game Text

![](media/image18.png){ width=0.9375in height=0.35417in }You insert text on
the screen in the game by creating an object with **UI->Text**. (2021.3
**UI->Legacy->Text**) This will automatically create two objects: **Canvas**
and **the object**. This object must then be 'linked' to the script in the score
field – see below.

After you have created the object, it can be configured in
the **Inspector**. When you make the size larger, the text can suddenly
"disappear". This is because the box that the text is in is too
small. This is fixed by selecting the text and then adjusting the box size in
the **Scene**.

```csharp
using UnityEngine.UI;

[SerializeField] Text score;

score.text = "Score: " + point;
```

Link:
<https://youtu.be/pXn9icmreXE?list=PLrnPJCHvNZuCVTz6lvhR81nnaf1a-b67U&t=966>
