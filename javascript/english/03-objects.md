# 03 - Objects

In the Console, type this:

```javascript
sune = { name: "Sune", age: 34 }
```

`sune` is an **object**, like a box with stuff inside. `name` and `age` are **attributes** (the stuff).

To see Sune's age, type:

```javascript
sune.age
```

The dot `.` helps you get things from inside the object.

Objects can also hold **functions** (actions)! Try this:

```javascript
sune = {
    name: "Sune",
    age: 34,
    hello: function() {
        console.log("Hello " + this.name)
    }
}
```

Now `hello` is an **attribute** that's a function. To make Sune say hello, type:

```javascript
sune.hello()
```

**Objects** keep info (**attributes**) and actions (**functions**) together! ✨
