# C# editor mini guide (Visual Studio)

The C# editor (the program you write your C# code in) is called
MVS in the following. This also applies if you use Visual Studio Code, as they
look the same.

It can do many different things, where a few of them are described
here.

MVS "communicates" with Unity and knows its syntax. It can therefore
help you when writing your code.

- If you start by writing a name of a function it knows,
  it shows ongoing suggestions. Here you can choose from a list
  or just press *Enter* if the 'right one' is already selected.

- If you need to make e.g. a for loop, you can write for and press the
  *TAB* key, then MVS automatically creates a for loop template. This
  works for: for/while/if/foreach/switch. This makes it easier, if you
  are not completely sure about the syntax.

- You can get help with a Unity function by holding the mouse pointer over
  the name.

- MVS colors everything depending on what it is, so look at the colors to see
  if it looks right.

- If something is underlined in red, it's because MVS thinks there is
  something wrong.

- Unity GUI doesn't 'see' the correction until the file is saved.

Good keyboard shortcuts: (CTRL = CMD on MAC)

| **Key**    | **Function** |
|:-----------|:-------------|
| **CTRL-S** | Save file    |
| **CTRL-Z** | Undo         |
| **CTRL-C** | Copy         |
| **CTRL-V** | Paste        |
| **CTRL-H** | Search/replace |

Special MAC keys:

| **Key**            | **Function** |
|:-------------------|:-------------|
| **OPTION-8**       | \[           |
| **OPTION-9**       | \]           |
| **SHIFT-OPTION-8** | {            |
| **SHIFT-OPTION-9** | }            |