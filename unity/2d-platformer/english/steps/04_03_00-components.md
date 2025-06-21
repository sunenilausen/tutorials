## Components

Components are all the 'properties' that you have attached to your
object, such as *Sprite Renderer*, *Colliders*, etc.

You often need to be able to access these components and they can be 'retrieved'
in the following way:

```csharp
xxComp = GetComponent<Rigidbody2D>();
```

<img src="../media/image53.png"
style="width:1.67708in;height:0.33333in" />The individual component names can
be found in the **Inspector**, where you just need to remove any
spaces from the name. For example, Rigidbody 2D -> Rigidbody2D

The **Transform** component is always there and is accessed directly with transform.

If you have multiple of the same component, you should use:

```csharp
xxCompList = GetComponents<CapsuleCollider2D>();
```

The function has gotten an 's' and xxCompList is a list of components.