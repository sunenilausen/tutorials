## External Fields

In many cases, you need to be able to see or access script
variables from the Unity GUI. By writing \[SerializeField\] in front of a
variable, it becomes visible in the **Inspector**.

\[SerializeField\] Text xxtext;

\[SerializeField\] GameObject\[\] xxList;

The first line creates a single field, while the second creates a list of
fields.

If you have many different fields, you can insert some cosmetic
texts to make it more organized in the **Inspector**.

\[Header("Texts")\] // Creates a text box

\[Space\] // Creates an empty line (spacing)

\[Tooltip("tip")\] // Creates a tooltip for the next line, if you

hover the mouse over the field

![](media/image52.png){ width=5.92708in height=2.61597in }

Here **Texts** and **Sounds** are examples of Header fields.
